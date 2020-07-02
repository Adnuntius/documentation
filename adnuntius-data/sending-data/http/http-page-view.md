
---
description: >-
  How to send Page Views using the HTTP API
---

# Sending Page Views using the HTTP API

The HTTP API enables you to send user Page Views to Adnuntius Data.

Typically you are recommended to send these events from the user's browser using the [Javascript API](javascript.md).

We support two different types of requests, [asynchronous](http.md#asynchronous-requests) and [synchronous](http.md#synchronous-requests). Both request methods expect data to be provided using the same request [object](http.md#request-object) format.

## Request object

Data is send to Adnuntius using a HTTP POST request, with a JSON payload containing the fields described below. A separate object is required for each page view event.

### Field Descriptions

| Name | Type | Description |
| :--- | :--- | :--- |
| `externalSystemType` | String | A unique identifier, e.g. CRM name, that corresponds to the external system providing the data |
| `externalSystemUserId` | String | The unique identifier for the user in the external system |
| `networkId` | String | The unique Adnuntius network identifier for your account |
| `profileValues` | Object | An object containing the [profile field](fields.md) names and data to update |

### Example request object

```javascript
{
  "externalSystemType": "my_crm",
  "externalSystemUserId": "123hfy4658f",
  "networkId": "my_network",
  "profileValues": {
    "firstName": "Bruce",
    "educationStartYear": 2001,
    "lastTransaction": "2019-12-31T00:00:00Z"
  }
}
```

## Asynchronous Requests

Asynchronous requests are used to quickly send a lot of data to Adnuntius. There is only minimal validation performed on the request before returning a response. The requests are placed into a queue and processed asynchronously by the system. This asynchronous processing means that you can send data far more quickly, but you will not get confirmation that the data was successfully stored by the system.

Asynchronous requests are sent to Adnuntius Data using the following URL:

`https://data.adnuntius.com/visitor`

If the request is received correctly, an HTTP 200 status code will be returned. Remember, however, that a successful return status does _not_ mean that the profile has been successfully stored by Adnuntius. If you would rather wait for confirmation that the record has been stored, you should instead use the [synchronous](http.md#synchronous-requests) API.

### Example cURL request

This is a very simple example, using [curl](https://curl.haxx.se), demonstrating how a profile update is sent to Adnuntius Data.

```bash
curl https://data.adnuntius.com/visitor -d '{
  "externalSystemType": "my_crm",
  "externalSystemUserId": "123hfy4658f",
  "networkId": "my_network",
  "profileValues": {
    "firstName": "Bruce",
    "educationStartYear": 2001,
    "lastTransaction": "2019-12-31T00:00:00Z"
  }'
```

## Synchronous Requests

Synchronous requests are used when you need to receive confirmation that an update has been correctly received and stored by Adnuntius data.

Asynchronous requests are sent to Adnuntius Data using the following URL:

`https://data.adnuntius.com/synchronous/visitor`

If the request is received correctly and the record successfully created or updated, an HTTP 200 status code will be returned.

### Example cURL request

This is a very simple example, using [curl](https://curl.haxx.se), demonstrating how a synchronous profile update is sent to Adnuntius Data.

```bash
curl https://data.adnuntius.com/synchronous/visitor -d '{
  "externalSystemType": "my_crm",
  "externalSystemUserId": "123hfy4658f",
  "networkId": "my_network",
  "profileValues": {
    "firstName": "Bruce",
    "educationStartYear": 2001,
    "lastTransaction": "2019-12-31T00:00:00Z"
  }'
```
