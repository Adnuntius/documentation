---
description: Learn how to make API requests.
---

# API Requests

## Introduction

### REST Principles <a href="#rest-principles" id="rest-principles"></a>

The Adnuntius API is based on [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) principles.

#### GET <a href="#get" id="get"></a>

GET calls for many resources can be called with or without an object id in the url.

When the id is included then only that object will be returned.

```http
GET https://api.adnuntius.com/api/v1/<resource type>/<id>
```

When no id is included then a list of all objects of that type visible to the user are returned.

```http
GET https://api.adnuntius.com/api/v1/<resource type>
```

#### PUT AND POST <a href="#put-and-post" id="put-and-post"></a>

PUT and POST are both treated the same, they will both create an object if it does not exist, or update an object if it does.

When the id is included then only that object will be created/updated.

```http
POST https://api.adnuntius.com/api/v1/<resource type>/<id>
```

When no id is included then a list of objects to be created/updated is expected as the request’s POST data.

```http
POST https://api.adnuntius.com/api/v1/<resource type>
```

#### HEAD <a href="#head" id="head"></a>

HEAD is used to confirm the existence of an object.

```http
HEAD https://api.adnuntius.com/api/v1/<resource type>/<id>
```

The response code will be `200 OK` if it exists or `404 NOT FOUND` if it doesn’t.

#### Idempotence <a href="#idempotence" id="idempotence"></a>

