# /segments/upload

Allows you to upload a list of segments from a DMP into Adnuntius.

## POST

A list of segments can uploaded using a `POST` request.

```http
POST https://api.adnuntius.com/api/v1/segments/upload?context=<context>
```

```javascript
[
    {
        "segmentId": "qwerty12345",
        "name": "Sports",
        "description": "Interested in sports",
        "dataSource": "ADNUNTIUS",
        "state": "ACTIVE"
    },
    {
        "segmentId": "zxcvbn98765",
        "name": "Movies",
        "description": "Interested in movies",
        "dataSource": "ADNUNTIUS",
        "team": "my_team_id",
        "state": "ACTIVE"
    }
]
```

| Name | Restriction | Description |
| :--- | :--- | :--- |
| segmentId | String | Identification of the segment. |
| team | String | \(optional\) Restrict visibility of the segment to this team only |
| name | String | The name of the segment |
| description | String | Description for the segment |
| dataSource | ADNUNTIUS, ADOBE, CXENSE, LYTICS, RELAY42, PERMUTIVE | The DMP providing the segmentation. |
| state | ACTIVE \(default\), INACTIVE, ARCHIVED | The state of the segment. |

