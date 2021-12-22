# /creatives

## GET

A `GET` request can always be filtered by the [get parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of this documentation.

Example get request:

```http
GET https://api.adnuntius.com/api/v1/creatives?context=winning&orderByDirection=ASCENDING
```

Example response:

```javascript
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

## POST

Post object contains the following keys:

| Name                   | Required | Restriction                                                                                                                                                                                                                                                                                                                                                 | Description                                                                                                                                                                                                                                                                                                                                                 |
| :--------------        | :-----   | :----------                                                                                                                                                                                                                                                                                                                                                 | :--------------------                                                                                                                                                                                                                                                                                                                                       |
| name                   | Yes      | String                                                                                                                                                                                                                                                                                                                                                      | The name of the creative.                                                                                                                                                                                                                                                                                                                                   |
| description            |          | String                                                                                                                                                                                                                                                                                                                                                      | The description for the creative.                                                                                                                                                                                                                                                                                                                           |
| userState              |          | `NOT_READY`, `REQUIRES_REVIEW`, `APPROVED`, `REJECTED`, `PAUSED`                                                                                                                                                                                                                                                                                            | The state of the creative. Defaults to `APPROVED` if not specified.                                                                                                                                                                                                                                                                                         |
| rejectedReason         | No*      | `ADULT_CONTENT`, `BLANK_CONTENT`, `MALFORMED_CLICK_THROUGH`, `DRUG_RELATED_CONTENT`, `WEAPON_RELATED_CONTENT`, `ABUSIVE_CONTENT`, `HATE_SPEECH_CONTENT`, `LANDING_PAGE_REJECTED`, `OFFENSIVE_CONTENT`, `UNACCEPTABLE_VISUAL_EFFECTS`, `DECEPTIVE_CONTENT`, `GAMBLING_CONTENT`, `PROHIBITED_ELECTION_RELATED_CONTENT`, `SHOCKING_CONTENT`, `MALWARE_CONTENT` | (*required if `userState` is `REJECTED`) The reason for the creative being in the `REJECTED` state.                                                                                                                                                                                                                                                         |
| layout                 | Yes      | String                                                                                                                                                                                                                                                                                                                                                      | The layout ID to be associated with the creative.                                                                                                                                                                                                                                                                                                           |
| dimensionType          |          | `FIXED`, `FLEXIBLE`, `FIXED_WIDTH`, `FIXED_HEIGHT`                                                                                                                                                                                                                                                                                                          | The library creative dimension type. Defaults to `FIXED` if not specified.                                                                                                                                                                                                                                                                                  |
| width                  | No*      | Int                                                                                                                                                                                                                                                                                                                                                         | (*required if dimensionType is `FIXED` or `FIXED_WIDTH`) The width of the creative.                                                                                                                                                                                                                                                                         |
| height                 | No*      | Int                                                                                                                                                                                                                                                                                                                                                         | (*required if dimensionType is `FIXED` or `FIXED_HEIGHT`) The height of the creative.                                                                                                                                                                                                                                                                       |
| targeting              |          | Object                                                                                                                                                                                                                                                                                                                                                      | The targeting for the creative.                                                                                                                                                                                                                                                                                                                             |
| impressionTrackingUrls |          | Array                                                                                                                                                                                                                                                                                                                                                       | The impression tracking URL for the creative.                                                                                                                                                                                                                                                                                                               |
| thirdPartyContent      |          | Object                                                                                                                                                                                                                                                                                                                                                      | The third party content.                                                                                                                                                                                                                                                                                                                                    |
| type                   |          | `INTERNAL`, `EXTERNAL`                                                                                                                                                                                                                                                                                                                                      | The type of creative. Defaults to `INTERNAL` if not specified.                                                                                                                                                                                                                                                                                              |
| sponsorshipPercentage  |          | Number                                                                                                                                                                                                                                                                                                                                                      | The sponsorship percentage for the creative.                                                                                                                                                                                                                                                                                                                |
| externalDemandSource   |          | String                                                                                                                                                                                                                                                                                                                                                      | The external demand source ID to be associated with the creative.                                                                                                                                                                                                                                                                                           |
| externalAdUnit         |          | Array                                                                                                                                                                                                                                                                                                                                                       | The external ad unit IDs to be associcated with the creative.                                                                                                                                                                                                                                                                                               |
| copyrightStatus        |          | `UNSPECIFIED`, `ADVERTISER_CONFIRMED`, `ADVERTISER_UNCONFIRMED`                                                                                                                                                                                                                                                                                             | The copyright status. Defaults to `UNSPECIFIED` if not specified.                                                                                                                                                                                                                                                                                           |
| source                 |          | `SELF_SERVICE`, `MARKETPLACE`, `DIRECT`                                                                                                                                                                                                                                                                                                                     | The source of the creative. Defaults to `DIRECT` if not specified.                                                                                                                                                                                                                                                                                          |
| verifiedSafe           | Yes      | Boolean                                                                                                                                                                                                                                                                                                                                                     | The creative is verified to be safe.                                                                                                                                                                                                                                                                                                                        |
| libraryCreative        |          | String                                                                                                                                                                                                                                                                                                                                                      | The library creative ID to be associated with the creative. If the library creative is specified then `layout`, `dimensionType`, `width`, `height`, `layoutParameters`, `targeting`, `thirdPartyContent`, `copyrightStatus`, `source`, `verifiedSafe` fields will be overwritten with values from the library creative unless specified in `overrideFields` |
| overrideFields         |          | Array                                                                                                                                                                                                                                                                                                                                                       | Override the fields if `libraryCreative` is specified. The following fields are overrideable: `dimensionType`, `width`, `height`, `layoutParameters`, `targeting`, `copyrightStatus`, `source`, `verifiedSafe`                                                                                                                                              |

Creative ID can be set to whatever string value the user would like as long as it is unique within the network.

Example POST request: `{id}` will be required when posting to the API.

```http
POST https://api.adnuntius.com/api/v1/creatives/{id}
```

Example post body:

```javascript
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

```javascript
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

