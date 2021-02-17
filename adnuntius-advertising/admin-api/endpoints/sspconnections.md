# /sspconnections

The sspconnections endpoint will deliver you all the possible SSP connections that is available.

### GET

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/sspconnections?context=<context>
```
```json
{
    "results": [
        {
            "id": "r9sdy0rdyfz9bh9w",
            "createUser": {
                "id": "380a19a3-96e9-4eb8-ba74-f93da35cd153",
                "name": "Adnuntius",
                "url": "/api/v1/users/380a19a3-96e9-4eb8-ba74-f93da35cd153"
            },
            "createTime": "2017-11-07T16:14:59.606Z",
            "updateUser": {
                "id": "380a19a3-96e9-4eb8-ba74-f93da35cd153",
                "name": "Adnuntius",
                "url": "/api/v1/users/380a19a3-96e9-4eb8-ba74-f93da35cd153"
            },
            "updateTime": "2018-01-10T00:02:47.941Z",
            "objectState": "ACTIVE",
            "validationWarnings": [],
            "network": {
                "id": "winning",
                "name": "Micke",
                "url": "/api/v1/networks/winning"
            },
            "name": "Pubmatic",
            "ssp": "PUBMATIC",
            "publisherId": "79505",
            "apiKey": "1",
            "url": "/api/v1/sspconnections/r9sdy0rdyfz9bh9w",
            "ssp_icon": "https://pubmatic.com/wp-content/themes/pubmatic/imgs/logo-black.svg"
        }
    ],
    "totalCount": 1
}
```

Currently the API only supports reading from the SSP connections endpoint.

