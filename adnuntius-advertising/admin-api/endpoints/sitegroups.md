# /sitegroups

## GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/sitegroups?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "General Site Group",
    "description": "Description",
    "labels": [
        "Label1",
        "Label2"
    ]
}
```

| Name | Required | type | Description |
| :--- | :--- | :--- | :--- |
| name | Yes | String | The name of the site group |
| description |  | String | A desccription of the group |
| labels |  | Array | For searching purposes. |

