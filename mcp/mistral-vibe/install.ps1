$ErrorActionPreference = 'Stop'

$ScriptUrl = if ($env:SCRIPT_URL) { $env:SCRIPT_URL } else { 'https://raw.githubusercontent.com/Adnuntius/documentation/master/mcp/mistral-vibe/adnuntius-vibe.py' }

$Py = (Get-Command python -ErrorAction SilentlyContinue).Source
if (-not $Py) { $Py = (Get-Command python3 -ErrorAction SilentlyContinue).Source }
if ($Py -and $Py -like '*\WindowsApps\*') { $Py = $null }
if (-not $Py) {
    if (-not (Get-Command uv -ErrorAction SilentlyContinue)) {
        Invoke-Expression (Invoke-RestMethod 'https://astral.sh/uv/install.ps1')
        $env:PATH = "$HOME\.local\bin;$env:PATH"
    }
    & uv python install 3.12 | Out-Null
    $UvPyDir = (& uv python dir).Trim()
    $Py = (Get-ChildItem -Path "$UvPyDir\cpython-3.12-*\python.exe" -ErrorAction SilentlyContinue | Select-Object -First 1).FullName
    if (-not $Py) { $Py = (Get-ChildItem -Path "$UvPyDir\cpython-3.12.*\python.exe" -ErrorAction SilentlyContinue | Select-Object -First 1).FullName }
    if (-not $Py) { Write-Host "Could not bootstrap Python 3.12 via uv." -ForegroundColor Red; exit 1 }
}

$LocalBin = "$HOME\.local\bin"
if (-not (Get-Command vibe -ErrorAction SilentlyContinue)) {
    if (-not (Get-Command uv -ErrorAction SilentlyContinue)) {
        Invoke-Expression (Invoke-RestMethod 'https://astral.sh/uv/install.ps1')
    }
    $env:PATH = "$LocalBin;$env:PATH"
    & uv tool install mistral-vibe
}
$userPath = [Environment]::GetEnvironmentVariable('PATH', 'User')
if ($userPath -notlike "*$LocalBin*") {
    [Environment]::SetEnvironmentVariable('PATH', "$LocalBin;$userPath", 'User')
}
$env:PATH = "$LocalBin;$env:PATH"

$VibeConfig = "$HOME\.vibe\config.toml"
if (-not (Test-Path $VibeConfig)) {
    Write-Host "Launching 'vibe --setup' — sign in to Mistral, then exit with Ctrl+C."
    & vibe --setup
}
if (-not (Test-Path $VibeConfig)) { Write-Host "vibe is not configured. Run 'vibe --setup' manually and re-run this installer." -ForegroundColor Red; exit 1 }

$AppDir = "$HOME\.adnuntius-vibe"
New-Item -ItemType Directory -Force -Path $AppDir | Out-Null
$BridgePath = Join-Path $AppDir 'adnuntius-vibe.py'
Invoke-WebRequest -Uri $ScriptUrl -OutFile $BridgePath -UseBasicParsing

$PyEscaped = $Py -replace '\\', '\\\\'
$BridgeEscaped = $BridgePath -replace '\\', '\\\\'
$Line = "mcp_servers = [{ name = `"adnuntius`", transport = `"stdio`", command = `"$PyEscaped`", args = [`"$BridgeEscaped`"] }]"

$env:ADN_LINE = $Line
& $Py -c "import os, pathlib, re; p = pathlib.Path(os.path.expanduser('~/.vibe/config.toml')); text = p.read_text(); line = os.environ['ADN_LINE']; p.write_text(re.sub(r'^mcp_servers.*\$', lambda m: line, text, count=1, flags=re.M) if re.search(r'^mcp_servers', text, re.M) else line + '\n' + text)"
Remove-Item Env:\ADN_LINE

$OAuth = @'
import base64, hashlib, http.server, json, pathlib, secrets, socket, socketserver, threading, time, urllib.parse, urllib.request, webbrowser
APP = pathlib.Path.home() / ".adnuntius-vibe"
APP.mkdir(parents=True, exist_ok=True)
disc = json.loads(urllib.request.urlopen("https://api.adnuntius.com/.well-known/oauth-authorization-server").read())
s = socket.socket(); s.bind(("127.0.0.1", 0)); port = s.getsockname()[1]; s.close()
redirect = "http://localhost:{}/oauth/callback".format(port)
reg = json.loads(urllib.request.urlopen(urllib.request.Request(
    disc["registration_endpoint"],
    data=json.dumps({"client_name":"Adnuntius MCP Bridge","redirect_uris":[redirect],"grant_types":["authorization_code","refresh_token"],"response_types":["code"],"token_endpoint_auth_method":"none","scope":"ADVERTISING_QUERY"}).encode(),
    headers={"Content-Type":"application/json","Accept":"application/json"})).read())
cid = reg["client_id"]
(APP / "client.json").write_text(json.dumps({"client_id": cid}))
verifier = base64.urlsafe_b64encode(secrets.token_bytes(32)).rstrip(b"=").decode()
challenge = base64.urlsafe_b64encode(hashlib.sha256(verifier.encode()).digest()).rstrip(b"=").decode()
state = secrets.token_urlsafe(32)
auth_url = disc["authorization_endpoint"] + "?" + urllib.parse.urlencode({"response_type":"code","client_id":cid,"redirect_uri":redirect,"code_challenge":challenge,"code_challenge_method":"S256","state":state,"scope":"ADVERTISING_QUERY","resource":"https://api.adnuntius.com/api/mcp"})
print("Opening your browser to sign in to Adnuntius.")
print("If it doesn't open, paste this URL: " + auth_url)
class H(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        q = urllib.parse.parse_qs(urllib.parse.urlparse(self.path).query)
        self.server.q = {k: v[0] for k, v in q.items()}
        self.server.evt.set()
        self.send_response(200); self.send_header("Content-Type","text/html"); self.end_headers()
        self.wfile.write(b"<h2>Signed in to Adnuntius</h2><p>You can close this tab.</p>")
    def log_message(self, *a): pass
srv = socketserver.TCPServer(("127.0.0.1", port), H); srv.q=None; srv.evt=threading.Event()
threading.Thread(target=srv.serve_forever, daemon=True).start()
webbrowser.open(auth_url)
if not srv.evt.wait(300):
    raise SystemExit("Timed out waiting for Adnuntius sign-in.")
srv.shutdown(); srv.server_close()
q = srv.q
if q.get("state") != state: raise SystemExit("OAuth state mismatch.")
tok = json.loads(urllib.request.urlopen(urllib.request.Request(
    disc["token_endpoint"],
    data=urllib.parse.urlencode({"grant_type":"authorization_code","code":q["code"],"redirect_uri":redirect,"client_id":cid,"code_verifier":verifier,"resource":"https://api.adnuntius.com/api/mcp"}).encode(),
    headers={"Content-Type":"application/x-www-form-urlencoded","Accept":"application/json"})).read())
(APP / "tokens.json").write_text(json.dumps({"access_token":tok["access_token"],"refresh_token":tok.get("refresh_token"),"expires_at":int(time.time())+int(tok.get("expires_in",3600))-30}))
print("Signed in.")
'@
$OAuth | & $Py -

Write-Host "Done. Run 'vibe' and ask it about Adnuntius."