The API supports the concept of [idempotency](https://en.wikipedia.org/wiki/Idempotence) and this means that the same PUT/POST call to an object can be made multiple times and only the initial call will alter the state of the object.

#### HATEOAS <a href="#hateoas" id="hateoas"></a>

The concept of [HATEOAS](https://en.wikipedia.org/wiki/HATEOAS) is used to provide links between related objects.

For example, a Line Item links to many objects and both the related objects id and GET url is included.

```javascript
{
    "id": "lineitem_1",
    "name": "Test Line Item",
    "order": {
        "id": "order_1",
        "url": "/api/v1/orders/order_1"
    }
}
```

#### Response codes <a href="#response-codes" id="response-codes"></a>

Standard [HTTP status codes](http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html) are returned with each API response.

### API Conventions <a href="#api-conventions" id="api-conventions"></a>

#### Authorization

**Access tokens**

The Adnuntius API uses access tokens for authentication. In simplest terms, a user can request an access token from the API that can then be used to gain access to secured resources.

Token requests are made to:

```http
POST https://api.adnuntius.com/api/authenticate
```

Once an access token has been granted, it must be provided on every request to the API to access a secure resource. This is done by providing the token as the value for the `Authorization: Bearer` HTTP header

#### Rate Limits <a href="#transactionality" id="transactionality"></a>

Adnuntius safeguards the API against bursts of incoming traffic by applying a generous limit per IP address, and slowing requests which exceed this limit for a short period of time.

We additionally rate limit usage per access token. If you exceed this limit your request will receive a 429 - Too Many Requests response code, along with a Retry-After header and text message explaining how many seconds you must wait before making the next request.

#### Transactionality <a href="#transactionality" id="transactionality"></a>

Each API call that modifies data results in a single transaction being committed against the data store. If multiple objects are being committed together and there is an error then no changes will be made.

#### Object State <a href="#object-state" id="object-state"></a>

All domain objects have an `objectState` field that can be set to one of the following enumeration values:

| Object State | Description                             |
| ------------ | --------------------------------------- |
| ACTIVE       | The object is active and visible        |
| INACTIVE     | The object is visible but not usable    |
| HIDDEN       | The object is neither visible or usable |

Note that the API will return hidden objects if they are requested specifically by id, but it will not return them by default when requesting lists of objects. The `includeHidden=true` parameter can be used to include hidden objects.

#### Deleting Data <a href="#deleting-data" id="deleting-data"></a>

Domain objects cannot be deleted, but they can be disabled or hidden by using the object’s Object State field.

#### Updating fields <a href="#updating-fields" id="updating-fields"></a>

When posting an object to the API for update, the following rules apply for fields:

* If a field is not included in the posted json then the field will not be modified.
* If a field is included in the posted json then field will be updated.
* Some fields can be set to null, but this depends on the object, the field and the field data type.
* Collections are also replaced with the posted value. This also applies if an empty collection is sent - the existing collection will be replaced with the empty one.

#### Dates <a href="#dates" id="dates"></a>

All dates are represented as [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) strings in UTC timezone unless otherwise specified.

```javascript
{
  "time": "2015-01-01T01:00Z"
}
```

#### Vectorized Parameters <a href="#vectorized-parameters" id="vectorized-parameters"></a>

When requesting a list of objects, it is possible to pass a list of ids so only these objects are returned. Ids must be semicolon delimited.

```http
GET https://api.adnuntius.com/api/v1/lineitems?context=<context>&id=lineitem_1;lineitem_2
```

#### Context Parameter <a href="#context-parameter" id="context-parameter"></a>

API requests for objects that belong to a network require a `context` parameter. The value is the id of the network that is the scope for the request.

```http
GET https://api.adnuntius.com/api/v1/lineitems?context=network_1
```

### API Responses <a href="#api-responses" id="api-responses"></a>

#### Validation Errors <a href="#validation-errors" id="validation-errors"></a>

The Adnuntius API is designed to be flexible and user friendly. Although validation on data being posted is kept to a minimum, some data may be rejected and the object will not be persisted. If the system rejects a value then a validation error will be returned explaining why. These validation errors are a type of Translatable Message.

#### Validation Warnings <a href="#validation-warnings" id="validation-warnings"></a>

Validation warnings are used to notify users that there is a problem with a persisted objects data. These warnings typically prevent the object from functioning, for example a Line Item with warnings will not be able to show ads. These validation warnings are a type of Translatable Message.

#### Paging <a href="#paging" id="paging"></a>

The system will page results for responses that contain an array of objects. Paged results will include:

| Field      | Description                    |
| ---------- | ------------------------------ |
| page       | The page number, 0 based       |
| pageSize   | The number of results per page |
| totalCount | The total number of objects    |
| results    | The array of objects           |

Note that `page` and `pageSize` can be passed as parameters to most resources. However in some cases all results are returned in a single page.

#### Error Responses <a href="#error-responses" id="error-responses"></a>

Along with the HTTP response codes, Translatable Messages are also returned to provide additional information.

`ErrorMessage`s are returned for common error scenarios and `ValidationErrorMessage`s are returned when an object update contains invalid data.

#### Translatable Messages <a href="#translatable-messages" id="translatable-messages"></a>

Translatable messages are used when the API returns a message that can be displayed to the end user.

All messages contains the following:

| Field  | Description                                             |
| ------ | ------------------------------------------------------- |
| type   | The type of message, see below                          |
| code   | The unique code or key for this message                 |
| text   | The English message that may contain param placeholders |
| params | A parameter name value map for placeholder substitution |

Example:

```javascript
{
  "code": "error.referenced.object.not.found",
  "text": "Referenced object {{type}} {{id}} not found",
  "type": "ErrorMessage",
  "params": [
    "id": "lineitem_1",
    "type": "Campaign"
  ]
}
```

### Examples using [cURL](http://curl.haxx.se/) <a href="#curl-examples" id="curl-examples"></a>

This example uses [cURL](http://curl.haxx.se/) from a Linux terminal using [jq](https://stedolan.github.io/jq/) for json parsing.

The examples use `network_1` as the `context`.

While not suited for programmatic integration, this approach is simple and useful for testing and debugging.

**Authentication**\
This snippet authenticates and stores the access token as a shell variable so it can be used in subsequent API calls.

```bash
export ACCESS_TOKEN=$(curl -v -d grant_type=password -d scope=ng_api -d username=broker1@bitshift.technology -d password=broker1 "https://api.adnuntius.com/api/authenticate" | jq -r .access_token)
```

NOTE: This only works for users which do NOT have 2FA enabled. To use the API with a 2FA enabled user you must instead generate an [https://admin.adnuntius.com/admin/api-keys](https://admin.adnuntius.com/admin/api-keys) with the desired scope and use it in place of the above ACCESS\_TOKEN. Some options, such as querying publisher data, are not yet supported via API Key. If you need these with 2FA enabled you will have to use our python [https://github.com/Adnuntius/api-tools](https://github.com/Adnuntius/api-tools) with your TOTP seed as the two\_factor\_code\_provider.

**List Line Items**

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" "https://api.adnuntius.com/api/v1/lineitems?context=network_1" | jq .
```

**Get a Line Item**

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" "https://api.adnuntius.com/api/v1/lineitems/lineitem_1?context=network_1" | jq .
```

**Create/update a Line Item**

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -d @- -X PUT "https://api.adnuntius.com/api/v1/lineitems/lineitem_1?context=network_1" | jq .
```

This command will then accept json input from the command line.

**Upload an Asset**

Where _leaderboard.png_ is the Asset file in the current directory that should be uploaded:

```bash
curl -s -H "Authorization: Bearer $ACCESS_TOKEN" -F asset=@leaderboard.png "https://api.adnuntius.com/api/v1/assets/creative_1/asset_1?context=network_1" | jq .
```
