# /segments

The segments endpoint will deliver you all the possible segments that have been imported from a DMP.

### GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```text
GET http://<host>/api/v1/segments?context=<context>
```

```text

{
    "results": [
        {
            "id": "xxxxxxxxx",
            "createTime": "2017-01-04T02:51:44.516Z",
            "updateTime": "2018-01-09T19:38:23.112Z",
            "objectState": "ACTIVE",
            "validationWarnings": [],
            "description": "Description of segment",
            "name": "Name of segment",
            "network": {
                "id": "winning",
                "name": "winning",
                "url": "/api/v1/networks/winning"
            },
            "url": "/api/v1/segments/xxxxxxxxx"
        }
    ],
    "totalCount": 1
}
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

| Name | Restriction | Description |
| :--- | :--- | :--- |
| id | String | Identification of the object. |
| createTime | String | Date string referencing the creation of the object. |
| updateTime | String | Date string referencing the update of the object. |
| objectState | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |
| validationWarnings | Array | Will tell if there's an error hindering the segment to work properly. |
| description | String | The description for the creative |
| name | String | The name of the site group |
| network | Object | An object containing id, name and url to the network it is bound to. |
| url | String | A reference to the api link to use to find the specific segment. |

