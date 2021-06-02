---
description: How to send Segment using the HTTP API
---

# /segment

The HTTP API enables you to send user's segment to Adnuntius Data.

{% hint style="info" %}
Typically you are recommended to send these events from the user's browser using the [Javascript API](https://github.com/Adnuntius/documentation/tree/0a4577c0f8dcd858141afe8c1a4af9b63d7cf3fc/adnuntius-data/api-documentation/javascript.md).
{% endhint %}

## Request object

Data is sent to Adnuntius using a HTTP GET request, with query parameters containing the fields described below.

The requests are sent to the following URL:

`https://data.adnuntius.com/segment`

If the request is received correctly, an HTTP 200 status code will be returned.

### Field Descriptions

| Name | Type | Description |
| :--- | :--- | :--- |
| `segmentId` | String | Identification of the segment. |
| `folderId` | String | The folder identifier from Adnuntius Data |
| `browserId` | String | A unique identifier for the the users browser or app. |

### Example cURL request

This is a very simple example, using [curl](https://curl.haxx.se), demonstrating how a segment is sent to Adnuntius Data.

```bash
curl -H "Content-Type: application/json" https://data.adnuntius.com/segment?segmentId=zxcvbn98765&folderId=00000000000123ab&browserId=123456
```

