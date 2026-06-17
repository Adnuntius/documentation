#!/usr/bin/env python3
"""MCP stdio bridge from Mistral Vibe to https://api.adnuntius.com/api/mcp."""

import json
import pathlib
import sys
import time
import urllib.error
import urllib.parse
import urllib.request


MCP_URL = "https://api.adnuntius.com/api/mcp"
RESOURCE = MCP_URL
DISCOVERY_URL = "https://api.adnuntius.com/.well-known/oauth-authorization-server"

APP_DIR = pathlib.Path.home() / ".adnuntius-vibe"
TOKEN_FILE = APP_DIR / "tokens.json"
CLIENT_FILE = APP_DIR / "client.json"
LOG_FILE = APP_DIR / "bridge.log"


def log(msg):
    APP_DIR.mkdir(parents=True, exist_ok=True)
    with LOG_FILE.open("a") as f:
        f.write(time.strftime("%Y-%m-%dT%H:%M:%S ") + msg + "\n")


def post_form(url, form):
    req = urllib.request.Request(
        url,
        data=urllib.parse.urlencode(form).encode(),
        headers={
            "Content-Type": "application/x-www-form-urlencoded",
            "Accept": "application/json",
        },
    )
    with urllib.request.urlopen(req, timeout=30) as r:
        return json.loads(r.read())


def refresh(tokens, client_id):
    disc = json.loads(urllib.request.urlopen(DISCOVERY_URL, timeout=30).read())
    resp = post_form(disc["token_endpoint"], {
        "grant_type": "refresh_token",
        "refresh_token": tokens["refresh_token"],
        "client_id": client_id,
        "resource": RESOURCE,
    })
    new = {
        "access_token": resp["access_token"],
        "refresh_token": resp.get("refresh_token", tokens["refresh_token"]),
        "expires_at": int(time.time()) + int(resp.get("expires_in", 3600)) - 30,
    }
    TOKEN_FILE.write_text(json.dumps(new))
    return new


def post_mcp(body, access_token):
    req = urllib.request.Request(
        MCP_URL,
        data=json.dumps(body).encode(),
        method="POST",
        headers={
            "Content-Type": "application/json",
            "Accept": "application/json, text/event-stream",
            "Authorization": "Bearer " + access_token,
        },
    )
    try:
        with urllib.request.urlopen(req, timeout=120) as r:
            return r.status, r.read().decode()
    except urllib.error.HTTPError as e:
        return e.code, (e.read().decode() if e.fp else "")


def main():
    if not TOKEN_FILE.exists() or not CLIENT_FILE.exists():
        sys.stderr.write("Adnuntius bridge: not signed in. Re-run the installer.\n")
        sys.exit(2)
    tokens = json.loads(TOKEN_FILE.read_text())
    client_id = json.loads(CLIENT_FILE.read_text())["client_id"]
    log("bridge starting")

    for line in sys.stdin:
        line = line.strip()
        if not line:
            continue
        try:
            req = json.loads(line)
        except json.JSONDecodeError:
            continue
        is_notification = "id" not in req

        if tokens.get("expires_at", 0) <= int(time.time()):
            tokens = refresh(tokens, client_id)

        status, body = post_mcp(req, tokens["access_token"])
        if status == 401:
            tokens = refresh(tokens, client_id)
            status, body = post_mcp(req, tokens["access_token"])

        if status >= 400:
            log("http {}: {}".format(status, body[:200]))
            if not is_notification:
                err = {
                    "jsonrpc": "2.0",
                    "id": req.get("id"),
                    "error": {"code": -32000, "message": "Adnuntius HTTP {}".format(status)},
                }
                sys.stdout.write(json.dumps(err) + "\n")
                sys.stdout.flush()
            continue

        if not is_notification:
            sys.stdout.write(body.strip() + "\n")
            sys.stdout.flush()


if __name__ == "__main__":
    main()
