# /segments/upload

Allows you to upload a list of segments from a DMP into Adnuntius.

## POST

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
| dataSource | ADNUNTIUS, ADOBE, CXENSE, LYTICS, RELAY42 | The DMP providing the segmentation. |
| state | ACTIVE \(default\), INACTIVE, ARCHIVED | The state of the segment. |

