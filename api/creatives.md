# /creatives

### GET

A `GET` request can allways be filtered by the [get parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of this documentation.

Example get request:

```text
GET https://api.adnuntius.com/api/v1/creatives?context=winning&orderByDirection=ASCENDING
```

Example response:

```text
{
    "results": [
        {
            "id": "7007clfzcm78jkjg",
            "createUser": {
                "id": "380a19a3-96e9-4eb8-ba74-f93da35cd153",
                "name": "Adnuntius",
                "url": "/api/v1/users/380a19a3-96e9-4eb8-ba74-f93da35cd153"
            },
            "createTime": "2017-10-24T11:07:41.041Z",
            "updateUser": {
                "id": "380a19a3-96e9-4eb8-ba74-f93da35cd153",
                "name": "Adnuntius",
                "url": "/api/v1/users/380a19a3-96e9-4eb8-ba74-f93da35cd153"
            },
            "updateTime": "2017-10-24T11:07:59.837Z",
            "objectState": "ACTIVE",
            "validationWarnings": [],
            "network": {
                "id": "winning",
                "name": "Micke",
                "url": "/api/v1/networks/winning"
            },
            "name": "Creative for Testing burn rate",
            "lineItem": {
                "id": "tpfbtsbmkxj8ghz7",
                "name": "Testing burn rate",
                "url": "/api/v1/lineitems/tpfbtsbmkxj8ghz7"
            },
            "layout": {
                "id": "winning_image_layout_1",
                "name": "Image",
                "url": "/api/v1/layouts/winning_image_layout_1"
            },
            "width": 980,
            "height": 240,
            "userState": "APPROVED",
            "constraintsToAssets": {
                "Image": {
                    "id": "72wgy8mhhsxdnqs7",
                    "url": "/api/v1/assets/7007clfzcm78jkjg/72wgy8mhhsxdnqs7"
                }
            },
            "constraintsToText": {},
            "constraintsToUrls": {
                "destination": "http://www.google.com"
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
                }
            },
            "impressionTrackingUrls": [],
            "thirdPartyContent": {},
            "renderedHtml": "<a rel=\"nofollow\" target=\"_top\" href=\"\"><img src=\"//assets.adnuntius.com/aO59MDnCKaLBQNA0G0DUCc7nj8wJA0e149OPTkQCww8.jpg\" width=\"980\" height=\"240\" alt=\"\"/></a>",
            "type": "INTERNAL",
            "url": "/api/v1/creatives/7007clfzcm78jkjg"
        }
    ],
    "totalCount": 1
}
```

### POST

Post object contains the following keys:

| Name | Type | Description |
| :--- | :--- | :--- |
| id | String | Identification of the object. |
| createUser | Object | Reference to the user that created the object. |
| createTime | String | Date string referencing the creation of the object. |
| constraintsToAssets | Object | Object that defines the assets linked to the creative. |
| constraintsToText | Object | Object that defines the text items linked to the creative. |
| constraintsToUrl | Object | Object holding the various click trackers for Adnuntius. |
| description | String | The description for the creative |
| height | Int | The height of the creative |

Creative ID can be set to whatever string value the user would like as long as it is unique within the network.

Example POST request: `{id}` will be requred when posting to the API.

```text
POST https://api.adnuntius.com/api/v1/creatives/{id}
```

Example post body:

```text
{
  "constraintsToAssets": {
    "image1": "asset_1",
    "image2": {
      "id": "asset_2"
    },
    "image3": null
  },
  "constraintsToText": {
    "headline": "Man bites Dog!",
    "content": "Click here..."
  },
  "constraintsToUrls": {
    "destinationUrl": "www.example.com"
  },
  "description": "The description for the creative",
  "height": 300,
  "impressionTrackingUrls": [ "http://imp.tradedoubler.com/imp?type(inv)g(20367306)a(2095715)" ],
  "layout": "layout_1",
  "lineItem": "lineitem_1",
  "name": "My First Creative",
  "userState": "REQUIRES_REVIEW",
  "width": 200,
  "type": "INTERNAL"
}
```

example POST response

```text
{
  "lineItem": {
    "id": "lineitem_1",
    "url": "/api/v1/lineitems/lineitem_1",
    "name": "My Line Item"
  },
  "constraintsToAssets": {
    "image1": {
      "id": "asset_1",
      "url": "/api/v1/assets/creative_1/asset_1"
    },
    "image2": {
      "id": "asset_2",
      "url": "/api/v1/assets/creative_1/asset_2"
    },
    "image3": null
  },
  "constraintsToText": {
    "headline": "Man bites Dog!",
    "content": "Click here..."
  },
  "constraintsToUrls": {
    "destinationUrl": "www.example.com"
  },
  "thirdPartyContent": {},
  "createTime": "2016-01-01T10:20:30Z",
  "createUser": {
    "id": "create_user",
    "url": "/api/v1/users/create_user",
    "name": "Alice"
  },
  "description": "The description for the creative",
  "height": 300,
  "id": "creative_1",
  "impressionTrackingUrls": [ "http://imp.tradedoubler.com/imp?type(inv)g(20367306)a(2095715)" ],
  "layout": {
    "id": "layout_1",
    "url": "/api/v1/layouts/layout_1",
    "name": "My Layout"
  },
  "name": "My First Creative",
  "network": {
    "id": "network_1",
    "url": "/api/v1/networks/network_1"
  },
  "objectState": "ACTIVE",
  "targeting": {
    "adUnitMatchingLabelTargets": [],
    "adUnitTarget": {
      "adUnits": []
    },
    "categoryTargets": [],
    "dateTarget": {
      "dateRanges": [],
      "timeZoneSetting": "SYSTEM"
    },
    "deviceTargets": [],
    "geospatialTargets": [],
    "keyValueTargets": [],
    "keywordTargets": [],
    "namedLocationTarget": {
      "locations": []
    },
    "retargetingTargets": [],
    "siteTarget":{
      "sites": []
    },
    "userSegmentTargets": [],
    "dayPartingTargets": [],
    "ipAddressTarget": {
      "addresses":[]
    }
  },
  "updateTime": "2016-01-11T10:20:30Z",
  "updateUser": {
    "id": "update_user",
    "url": "/api/v1/users/update_user",
    "name": "Bob"
  },
  "userState": "REQUIRES_REVIEW",
  "url": "/api/v1/creatives/creative_1",
  "validationWarnings": [],
  "width": 200,
  "type": "INTERNAL"
}
```

