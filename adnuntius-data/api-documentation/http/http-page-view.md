---
description: How to send Page Views using the HTTP API
---

# /page

The HTTP API enables you to send user Page Views to Adnuntius Data.

{% hint style="info" %}
Typically you are recommended to send these events from the user's browser using the [Javascript API](../javascript/).
{% endhint %}

## Request object

Data is send to Adnuntius using a HTTP POST request, with a JSON payload containing the fields described below. A separate object is required for each page view event.

If the request is received correctly, an HTTP 200 status code will be returned.

### Example request object

```http
POST https://data.adnuntius.com/page
```

```javascript
{
  "browserId": "123xyz",
  "folderId": "00000000000123ab",
  "keywords": ["sport", "tennis"],
  "categories": ["IAB_24_44"],
  "domainName": "sport.no"
}
```

### Field Descriptions

| Name | Type | Description |
| :--- | :--- | :--- |
| `browserId` | String | A unique ID for the browser or device being used. |
| `folderId` | String | The Folder ID in Adnuntius Data, for example: `00000000000123ab` You can also specify the `folderId` as a parameter in the request URL. |
| `keywords` | String\[\] | An array of keywords |
| `categories` | String\[\] | An array of categories |
| `domainName` | String | The domain name of the page |

### Example cURL request

This is a very simple example, using [curl](https://curl.haxx.se), demonstrating how a page view is sent to Adnuntius Data.

```bash
curl -H "Content-Type: application/json" https://data.adnuntius.com/page -d '{
  "browserId": "123xyz",
  "folderId": "00000000000123ab",
  "keywords": ["sport", "tennis"],
  "categories": ["IAB_24_44"],
  "domainName": "sport.no" }'
```

### Example batch request

Page views can also be sent to adnuntius in bulk by adding them to an array like this:

```javascript
[
  {
    "browserId": "123xyz",
    "folderId": "00000000000123ab",
    "keywords": ["sport", "tennis"],
    "categories": ["IAB_24_44"],
    "domainName": "sport.no"
  },
  {
    "browserId": "123xyz",
    "folderId": "00000000000123ab",
    "keywords": ["sport", "tennis"],
    "categories": ["IAB_24_44"],
    "domainName": "sport.no"
  }
]
```

[See here how you can send pageview information using the JavaScript API instead](../javascript/page-views.md).

