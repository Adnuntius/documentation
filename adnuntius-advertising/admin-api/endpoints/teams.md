# /teams

## GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/teams?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```http
POST https://api.adnuntius.com/api/v1/teams/<id>?context=<context>
```

```javascript
{
    "objectState": "ACTIVE",
    "name": "Name of team",
    "labels": [
        "Label1",
        "Label2"
    ],
    "sites": [
        { "id": "ldggfbdmk9dlmcs1" }
    ]
}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |
| name | Yes | String | The name of the object |
| labels |  | Array | For searching purposes. |
| sites |  | Array | An array of objects with a Key `id` for the id of the site to be bound to the team. |

