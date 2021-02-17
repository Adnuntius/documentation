# /segments/users/upload

Allows you to upload a list of users and their assigned segments from a DMP into Adnuntius.

## POST

An example `POST` request is shown below.

```http
POST https://api.adnuntius.com/api/v1/segments/users/upload?context=<context>
```
```json
[
    {
        "userId": "3645poiuyt",
        "siteId": "ghjfk56479",
        "segments": ["fjhgasjh8", "asfjhj435", "jshg43fs"],
        "dataSource": "ADNUNTIUS"
    },
    {
        "userId": "asdfgh56473",
        "siteId": "fgsh4658djk",
        "segments": ["sfjh346s", "sjfhgsj345"],
        "dataSource": "ADNUNTIUS",
        "updateMode": "ADD"
    }
]
```

NOTE: You are restricted to uploading 1000 users per request.

| Name | Restriction | Description |
| :--- | :--- | :--- |
| userId | String | Identification of the user |
| siteId | String | Identification of the site |
| segments | String\[\] | A list of segment-ids that this user is assigned to |
| dataSource | ADNUNTIUS, ADOBE, CXENSE, LYTICS, RELAY42 | The DMP providing the segmentation. |
| updateMode | REPLACE, ADD, REMOVE | Replace, add or remove the segments from the user record |

