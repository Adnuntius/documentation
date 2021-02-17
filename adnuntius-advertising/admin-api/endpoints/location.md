# /location

The locations endpoint will deliver you all the locations that are available in the system.

### GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/location?q=Stockholm
```

**Example response**

```json
{
    "totalHits": 12,
    "pageStart": 1,
    "pageEnd": 12,
    "searchResults": [
        {
            "id": 29161987,
            "type": "CITY",
            "name": "Stockholm",
            "context": "South Dakota, United States, North America"
        },
        {
            "id": 2169603,
            "type": "CITY",
            "name": "Stockholm",
            "context": "Wisconsin, United States, North America"
        },
        {
            "id": 1946115,
            "type": "CITY",
            "name": "Stockholm",
            "context": "Maine, United States, North America"
        },
        {
            "id": 23042,
            "type": "REGION",
            "name": "Stockholm",
            "context": "Sweden, Europe"
        },
        {
            "id": 29133315,
            "type": "CITY",
            "name": "Stockholm",
            "context": "Saskatchewan, Canada, North America"
        },
        {
            "id": 1382915,
            "type": "CITY",
            "name": "Stockholm",
            "context": "Minnesota, United States, North America"
        },
        {
            "id": 78595,
            "type": "CITY",
            "name": "Stockholm",
            "context": "Stockholm, Sweden, Europe"
        },
        {
            "id": 34283267,
            "type": "CITY",
            "name": "Stockholm",
            "context": "Skåne, Sweden, Europe"
        },
        {
            "id": 10012419,
            "type": "CITY",
            "name": "Stockholm-Bromma",
            "context": "Stockholm, Sweden, Europe"
        },
        {
            "id": 35823619,
            "type": "CITY",
            "name": "Stockholm-Arlanda",
            "context": "Stockholm, Sweden, Europe"
        },
        {
            "id": 10168067,
            "type": "CITY",
            "name": "Stockholm Municipality",
            "context": "Stockholm, Sweden, Europe"
        },
        {
            "id": 27345923,
            "type": "CITY",
            "name": "Stockholm-arlanda",
            "context": "Stockholm, Sweden, Europe"
        }
    ],
    "aggregations": {
        "types": {
            "buckets": {
                "CITY": {
                    "name": "CITY",
                    "filter": "CITY",
                    "count": 11
                },
                "REGION": {
                    "name": "REGION",
                    "filter": "REGION",
                    "count": 1
                }
            }
        },
        "exclusionLabels": {
            "buckets": {}
        },
        "objectState": {
            "buckets": {}
        },
        "lastModifiedIn": {
            "buckets": {
                "last24Hours": {
                    "name": "last24Hours",
                    "filter": "last24Hours",
                    "count": 0
                },
                "last7Days": {
                    "name": "last7Days",
                    "filter": "last7Days",
                    "count": 0
                },
                "last30Days": {
                    "name": "last30Days",
                    "filter": "last30Days",
                    "count": 0
                }
            }
        },
        "lastModifiedBy": {
            "buckets": {}
        },
        "matchingLabels": {
            "buckets": {}
        },
        "labels": {
            "buckets": {}
        }
    }
```

