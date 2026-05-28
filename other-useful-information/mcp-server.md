---
description: This is an experimental feature. It may break or the interface may change.
---

# MCP Server

Once you have completed the connection steps below your agent will have access to your account in order to allow you to ask questions about the state of your line items and to diagnose orders (more features coming soon). The token will refresh itself for 30 days, after which you will have to complete the authentication step again.

## Register the Adnuntius MCP server with your agent

### Anthropic Claude Code

#### Install a Client

You can skip this section if you already have a Claude Code client installed. The Adnuntius MCP is supported in both the App which you can get it from here:

{% embed url="https://claude.com/download" %}

Or the CLI which you can get from here:

{% embed url="https://code.claude.com/docs/en/quickstart#step-1-install-claude-code" %}

#### Register to Account

The recommended approach is to add the Adnuntius connector to your claude.ai account which makes it available to all your clients.&#x20;

* If you are on a personal account you do that here:

{% embed url="https://claude.ai/customize/connectors?modal=add-custom-connector" %}

* Otherwise if you are an owner of a team account you do that here (if you are on a team account but not an owner, you must ask an owner to do this):

{% embed url="https://claude.ai/admin-settings/connectors?modal=add-custom-connector" %}

For either method, name the server what you like, and for the Remote MCP server URL use:

```
https://api.adnuntius.com/api/mcp
```

Once you press Add you (and everybody in your team if you have one) should see it in their list of connectors. You are now done with the setup and can use the MCP integration from the app or CLI. The following methods are only needed if you were not able to add the connector.

#### Register to CLI&#x20;

The next step is only needed if you didn't follow the Register to Account instructions and wish to use the CLI. In that case you would add the Adnuntius MCP to the CLI client by running:

```
claude mcp add --transport http adnuntius https://api.adnuntius.com/api/mcp
```

#### Register to Windows App

The following steps are only needed if you didn't follow the Register to Account instructions and you wish to use the app:

Go to the `Connectors` page in settings, and select `Customize`

Select `+` to add a new connector, and select `... Add custom connector`

Name it whatever you like, and use the url [`https://api.adnuntius.com/api/mcp`](https://api.adnuntius.com/api/mcp)

#### Register to Mac App

There is currently no option to `Add custom connector`in the mac app, so the Adnuntius MCP can only be used in the Mac App via the Register to Account method.

### OpenAI Codex&#x20;

#### 1. Install the Codex Command Line Interface (CLI)

This is recommended even if you want to use the desktop app, because the app MCP has a number of bugs<sup>1</sup> which make it unreliable to manage MCP servers in. The latest steps for installing the CLI can be found at:

{% embed url="https://developers.openai.com/codex/quickstart?setup=cli" %}

1. omits the RFC 8707 resource= parameter so tokens get the wrong audience (#13891), sends a malformed /token exchange that fails with "Required argument is missing" (#5045), silently does nothing when DCR isn't supported and prints "No authorization support detected" in the CLI (#11585), can't reach its own localhost:1455 callback in Windows+WSL or other multi-namespace setups (#12263), and even when login succeeds the Desktop app still reports auth\_status: "unsupported" and never imports the server's tools into threads (#20009)

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

## Troubleshooting

#### Claude Code authentication or tool access issues

* Go to [https://claude.ai/customize/connectors](https://claude.ai/customize/connectors) and find the Adnuntius connector
* Click the three dots in the top right and select `Refresh tools list`
* If there is a connection issue you should see a screen giving you a Connect button to re-authenticate
* Once you press that button, after a short pause an Adnuntius window will open and you need to click the Authorize button to grant access
* The window should close and claude.ai will display a message about being connected
* After this you MUST restart your claude clients to pick up the new MCP auth, you cannot fix MCP state without a restart.

