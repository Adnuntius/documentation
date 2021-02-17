# /contextserviceconnections

### GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/contextserviceconnections?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

### POST

**Example POST object:**

```http
POST https://api.adnuntius.com/api/v1/contextserviceconnections/<id>?context=<context>
```
```json
{
    "objectState": "ACTIVE",
    "name": "Context name",
    "description": "Retrieve keywords from context service",
    "contextService": "CXENSE",
    "username": "user@user.com",
    "apiKey": "apikey",

}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |
| name | Yes | String | The name of the object |
| contextService | yes | "CXENSE" \(String\) | The Context service in question |
| username | yes | String | The username of the user for the context service |
| apiKey | yes | String | The key of the api for the context service |

