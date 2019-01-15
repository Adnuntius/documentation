# /segments

The segments endpoint will deliver you all the possible segments that have been imported from a DMP.

### GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```text
GET https://api.adnuntius.com/api/v1/segments?context=<context>
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


### POST

A list of segments can uploaded using a `POST` request.

```text
POST https://api.adnuntius.com/api/v1/segments/upload?context=<context>

[
    {
        'segmentId': 'qwerty12345',
        'name': 'Sports',
        'description': 'Interested in sports',
        'dataSource': 'ADNUNTIUS',
        'state': 'ACTIVE'
    },
    {
        'segmentId': 'zxcvbn98765',
        'name': 'Movies',
        'description': 'Interested in movies',
        'dataSource': 'ADNUNTIUS',
        'state': 'ACTIVE'
    }
]
```

| Name | Restriction | Description |
| :--- | :--- | :--- |
| segmentId | String | Identification of the segment. |
| name | String | The name of the segment |
| description | String | Description for the segment |
| dataSource | ADNUNTIUS, ADOBE, CXENSE, RELAY42 | The DMP providing the segmentation. |
| state | ACTIVE (default), INACTIVE, ARCHIVED | The state of the segment. |
