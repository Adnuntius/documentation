---
description: Learn how to make API requests.
---

# API Requests

## Introduction

### REST Principles <a id="rest-principles"></a>

The Adnuntius API is based on [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) principles.

#### GET <a id="get"></a>

GET calls for many resources can be called with or without an object id in the url.

When the id is included then only that object will be returned.

```text
GET http://<host>/api/v1/<resource type>/<id>
```

When no id is included then a list of all objects of that type visible to the user are returned.

```text
GET http://<host>/api/v1/<resource type>
```

#### PUT AND POST <a id="put-and-post"></a>

PUT and POST are both treated the same, they will both create an object if it does not exist, or update an object if it does.

When the id is included then only that object will be created/updated.

```text
POST http://<host>/api/v1/<resource type>/<id>
```

When no id is included then a list of objects to be created/updated is expected as the request’s POST data.

```text
POST http://<host>/api/v1/<resource type>
```

#### DELETE <a id="delete"></a>

DELETE is not supported on resources as domain objects cannot be deleted. See [Object State](https://api.adnuntius.com/#object-state) and [Deleting Data](https://api.adnuntius.com/deleting-data).

#### HEAD <a id="head"></a>

HEAD is used to confirm the existence of an object.

```text
HEAD http://<host>/api/v1/<resource type>/<id>
```

The response code will be `200 OK` if it exists or `404 NOT FOUND` if it doesn’t.

#### Idempotence <a id="idempotence"></a>

The API supports the concept of [idempotency](https://en.wikipedia.org/wiki/Idempotence) and this means that the same PUT/POST call to an object can be made multiple times and only the initial call will alter the state of the object.

#### HATEOAS <a id="hateoas"></a>

The concept of [HATEOAS](https://en.wikipedia.org/wiki/HATEOAS) is used to provide links between related objects.

For example, a Line Item links to many objects and both the related objects id and GET url is included.

```text
{
    "id": "lineitem_1",
    "name": "Test Campaign",
    "product": {
        "id": "product_1",
        "url": "http://test.api.com/api/v1/products/product_1"
    }
}
```

#### Response codes <a id="response-codes"></a>

Standard [HTTP status codes](http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html) are returned with each API response.

### API Conventions <a id="api-conventions"></a>

#### Authorization

**Access tokens**

The Adnuntius API uses [OAuth2](https://oauth.net/2/) for authentication. In simplest terms, a user can request an access token from the API that can then be used to gain access to secured resources.

Token requests are made to the [Authentication Resource](https://api.adnuntius.com/resource_Authentication.html).

Once an access token has been granted, it must be provided on every request to the API to access a secure resource. This is done by providing the token as the value for the `Authorization: Bearer` HTTP header

#### Versioning <a id="versioning"></a>

The current version of the Adnuntius API is version 1 and is reflected in all API urls. There maybe changes to the API for a version, but there will never be breaking API changes so consumers can be confident that their code will continue to work against a version for the duration of its life time.

#### Transactionality <a id="transactionality"></a>

Each API call that modifies data results in a single transaction being committed against the data store. If multiple objects are being committed together and there is an error then no changes will be made.

#### Object State <a id="object-state"></a>

All domain objects have an `objectState` field that can be set to one of the following enumeration values:

| Object State | Description |
| :--- | :--- |
| ACTIVE | The object is active and visible |
| INACTIVE | The object is visible but not usable |
| HIDDEN | The object is neither visible or usable |

Note that the API will return hidden objects if they are requested specifically by id, but it will not return them by default when requesting lists of objects. The `includeHidden=true` parameter can be used to include hidden objects.

#### Deleting Data <a id="deleting-data"></a>

Domain objects cannot be deleted, but they can be disabled or hidden by using the object’s [Object State](https://api.adnuntius.com/#object-state) field.

#### Updating fields <a id="updating-fields"></a>

When posting an object to the API for update, the following rules apply for fields:

* If a field is not included in the posted json then the field will not be modified.
* If a field is included in the posted json then field will be updated.
* Some fields can be set to null, but this depends on the object, the field and the field data type.
* Collections are also replaced with the posted value. This also applies if an empty collection is sent - the existing collection will be replaced with the empty one.

#### Dates <a id="dates"></a>

All dates are represented as [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) strings in UTC timezone unless otherwise specified.

```text
{
  "time": "2015-01-01T01:00Z"
}
```

#### Vectorized Parameters <a id="vectorized-parameters"></a>

When requesting a list of objects, it is possible to pass a list of ids so only these objects are returned. Ids must be semicolon delimited.

```text
GET http://<host>/api/v1/lineitems?context=<context>&id=lineitem_1;lineitem_2
```

#### Context Parameter <a id="context-parameter"></a>

API requests for objects that belong to a network require a `context` parameter. The value is the id of the network that is the scope for the request.

```text
GET http://<host>/api/v1/lineitems?context=network_1
```

### API Responses <a id="api-responses"></a>

#### Validation Errors <a id="validation-errors"></a>

The Adnuntius API is designed to be flexible and user friendly. Although validation on data being posted is kept to a minimum, some data may be rejected and the object will not be persisted. If the system rejects a value then a validation error will be returned explaining why. These validation errors are a type of [translatable message](https://api.adnuntius.com/#translatable-messages).

#### Validation Warnings <a id="validation-warnings"></a>

Validation warnings are used to notify users that there is a problem with a persisted objects data. These warnings typically prevent the object from functioning, for example a Line Item with warnings will not be able to show ads. These validation warnings are a type of [translatable message](https://api.adnuntius.com/#translatable-messages).

#### Paging <a id="paging"></a>

The system will page results for responses that contain an array of objects. Paged results will include:

| Field | Description |
| :--- | :--- |
| page | The page number, 0 based |
| pageSize | The number of results per page |
| totalCount | The total number of objects |
| results | The array of objects |

Note that `page` and `pageSize` can be passed as parameters to most resources. However in some cases all results are returned in a single page.

#### Error Responses <a id="error-responses"></a>

Along with the [HTTP response codes](https://api.adnuntius.com/#response-codes), [translatable messages](https://api.adnuntius.com/#translatable-messages) are also returned to provide additional information.

`ErrorMessage`s are returned for common error scenarios and `ValidationErrorMessage`s are returned when an object update contains invalid data.

#### Translatable Messages <a id="translatable-messages"></a>

Translatable messages are used when the API returns a message that can be displayed to the end user.

All messages contains the following:

| Field | Description |
| :--- | :--- |
| type | The type of message, see below |
| code | The unique code or key for this message |
| text | The English message that may contain param placeholders |
| params | A parameter name value map for placeholder substitution |

Example:

```text
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

### Examples using [cURL](http://curl.haxx.se/) <a id="curl-examples"></a>

This example uses [cURL](http://curl.haxx.se/) from a Linux terminal using [jq](https://stedolan.github.io/jq/) for json parsing.

The examples use `network_1` as the `context`.

While not suited for programmatic integration, this approach is simple and useful for testing and debugging.

**Authentication**  
This snippet authenticates and stores the access token as a shell variable so it can be used in subsequent API calls.

```text
export ACCESS_TOKEN=$(curl -v -d grant_type=password -d scope=ng_api -d username=broker1@bitshift.technology -d password=broker1 "http://<host>/api/authenticate" | jq -r .access_token)
```

**List Campaigns**

```text
curl -H "Authorization: Bearer $ACCESS_TOKEN" "http://<host>/api/v1/lineitems?context=network_1" | jq .
```

**Get a Line Item**

```text
curl -H "Authorization: Bearer $ACCESS_TOKEN" "http://<host>/api/v1/lineitems/lineitem_1?context=network_1" | jq .
```

**Create/update a Campaign**

```text
curl -H "Authorization: Bearer $ACCESS_TOKEN" -d @- -X PUT "http://<host>/api/v1/lineitems/lineitem_1?context=network_1" | jq .
```

This command will then accept json input from the command line.

**Upload an Asset**

Where _leaderboard.png_ is the Asset file in the current directory that should be uploaded:

```text
curl -s -H "Authorization: Bearer $ACCESS_TOKEN" -F asset=@leaderboard.png "http://<host>/api/v1/assets/creative_1/asset_1?context=network_1" | jq .
```

