# /sites

## GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/sites?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "demo.adnuntius.com",
    "description": "Demo",
    "siteUrl": "http://demo.adnuntius.com",
    "labels": [
        "Label1",
        "Label2"
    ]
    "earningsAccount": { "id": "jy2drpnsm2htzr3z" },
    "siteGroup": { "id": "j38bl01t2pbtmzkg" }
}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |
| name | Yes | String | The name of the site group |
| description |  | String | A desccription of the group |
| siteUrl |  | String | URL to the site in question |
| labels |  | Array | For searching purposes. |
| earningsAccount |  | Object | An object with a Key `id` for the ID of the earnings account that the site is a member of. |
| siteGroup |  | Object | An object with a Key `id` for the ID of the site group that the site is a member of. |

