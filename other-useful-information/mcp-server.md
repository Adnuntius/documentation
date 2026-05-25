---
description: This is an experimental feature. It may break or the interface may change.
---

# MCP Server

Register the server with your agent:

`claude mcp add --transport http adnuntius https://api.adnuntius.com/api/mcp`\
\
`codex mcp add adnuntius --url https://api.adnuntius.com/api/mcp`\
\
`gemini mcp add --transport http adnuntius https://api.adnuntius.com/api/mcp`

That may prompt you for authorisation, otherwise once you start the agent you need to authenticate by typing /mcp, selecting adnuntius, and following the prompts.\
The connection grants read only tools access to your account to allow you to ask about the state of your line items and to diagnose orders.\
Currently the access is read only and will expire after an hour, after which you will have to complete the authentication flow again.
