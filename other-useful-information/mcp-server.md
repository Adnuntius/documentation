---
description: This is an experimental feature. It may break or the interface may change.
---

# MCP Server

Once you have completed the connection steps below your agent will have access to your account in order to allow you to ask questions about the state of your line items and to diagnose orders (more features coming soon). The token will refresh itself for 30 days, after which you will have to complete the authentication step again.

## Register the Adnuntius MCP server with your agent

If you have one of the following agents installed, here is how to use Adnuntius MCP.

### OpenAI Codex&#x20;

#### 1. Install the Codex Command Line Interface (CLI)

This is recommended even if you want to use the desktop app, because the app MCP has a number of bugs<sup>1</sup> which make it unreliable to manage MCP servers in. The latest steps for installing the CLI can be found at:

{% embed url="https://developers.openai.com/codex/quickstart?setup=cli" %}

#### 2. Add the Adnuntius MCP Server and Authorize it

In a terminal, run

`codex mcp add adnuntius --url https://api.adnuntius.com/api/mcp`

This will open a browser window for you to complete the authentication by pressing the Authorize button. If you are not already signed in to the Adnuntius platform you will be asked to do so first.&#x20;

**NOTE**: If you are a user who has multiple networks, please select the network you wish to allow access to before pressing authorise. Most users are in a single network and do not have to worry about this.&#x20;

#### 3. Use codex to ask questions about Adnuntius

Type `codex`to start the CLI and start asking questions.

#### 4. (Optional) Use the desktop app

This can be installed from here:

{% embed url="https://developers.openai.com/codex/quickstart?setup=app" %}

If you completed steps 1 and 2 above, you should be able to ask questions about Adnuntius in the app. If you didn't you can try and add the integration in the app using the following steps:

* Go to the `MCP Server` page in settings, and select `+Add Server`
* Select `Streamable HTTP` and enter [`https://api.adnuntius.com/api/mcp`](https://api.adnuntius.com/api/mcp) as the URL. You can name the server anything you like.
* Back on the MCP servers page, an Authorize button should appear after about 10 seconds (otherwise click on the gear icon). This Authorize button will open your browser to complete the login flow.

### Anthropic Claude Code

#### Recommended Option - Command Line Interface (CLI)

This can be installed from here:

{% embed url="https://code.claude.com/docs/en/quickstart#step-1-install-claude-code" %}

In a terminal, run&#x20;

`claude mcp add --transport http adnuntius https://api.adnuntius.com/api/mcp`

Then start `claude` and type `/mcp` and in the list select `adnuntius` from local MCPs and then select the authorise option which will open a browser window for you to complete the authorisation, after which you can use the integration.

#### Desktop App

**Currently only Claude for Windows is supported.**

The app can be obtained from here

{% embed url="https://claude.com/download" %}

Go to the `Connectors` page in settings, and select `Customize`

Select `+` to add a new connector, and select `... Add custom connector`

Name it whatever you like, and use the url [`https://api.adnuntius.com/api/mcp`](https://api.adnuntius.com/api/mcp)&#x20;





1. omits the RFC 8707 resource= parameter so tokens get the wrong audience (#13891), sends a malformed /token exchange that fails with "Required argument is missing" (#5045), silently does nothing when DCR isn't supported and prints "No authorization support detected" in the CLI (#11585), can't reach its own localhost:1455 callback in Windows+WSL or other multi-namespace setups (#12263), and even when login succeeds the Desktop app still reports auth\_status: "unsupported" and never imports the server's tools into threads (#20009)

