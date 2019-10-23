---
description: Describes how to use the HTTP API to send visitor profile information to Adnuntius Data
---

# HTTP API Adnuntius Data

You can send use profile information to Adnuntius Data using the HTTP API. This may be used, for example, to sync data from an external CRM into Adnuntius. If you are sending profile data from a user's browser, then you should use our [Javascript API](../onetruth/javascript-collection.md).

We support two different types of requests, [asynchronous](#asynchronous-requests) and [synchronous](#synchronous-requests). Both request methods expect data to be provided using the same request [object](#request-object) format.

## Request object

Data is send to Adnuntius using a HTTP POST request, with a JSON payload containing the fields described below. A separate object is required for each profile to be created or updated.

### Field Descriptions

| Name | Type | Description |
| :--- | :--- | :--- |
| externalSystemType | String | The unique identifier, configured in Adnuntius, that corresponds to the external system providing the data, e.g. CRM name etc  |
| externalSystemUserId | String | The unique identifier for the user in the external system |
| networkId | String | The unique Adnuntius network identifier for your account |
| profileValues | Object | An object containing the profile field names and data to update |

### Example request object

```
{
  "externalSystemType": "my_crm",
  "externalSystemUserId": "123hfy4658f",
  "networkId": "my_network",
  "profileValues": {
    "firstName": "Bruce",
    "exampleNumber": 1234,
    "educationStartYear": "2001-12-31",
    "lastTransaction": "2019-12-31T00:00:00.000Z"
  }
}
```

## Asynchronous Requests

## Synchronous Requests
