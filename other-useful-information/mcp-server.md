---
description: This is an experimental feature. It may break or the interface may change.
---

# MCP Server

### Register the Adnuntius MCP server with your agent

#### Terminal UI agents

`claude mcp add --transport http adnuntius https://api.adnuntius.com/api/mcp`\
\
`codex mcp add adnuntius --url https://api.adnuntius.com/api/mcp`\
\
`gemini mcp add --transport http adnuntius https://api.adnuntius.com/api/mcp`

That may prompt you for authorisation, otherwise once you start the agent you need to authenticate by typing /mcp, selecting adnuntius, and following the prompts.

### Using the Adnuntius MCP server with your agent

The connection grants the agent access to your account in order to allow you to ask questions about the state of your line items and to diagnose orders.\
Currently the access is read only and the token will refresh itself for 30 days, after which you will have to complete the authentication flow again.

