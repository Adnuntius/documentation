---
description: Follow the 3 steps below to get setup with Claude Code.
layout:
  width: default
  title:
    visible: true
  description:
    visible: true
  tableOfContents:
    visible: true
  outline:
    visible: true
  pagination:
    visible: true
  metadata:
    visible: true
  tags:
    visible: true
  actions:
    visible: true
---

# Anthropic Claude Code

### 1. Install a Client

You can skip this step if you already have a Claude Code client installed, otherwise install either the app:

{% embed url="https://claude.com/download" %}

or the Command Line Interface (CLI):

{% embed url="https://code.claude.com/docs/en/quickstart#step-1-install-claude-code" %}

### 2. Install the Connector

Add the Adnuntius connector to your claude.ai account which makes it available to all your clients.

* If you are on a personal account you do that here:

{% embed url="https://claude.ai/customize/connectors?modal=add-custom-connector" %}

* Otherwise if you are an owner of a team account you do that here (if you are on a team account but not an owner, you must ask an owner to do this):

{% embed url="https://claude.ai/admin-settings/connectors?modal=add-custom-connector" %}

For either method, name the server what you like, and for the Remote MCP server URL use:

```
https://api.adnuntius.com/api/mcp
```

Once you press Add you (and everybody in your team if you have one) should see it in their list of connectors. You can now move on to step 3.

### 3. Connect to Adnuntius

The final step is to connect the Claude Code App to your Adnuntius account. You do this by going to `Settings -> Connectors -> Customise` , selecting the Adnuntius connector (which is named depending on how you set it up in step 2), and clicking `Connect`:

<figure><img src="../../.gitbook/assets/Adnuntius Connector.png" alt=""><figcaption></figcaption></figure>

If you are using the CLI, you connect to Adnuntius inside the CLI by typing `/mcp` and moving the selector down to `adnuntius`, pressing enter, and selecting `1. Authenticate`

For either the app or CLI, you will then be taking to a page in your default browser which will ask you to authorise the agent to access your account (if you are not currently signed in to the Adnuntius Admin User Interface in that browser, you will be asked to sign in first). Once you click the `Authenticate` button and create a new session in your app (or CLI), it will be able to answer questions about your Adnuntius account.



## Troubleshooting

#### Connector install

Here are some two ways to setup the connector if the above does not work:

**a). Register to CLI**

Add the Adnuntius MCP to the CLI client by running:

```
claude mcp add --transport http adnuntius https://api.adnuntius.com/api/mcp
```

**b). Register to Windows App**

Go to the `Connectors` page in settings, and select `Customize`

Select `+` to add a new connector, and select `... Add custom connector`

Name it whatever you like, and use the url [`https://api.adnuntius.com/api/mcp`](https://api.adnuntius.com/api/mcp)

#### Authentication or tool access issues

* Go to [https://claude.ai/customize/connectors](https://claude.ai/customize/connectors) and find the Adnuntius connector
* Click the three dots in the top right and select `Refresh tools list`
* If there is a connection issue you should see a screen giving you a Connect button to re-authenticate
* Once you press that button, after a short pause an Adnuntius window will open and you need to click the Authorize button to grant access
* The window should close and claude.ai will display a message about being connected
* After this you MUST restart your claude clients to pick up the new MCP auth, you cannot fix MCP state without a restart.
