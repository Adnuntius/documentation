# /librarycreatives

## GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/librarycreatives?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

```http
POST https://api.adnuntius.com/api/v1/librarycreatives/<libraryCreativeId>?context=<context>
```

Library creative ID can be set to whatever string value the user would like as long as it is unique within the network.

**Example POST object:**

```javascript
{
  "name": "My Library Creative",
  "description": "The description for the library creative"
  "dimensionType": "FIXED",
  "width": 200,
  "height": 300,
  "copyrightStatus": "UNSPECIFIED",
  "layout": "layout_1",
  "layoutParameters": {
    "headline": "Man bites Dog!",
    "content": "Click here...",
    "destinationUrl": "www.example.com",
    "image1": "asset_1",
    "image2": {
      "id": "asset_2"
    },
    "image3": null
  },    
  "verifiedSafe": false
}
```

| Name              | Required | Restriction                                                     | Description                                                                            |
| ----------------- | -------- | --------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| name              | Yes      | String                                                          | The name of the library creative.                                                      |
| description       |          | String                                                          | The description of the library creative.                                               |
| layout            | Yes      | String                                                          | The ID of layout associated with the creative.                                         |
| dimensionType     |          | `FIXED`, `FLEXIBLE`, `FIXED_WIDTH`, `FIXED_HEIGHT`              | The library creative dimension type. Defaults to `FIXED` if not specified.             |
| width             | No\*     | Int                                                             | (\*required if dimensionType is `FIXED` or `FIXED_WIDTH`) The width of the creative.   |
| height            | No\*     | Int                                                             | (\*required if dimensionType is `FIXED` or `FIXED_HEIGHT`) The height of the creative. |
| layoutParameters  | Yes      | Object                                                          | The parameters of the layout.                                                          |
| copyrightStatus   |          | `UNSPECIFIED`, `ADVERTISER_CONFIRMED`, `ADVERTISER_UNCONFIRMED` | The copyright status. Defaults to `UNSPECIFIED` if not specified.                      |
| targeting         |          | Object                                                          | Targeting for the library creative.                                                    |
| thirdPartyContent |          | Object                                                          | Third party content.                                                                   |
| source            |          | `SELF_SERVICE`, `MARKETPLACE`, `DIRECT`                         | The source of the library creative. Defaults to `DIRECT` if not specified.             |
| verifiedSafe      | Yes      | Boolean                                                         | The library creative is verified to be safe.                                           |

**Example Response**

```javascript
{
  "id": "library_creative",
  "createTime": "2016-01-01T10:20:30Z",
  "createUser": {
    "id": "create_user",
    "url": "/api/v1/users/create_user",
    "name": "Alice"
  },
  "network": {
    "id": "network_1",
    "url": "/api/v1/networks/network_1"
  },
  "objectState": "ACTIVE",
  "updateTime": "2016-01-11T10:20:30Z",
  "updateUser": {
    "id": "update_user",
    "url": "/api/v1/users/update_user",
    "name": "Bob"
  },
  "url": "/api/v1/librarycreatives/library_creative",
  "validationWarnings": [],
  "name": "My Library Creative",
  "description": "The description for the library creative"
  "dimensionType": "FIXED",
  "width": 200,
  "height": 300,
  "copyrightStatus": "UNSPECIFIED",
  "layout": {
    "id": "layout_1",
    "url": "/api/v1/layouts/layout_1",
    "name": "My Layout"
  },
  "layoutParameters": {
    "headline": "Man bites Dog!",
    "content": "Click here...",
    "destinationUrl": "www.example.com",
    "image1": {
      "id": "asset_1",
      "url": "/api/v1/assets/library_creative/asset_1"
    },
    "image2": {
      "id": "asset_2",
      "url": "/api/v1/assets/library_creative/asset_2"
    },
    "image3": null
  },
  "thirdPartyContent": {},
  "source": "DIRECT",
  "targeting": {
    "adUnitMatchingLabelTargets": [],
    "adUnitTarget": {
      "adUnits": [],
      "negated": false
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
      "locations": [],
      "negated": false
    },
    "retargetingTargets": [],
    "siteTarget": {
      "sites": [],
      "negated": false
    },
    "userSegmentTargets": [],
    "dayPartingTargets": [],
    "ipAddressTarget": {
      "addresses": []
    },
    "siteGroupTarget": {
      "siteGroups": [],
      "negated": false
    },
    "domainNameTarget": {
      "names": [],
      "negated": false
    },
    "viewabilityTarget": {
    }
  },
  "verifiedSafe": false
}
```
