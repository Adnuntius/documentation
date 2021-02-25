# /tiers

## GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/tiers?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```http
POST https://api.adnuntius.com/api/v1/tiers/<id>?context=<context>
```

```javascript
{
    "objectState": "ACTIVE",
    "name": "Egenannonser",
    "description": "Egenannonser. Under lokalt och över programmatisk backfill.",
    "minimumTraffic": 15,
    "maximumTraffic": 15,
}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |
| name | Yes | String | The name of the object |

More to be documented...

