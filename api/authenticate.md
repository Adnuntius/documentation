# /authenticate

Handles User log-in and provides Authentication Tokens.

| Name | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| grant\_type | String | "password" or "" | Defines the scope of the grant type. |
| password | String |  | Authenticating users password |
| username | String |  | Authenticating users username |
| refresh\_token | String |  |  |
| scope | String | "ng\_api" | Describes what API to access. |

Example authentication using grant type `password`

```text
POST http://<host>/api/authenticate?context={{context}}
{
    "grant_type": "password",
    "scope": "ng_api",
    "username": "{{adn-username}}",
    "password": "{{adn-password}}"
}
```

Example authentication using grant type `refresh_token`

```text
POST http://<host>/api/authenticate?context={{context}}
{
    "grant_type": "refresh_token",
    "scope": "ng_api",
    "refresh_token": "TK0eTkcK7TiNzrAsBpfaSTu1NVPKWhmdcjMLO..."
}
```

Example response for all grant types:

```text
{
    "access_token": "VaOHWOyKRLQkkoO6yATH0Tc2RQcKxHsJssTxvg...",
    "token_type": "bearer",
    "expires_in": "3600",
    "refresh_token": "TK0eTkcK7TiNzrAsBpfaSTu1NVPKWhmdcjMLO..."
}
```

