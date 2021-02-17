# /roles

### GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/roles?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

### POST

**Example POST object:**

```http
POST https://api.adnuntius.com/api/v1/roles/<id>?context=<context>
```
```json
{
    "objectState": "ACTIVE",
    "name": "Name of role",
    "description": "Grants access to all system management actions",
    "permissions": [
        "MANAGE_BUSINESS",
        "MANAGE_LAYOUTS",
        "MANAGE_REPORT_TEMPLATES",
        "MANAGE_SYSTEM"
    ],
    "scope": "NETWORK",
}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |
| name | Yes | String | The name of the object |
| labels |  | Array | For searching purposes. |
| sites |  | Array | An array of objects with a Key `id` for the id of the site to be bound to the role. |

#### Permissions

* MANAGE\_BUSINESS
* MANAGE\_LAYOUTS
* MANAGE\_REPORT\_TEMPLATES
* MANAGE\_SYSTEM
* RUN\_REPORTS

#### Scopes

A scope can be set to be allowed on a "TEAM" level or on the "NETWORK" level. This tells the user that has a role assigned to it what inventory it can view.

