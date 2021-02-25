---
description: How to send Visitor Profile updates using the HTTP API
---

# /visitor

The HTTP API enables you to send user profile information to Adnuntius Data. This may be used, for example, to sync data from an external CRM into Adnuntius. If you are sending profile data from a user's browser, then you should use our [Javascript API](https://github.com/Adnuntius/documentation/tree/50a3df0369e45b2a0c5440061e32280f04720ca5/adnuntius-data/sending-data/http/javascript.md).

We support two different types of requests, [asynchronous](https://github.com/Adnuntius/documentation/tree/50a3df0369e45b2a0c5440061e32280f04720ca5/adnuntius-data/sending-data/http/http.md#asynchronous-requests) and [synchronous](https://github.com/Adnuntius/documentation/tree/50a3df0369e45b2a0c5440061e32280f04720ca5/adnuntius-data/sending-data/http/http.md#synchronous-requests). Both request methods expect data to be provided using the same request [object](https://github.com/Adnuntius/documentation/tree/50a3df0369e45b2a0c5440061e32280f04720ca5/adnuntius-data/sending-data/http/http.md#request-object) format.

## Request object

Data is send to Adnuntius using a HTTP POST request, with a JSON payload containing the fields described below. A separate object is required for each profile to be created or updated.

### Example request object

```http
POST https://data.adnuntius.com/visitor
```

```javascript
{
  "browserId": "123xyz",
  "folderId": "00000000000123ab",
  "profileValues": {
    "firstName": "Bruce",
    "educationStartYear": 2001,
    "lastTransaction": "2019-12-31T00:00:00Z"
  }
}
```

### Field Descriptions

| Name | Type | Description |
| :--- | :--- | :--- |
| `externalSystemType` | String | A unique identifier, e.g. CRM name, that corresponds to the external system providing the data |
| `externalSystemUserId` | String | The unique identifier for the user in the external system |
| `folderId` | String | The Folder ID in Adnuntius Data, for example: `00000000000123ab` You can also specify the `folderId` as a parameter in the request URL. |
| `profileValues` | Object | An object containing the [profile field](../fields.md) names and data to update |

## Asynchronous Requests

Asynchronous requests are used to quickly send a lot of data to Adnuntius. There is only minimal validation performed on the request before returning a response. The requests are placed into a queue and processed asynchronously by the system. This asynchronous processing means that you can send data far more quickly, but you will not get confirmation that the data was successfully stored by the system.

Asynchronous requests are sent to Adnuntius Data using the following URL:

`https://data.adnuntius.com/visitor`

If the request is received correctly, an HTTP 200 status code will be returned. Remember, however, that a successful return status does _not_ mean that the profile has been successfully stored by Adnuntius. If you would rather wait for confirmation that the record has been stored, you should instead use the [synchronous](https://github.com/Adnuntius/documentation/tree/50a3df0369e45b2a0c5440061e32280f04720ca5/adnuntius-data/sending-data/http/http.md#synchronous-requests) API.

### Example cURL request

This is a very simple example, using [curl](https://curl.haxx.se), demonstrating how a profile update is sent to Adnuntius Data.

```bash
curl -H "Content-Type: application/json" https://data.adnuntius.com/visitor -d '{
  "browserId": "123xyz",
  "folderId": "00000000000123ab",
  "profileValues": {
    "firstName": "Bruce",
    "educationStartYear": 2001,
    "lastTransaction": "2019-12-31T00:00:00Z"
  }}'
```

## Synchronous Requests

Synchronous requests are used when you need to receive confirmation that an update has been correctly received and stored by Adnuntius data.

Asynchronous requests are sent to Adnuntius Data using the following URL:

`https://data.adnuntius.com/synchronous/visitor`

If the request is received correctly and the record successfully created or updated, an HTTP 200 status code will be returned.

### Example cURL request

This is a very simple example, using [curl](https://curl.haxx.se), demonstrating how a synchronous profile update is sent to Adnuntius Data.

```bash
curl -H "Content-Type: application/json" https://data.adnuntius.com/synchronous/visitor -d '{
  "browserId": "123xyz",
  "folderId": "00000000000123ab",
  "profileValues": {
    "firstName": "Bruce",
    "educationStartYear": 2001,
    "lastTransaction": "2019-12-31T00:00:00Z"
  }'
```

### Example batch request

```javascript
[
  {
    "browserId": "123xyz",
    "folderId": "00000000000aaaaa",
    "profileValues": {
      "firstName": "Bruce",
      "educationStartYear": 2001,
      "lastTransaction": "2019-12-31T00:00:00Z"
    }
  }
  {
    "browserId": "123xyz",
    "folderId": "00000000000aaaaa",
    "profileValues": {
      "firstName": "Mike",
      "educationStartYear": 2018,
    }
  }
]
```

[See here how you can user profiles using the JavaScript API instead](../javascript/page-views.md).

