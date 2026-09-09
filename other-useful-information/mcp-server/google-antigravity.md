---
description: Follow the 10 steps below to get setup with Google Antigravity
---

# Google Antigravity

1. If you haven't already, download the app from [https://antigravity.google/download](https://antigravity.google/download) and install for your OS (Windows, Mac, or Linux are all fine)
2. If you haven't already, open the app, and in the setup select sign in with Google and complete the Google login in your browser
3. Exit the app and follow the **OS specific setup instructions below**
4. After completing the setup instructions below, open Antigravity again and click Settings (gear icon) → Customizations.
5. Scroll to Installed MCP Servers. You should see adnuntius with an "Unauthorized" warning.
6. Click Authenticate next to adnuntius. A browser tab will open to the Adnuntius admin page.
7. Sign in to Adnuntius if prompted, you should now be on a authorization page for token use.
8. Once you click Authorize google should give you an authorization code in your browser. Copy it.
9. Return to Antigravity. A dialog is waiting for the code, paste and click Submit.
10. The adnuntius row should turn green, and you can now ask the agent questions about your Adnuntius account

**Google Antigravity** **OS specific setup instructions:**

**3a Windows Setup**

In the start menu, search for Powershell and open it. Run the following command in it:

```
$j='{"mcpServers":{"adnuntius":{"serverUrl":"https://api.adnuntius.com/api/mcp"}}}'; foreach($d in 'antigravity','config'){ $p="$env:USERPROFILE\.gemini\$d\mcp_config.json"; New-Item -ItemType Directory -Force -Path (Split-Path $p) | Out-Null; [System.IO.File]::WriteAllText($p,$j) }
```

**3b Mac Setup**

In Launchpad, search for Terminal and open it. Run the following command in it:

```
python3 -c "import os,json;d={'mcpServers':{'adnuntius':{'serverUrl':'https://api.adnuntius.com/api/mcp'}}};[(os.makedirs(os.path.dirname(p),exist_ok=True) or json.dump(d,open(p,'w'),indent=2)) for p in [os.path.expanduser('~/.gemini/antigravity/mcp_config.json'),os.path.expanduser('~/.gemini/config/mcp_config.json')]]"
```

**3c Linux Setup**

Open a terminal and run the following command in it

```
python3 -c "import os,json;d={'mcpServers':{'adnuntius':{'serverUrl':'https://api.adnuntius.com/api/mcp'}}};[(os.makedirs(os.path.dirname(p),exist_ok=True) or json.dump(d,open(p,'w'),indent=2)) for p in [os.path.expanduser('~/.gemini/antigravity/mcp_config.json'),os.path.expanduser('~/.gemini/config/mcp_config.json')]]"
```
