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
    },
    {
        "segmentId": "355hd46dh",
        "name": "Food",
        "description": "Eats food",
        "dataSource": "ADNUNTIUS",
        "teams": ["team1_id", "team2_id"],
        "state": "ACTIVE"
    },
    {
        "segmentId": "355hd46dh",
        "name": "Food",
        "description": "Eats food",
        "dataSource": "ADNUNTIUS",
        "teams": ["team1_id", "team2_id"],
        "state": "ACTIVE",
        "ttlNumber": 100,
        "ttlSpec": true,
        "timeToLiveType": "FIXED_DURATION",
        "ttlUnit": "Days"
     }
]
```

| Name           | Restriction                                                                                                                                                       | Description                                                                                    |
| -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| segmentId      | String                                                                                                                                                            | Identification of the segment.                                                                 |
| team           | String                                                                                                                                                            | (optional) Restrict visibility of the segment to this team only                                |
| teams          | String\[]                                                                                                                                                         | (optional) Restrict visibility of the segment to the set of teams only                         |
| name           | String                                                                                                                                                            | The name of the segment                                                                        |
| description    | String                                                                                                                                                            | Description for the segment                                                                    |
| dataSource     | ADNUNTIUS, ADOBE, CXENSE, LYTICS, RELAY42, PERMUTIVE                                                                                                              | The DMP providing the segmentation.                                                            |
| state          | ACTIVE (default), INACTIVE, ARCHIVED                                                                                                                              | The state of the segment.                                                                      |
| timeToLiveType | FIXED\_DURATION, TODAY, THIS\_WEEK, THIS\_MONTH, UNTIL\_MONDAY, UNTIL\_TUESDAY, UNTIL\_WEDNESDAY,  UNTIL\_THURSDAY, UNTIL\_FRIDAY, UNTIL\_SATURDAY, UNTIL\_SUNDAY | Defines the time frame you wish to have the segments TTL.                                      |
| ttlNumber      | Number                                                                                                                                                            | The number of ttlUnits to live for.                                                            |
| ttlUnits       | Minutes, Hours, Days                                                                                                                                              | The type of ttlNumbers to show. Can only be used if timeToLiveType is set to "FIXED\_DURATION" |
| ttlSpec        | boolean                                                                                                                                                           | Sets the TTL function on or off.                                                               |
