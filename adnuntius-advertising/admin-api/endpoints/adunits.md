# /adunits

## GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/adunits?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true` as a parameter to the `GET` query

## POST

**Example POST object:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "demo.adnuntius.com - 980x240 - Panorama 02",
    "site": { "id": "6vjwynnz2ptrvdcc" },
    "labels": [
        "Label1",
        "Label2"
    ],
    "matchingLabels": [
        "Label1",
        "Label2"
    ],
    "width": 980,
    "height": 600,
    "notes": [
        { "id": "qjv2dkfctxlrmcdp" }
    ],
    "minWidth": 0,
    "minHeight": 120,
    "pageSize": 1,
    "urlAsCategory": true,
    "sspConfigurations": [
        {
            "sspConnection": { "id": "xxxxxxxxxxxxxxxx" },
            "enabled": true,
            "sspAdUnitId": "123456",
            "sspSiteId": "123456",
            "sspAdType": "MIXED",
            "width": 980,
            "height": 360
        }
    ]
},
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN \(String\) | State of the object, will dissable or delete the object. |
| name | Yes | String | The name of the site group |
| site |  | Object | An object with a Key `id` for the id of the site that the adunit is a belonging to. |
| labels |  | Array | For searching purposes. |
| matchingLabels |  | Array | Labels used for line item targeting. |
| width |  | Number | The maximum width of the ad unit. |
| height |  | Number | The maximum height of the ad unit. |
| notes |  | Array | An array of objects with a Key `id` for the id of the note to be bound to the ad unit. |
| minWidth |  | Number | The minimum width of the ad unit. |
| minHeight |  | Number | The minimum height of the ad unit. |
| pageSize |  | Number | Number of ads that can be shown imultaniously in the adunit. |
| sspConfigurations |  | Array | Array of objects listed below. |

If pageSize is set to 2 or higher, the adunit will fill ads from the bottom first and never left to right. Ex: if you trying to fill an ad unit with two creatives of the size 300 x 250, you will have to st the min width to 300, max width 300. Min height 250, max height 500. it will not work if you set the height to 250 and maximum width to 600. [Read more here.](http://docs.adnuntius.com/userguide/inventory/sites/ad-units)

### sspConfigurations object

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| sspConnection | yes | Object | An array of objects with a Key `id` for the id of the note to be bound to the ad unit. |
| enabled | yes | Boolean | Can disable the SSP connection if set to false. |
| sspAdUnitId | yes | String | Defines the ad unit id that is set in the SSP. |
| sspSiteId | yes | String | Defines the site id that is set in the SSP. |
| sspAdType | yes | HTML, TEXT, VIDEO, FLASH, IMAGE, MIXED \(String\) | Defines what type of content that is accepted from the bid request. |
| width | yes | Number | Width of the creative that will be collected from the SSP |
| height | yes | Number | Height of the creative that will be collected from the SSP |

