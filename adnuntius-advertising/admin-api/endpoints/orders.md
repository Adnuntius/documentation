# /orders

## GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/orders?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "SSP - Test",
    "team": { "id": "defaultteam" },
    "labels": [
        "Label1",
        "Label2"
    ],
    "notes": [
        { "id": "qjv2dkfctxlrmcdp" }
    ]
    "salespersonUser": {
        "id": "380a19a3-96e9-4eb8-ba74-f93da35cd153"
    },
    "adOpsUser": {
        "id": "380a19a3-96e9-4eb8-ba74-f93da35cd153"
    }
}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |
| name | Yes | String | The name of the order |
| labels |  | Array | For searching purposes. |
| notes |  | Array | An array of objects with a Key `id` for the id of the note to be bound to the order. |
| salespersonUser |  | Object | An object with a Key `id` for the id of the sales person to be bound to the order. |
| adOpsUser |  | Object | An object with a Key `id` for the id of the adops to be bound to the order. |

