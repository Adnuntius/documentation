---
description: This is an experimental feature. It may break or the interface may change.
---

# MCP Server

### 1. Register the Adnuntius MCP server with your agent

If you have one of the following agents installed, here is how to use Adnuntius MCP.

#### Claude Desktop App

**Currently only Claude for Windows is supported. The latest Claude for Mac does not have and Add custom connector option.**

Go to the `Connectors` page in settings, and select `Customize`

Select `+` to add a new connector, and select `... Add custom connector`

Name it whatever you like, and use the url [`https://api.adnuntius.com/api/mcp`](https://api.adnuntius.com/api/mcp)&#x20;

#### Claude Terminal UI

In a terminal, run&#x20;

`claude mcp add --transport http adnuntius https://api.adnuntius.com/api/mcp`

Then start `claude` and type `/mcp` and in the list select `adnuntius` from local MCPs and then select the authorise option which will open a browser window for you to complete the authorisation, after which you can use the integration.

#### Codex Desktop App

**Integration currently unavailable due to bugs in codex (**&#x6F;mits the RFC 8707 resource= parameter so tokens get the wrong audience (#13891), sends a malformed /token exchange that fails with "Required argument is missing" (#5045), silently does nothing when DCR isn't supported and prints "No authorization support detected" in the CLI (#11585), can't reach its own localhost:1455 callback in Windows+WSL or other multi-namespace setups (#12263), and even when login succeeds the Desktop app still reports auth\_status: "unsupported" and never imports the server's tools into threads (#20009)). **When these are fixed the steps to connect will be:**

Go to the `MCP Server` page in settings, and select `+Add Server`

Select `Streamable HTTP` and enter [`https://api.adnuntius.com/api/mcp`](https://api.adnuntius.com/api/mcp) as the URL. You can name the server anything you like.

Back on the MCP servers page, an Authorize button should have appeared (otherwise click on the gear icon). This Authorize button will open your browser to complete the login flow.

#### Codex Terminal UI

In a terminal, run

`codex mcp add adnuntius --url https://api.adnuntius.com/api/mcp`

This will open a browser window for you to complete the authentication. You can then start `codex` and use the integration.

### 2. Using the Adnuntius MCP server with your agent

The connection grants the agent access to your account in order to allow you to ask questions about the state of your line items and to diagnose orders.\
Currently the access is read only and the token will refresh itself for 30 days, after which you will have to complete the authentication flow again.

