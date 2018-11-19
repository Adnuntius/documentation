# /forecasts

A forecast uses historical data about the traffic and line items on a network to run auction simulations in order to determine whether another line item might be able to compete with those line items and still meet its objectives if it were to be booked on that network in a given time period. This is a more accurate but likely slower alternative to using the delivery estimate endpoint.

**Basic GET example**

```text
GET http://<host>/api/v1/forecasts?context=<context>

{
    "id": "forecast1",
    "createUser": {
        "id": "380a19a3-96e9-4eb8-ba74-f93da35cd153",
        "name": "Adnuntius",
        "url": "/api/v1/users/380a19a3-96e9-4eb8-ba74-f93da35cd153"
    },
    "createTime": "2018-01-10T15:18:22.769Z",
    "updateUser": {
        "id": "380a19a3-96e9-4eb8-ba74-f93da35cd153",
        "name": "Adnuntius",
        "url": "/api/v1/users/380a19a3-96e9-4eb8-ba74-f93da35cd153"
    },
    "updateTime": "2018-01-10T15:18:22.769Z",
    "objectState": "ACTIVE",
    "validationWarnings": [],
    "name": "My Forecast",
    "network": {
        "id": "winning",
        "name": "Micke",
        "url": "/api/v1/networks/winning"
    },
    "parameters": {
        "tier": {
            "id": "defaulttier",
            "name": "Default tier",
            "url": "/api/v1/tiers/defaulttier"
        },
        "team": {
            "id": "defaultteam",
            "name": "General team",
            "url": "/api/v1/teams/defaultteam"
        },
        "startDate": "2018-01-13T11:15:00Z",
        "endDate": "2017-01-23T11:15:00Z",
        "objectives": {
            "IMPRESSION": 1000
        },
        "targeting": {
            "deviceTargets": [],
            "adUnitTarget": {
                "adUnits": []
            },
            "userSegmentTargets": [],
            "dateTarget": {
                "dateRanges": [],
                "timeZoneSetting": "SYSTEM"
            },
            "geospatialTargets": [],
            "keyValueTargets": [],
            "siteTarget": {
                "sites": []
            },
            "adUnitMatchingLabelTargets": [],
            "categoryTargets": [],
            "namedLocationTarget": {
                "locations": []
            },
            "dayPartingTargets": [],
            "retargetingTargets": [],
            "keywordTargets": [],
            "ipAddressTarget": {
                "addresses": []
            },
            "siteGroupTarget": {
                "siteGroups": []
            }
        },
        "bidSpecification": {
            "cpm": {
                "currency": "USD",
                "amount": 10
            }
        },
        "exclusionLabels": [],
        "deduplicationLevel": "CREATIVE",
        "creativeWidth": 728,
        "creativeHeight": 90
    },
    "changeLogTopicPositions": [],
    "indexTopicPositions": [],
    "rateControlTopicPositions": [],
    "truthTopicPositions": [],
    "impressionConfidence": 0,
    "clickConfidence": 0,
    "viewableConfidence": 0,
    "cancelRequested": false,
    "status": "PENDING",
    "timeBuckets": [],
    "url": "/api/v1/forecasts/forecast1"
}
```

**Basic POST example:**

```text
POST http://<host>/api/v1/forecasts/<id>?context=<context>

{
    "name": "My Forecast",
    "parameters": {
        "startDate": "2018-01-13T11:15:00Z",
        "endDate": "2017-01-23T11:15:00Z",
        "tier": "defaulttier",
        "team": "defaultteam",
        "objectives": {
            "IMPRESSION": 1000
        },
        "targeting": {},
        "bidSpecification": {
            "cpm": {
            "amount": 10,
            "currency": "USD"
            }
        },
        "creativeWidth": 728,
        "creativeHeight": 90
    }
}
```

**Forecast object**

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| name | Yes | String | The name of the object |
| parameters | Yes | String | An object specified below describing the parameters of the forecast. |

**Parameters object**

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| startDate | Yes | String | An ISO 8601 date and time at which this line item should start delivering. Cannot be historic dates. If past date is specified current date will be used. |
| endDate | Yes | String | An ISO 8601 date and time at which this line item should stop delivering. Must be more than one hour from start date. |
| tier | Yes | String | A string containing the ID of the tier to make the forcast against. |
| team |  | String | A string containing the ID of the team to make the forcast against. |
| objectives |  | Object | An object specifying what objectiv the forecasted line item is going to have. |
| bidSpecification | Yes | Object | An object telling the forecast what bid it will deliver to the auction. Secified below. |
| creativeWidth | Yes | Number | The width of the creative that will take part of the auction |
| creativeHeight | Yes | Number | The height of the creative that will take part of the auction |

