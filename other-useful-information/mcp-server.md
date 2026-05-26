---
description: This is an experimental feature. It may break or the interface may change.
---

# MCP Server

### Register the Adnuntius MCP server with your agent

#### Terminal UI agents

If you have one of the following agents installed, here is how to use Adnuntius MCP.

**Claude**

In a terminal, run&#x20;

`claude mcp add --transport http adnuntius https://api.adnuntius.com/api/mcp`

Then start `claude` and type `/mcp` and in the list select `adnuntius` from local MCPs and then select the authorise option which will open a browser window for you to complete the authorisation, after which you can use the integration.

**Codex**

In a terminal, run

`codex mcp add adnuntius --url https://api.adnuntius.com/api/mcp`

This will open a browser window for you to complete the authentication. You can then start `codex` and use the integration.

### Using the Adnuntius MCP server with your agent

The connection grants the agent access to your account in order to allow you to ask questions about the state of your line items and to diagnose orders.\
Currently the access is read only and the token will refresh itself for 30 days, after which you will have to complete the authentication flow again.

