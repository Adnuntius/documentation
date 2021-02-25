# /users

## GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the API documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/users?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```http
POST https://api.adnuntius.com/api/v1/users/<id>?context=<context>
```

```javascript
{
    "objectState": "ACTIVE",
    "username": "mikael@adnuntius.com",
    "name": "Mikael Lundin",
    "displayName": "mikael.lundin",
    "userRoles": {
        "rolesByNetwork": [
            {
                "network": {
                    "id": "adnuntius",
                },
                "roles": [
                    {
                        "role": {
                            "id": "adopsrole",
                        }
                    }
                ]
            }
        ]
    },
    "locale": "en",
    "externalReference": "",
}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState | Yes | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |
| username | Yes | String | The means for which a user logs in, recommended would be the email address to simplify sending reports. |
| name |  | String | The name of the user. |
| displayName |  | String | A name that will be displayed in the UI once a user is logged in. |
| userRoles |  | Object | Defines the roles a user has. |
| rolesByNetwork |  | Array | A list of all networks and roles associated with this user. |
| network |  | Object | Specifies the current scoped network. |
| roles |  | Object | Specifies one or more roles for the scoped network. |
| role |  | Object | Defines the id of the role to apply to the user. |
| locale |  | String | The language for the user. |
| externalReference |  | String | A custom string that can be used to find this user's id in an external system or something similar. |

