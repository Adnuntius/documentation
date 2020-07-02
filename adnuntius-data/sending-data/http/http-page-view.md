---
description: >-
  How to send Page Views using the HTTP API
---

# Sending Page Views using the HTTP API

The HTTP API enables you to send user Page Views to Adnuntius Data.

{% hint style="info" %}
Typically you are recommended to send these events from the user's browser using the [Javascript API](../javascript.md).
{% endhint %}

## Request object

Data is send to Adnuntius using a HTTP POST request, with a JSON payload containing the fields described below. A separate object is required for each page view event.

The requests are sent to the following URL:

`https://data.adnuntius.com/page`

If the request is received correctly, an HTTP 200 status code will be returned.

### Field Descriptions

| Name | Type | Description |
| :--- | :--- | :--- |
| `externalSystemType` | String | A unique identifier, e.g. CRM name, that corresponds to the external system providing the data |
| `externalSystemUserId` | String | The unique identifier for the user in the external system |
| `networkId` | String | Your Adnuntius network identifier |
| `keywords` | String[] | An array of keywords |
| `categories` | String[] | An array of categories |
| `domainName` | String | The domain name of the page |

### Example request object

```javascript
{
  "externalSystemType": "my_crm",
  "externalSystemUserId": "123hfy4658f",
  "networkId": "my_network",
  "keywords": ["sport", "tennis"],
  "categories": ["IAB_24_44"],
  "domainName": "sport.no"
}
```

### Example cURL request

This is a very simple example, using [curl](https://curl.haxx.se), demonstrating how a page view is sent to Adnuntius Data.

```bash
curl https://data.adnuntius.com/page -d '{
  "externalSystemType": "my_crm",
  "externalSystemUserId": "123hfy4658f",
  "networkId": "my_network",
  "keywords": ["sport", "tennis"],
  "categories": ["IAB_24_44"],
  "domainName": "sport.no" }'
```
