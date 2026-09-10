# /adunits

### GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/adunits?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true` as a parameter to the `GET` query

### POST

**Example POST object:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "demo.adnuntius.com - 980x240 - Panorama 02",
    "site": { "id": "6vjwynnz2ptrvdcc" },
    "floorPrice": {
        "currency": "NOK",
        "amount": 1
    },
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
    "siteRuleset": { "id": "mm7mr2x6jvkh8083" },
    "targetingRulesets": [
        { "id": "vjr8kd02mnxpq7fs" }
    ],
    "sizeRulesets": [
        { "id": "h3nkw81ltbqz59dm" }
    ],
    "layoutRulesets": [
        { "id": "x5cb23fj3qkdxt2s" }
    ],
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
}
```

| Name              | Required | Restriction                       | Description                                                                                          |
| ----------------- | -------- | --------------------------------- | ---------------------------------------------------------------------------------------------------- |
| objectState       |          | ACTIVE, INACTIVE, HIDDEN (String) | State of the object, will disable or delete the object.                                              |
| name              | Yes      | String                            | The name of the site group                                                                           |
| site              |          | Object                            | An object with a Key `id` for the id of the site that the ad unit is a belonging to.                 |
| floorPrice        |          | Object                            | Specify the floor price of the ad unit. It has to be an object containing a currency and the amount. |
| labels            |          | Array                             | For searching purposes.                                                                              |
| matchingLabels    |          | Array                             | Labels used for line item targeting.                                                                 |
| width             |          | Number                            | The maximum width of the ad unit.                                                                    |
| height            |          | Number                            | The maximum height of the ad unit.                                                                   |
| notes             |          | Array                             | An array of objects with a Key `id` for the id of the note to be bound to the ad unit.               |
| minWidth          |          | Number                            | The minimum width of the ad unit.                                                                    |
| minHeight         |          | Number                            | The minimum height of the ad unit.                                                                   |
| pageSize          |          | Number                            | Number of ads that can be shown imultaniously in the adunit.                                         |
| siteRuleset       |          | Object                            | An object with a Key `id` for the id of the `INVENTORY` ruleset to apply to the ad unit.             |
| targetingRulesets |          | Array                             | An array of objects with a Key `id` for the id of each `TARGETING` ruleset to apply.                 |
| sizeRulesets      |          | Array                             | An array of objects with a Key `id` for the id of each `SIZE` ruleset to apply.                      |
| layoutRulesets    |          | Array                             | An array of objects with a Key `id` for the id of each `LAYOUT` ruleset to apply.                    |
| sspConfigurations |          | Array                             | Array of objects listed below.                                                                       |

If pageSize is set to 2 or higher, the adunit will fill ads from the bottom first and never left to right. Ex: if you trying to fill an ad unit with two creatives of the size 300 x 250, you will have to st the min width to 300, max width 300. Min height 250, max height 500. it will not work if you set the height to 250 and maximum width to 600. [Read more here.](https://claude.ai/adnuntius-advertising/admin-ui/inventory/adunits-1)

#### Adding a ruleset

Rulesets set floor prices across inventory, and are created separately at the [/rulesets](https://claude.ai/adnuntius-advertising/admin-api/endpoints/rulesets) endpoint. Once a ruleset exists, apply it to an ad unit by posting its id to one of the four fields above. The field must match the ruleset's `type`.

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "siteRuleset": { "id": "mm7mr2x6jvkh8083" }
}' "https://api.adnuntius.com/api/v1/adunits/qr59nbx8pbz7hz5z?context=network_1" | jq .
```

An ad unit takes at most one `siteRuleset`, and any number of targeting, size and layout rulesets. The three array fields are replaced by whatever you post, so include every ruleset you want the ad unit to keep:

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "sizeRulesets": [
        { "id": "h3nkw81ltbqz59dm" },
        { "id": "b2vqt7n0xlkm4wsc" }
    ]
}' "https://api.adnuntius.com/api/v1/adunits/qr59nbx8pbz7hz5z?context=network_1" | jq .
```

To remove a ruleset, post the array without it, or post an empty array to remove all of them:

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "sizeRulesets": []
}' "https://api.adnuntius.com/api/v1/adunits/qr59nbx8pbz7hz5z?context=network_1" | jq .
```

An ad unit's `siteRuleset` is the most specific inventory ruleset there is: it hides the ones on the ad unit's site and Earnings Account rather than adding to them. Note that the ad unit's own `floorPrice` field also replaces the inventory ruleset rather than adding to it, so setting both means the `floorPrice` wins. Targeting, size and layout rulesets combine with those applied to the site and the Earnings Account, and the ad server charges the highest floor price that applies. See [/rulesets](https://claude.ai/adnuntius-advertising/admin-api/endpoints/rulesets) for the full precedence rules.

#### sspConfigurations object

| Name          | Required | Restriction                                     | Description                                                                            |
| ------------- | -------- | ----------------------------------------------- | -------------------------------------------------------------------------------------- |
| sspConnection | yes      | Object                                          | An array of objects with a Key `id` for the id of the note to be bound to the ad unit. |
| enabled       | yes      | Boolean                                         | Can disable the SSP connection if set to false.                                        |
| sspAdUnitId   | yes      | String                                          | Defines the ad unit id that is set in the SSP.                                         |
| sspSiteId     | yes      | String                                          | Defines the site id that is set in the SSP.                                            |
| sspAdType     | yes      | HTML, TEXT, VIDEO, FLASH, IMAGE, MIXED (String) | Defines what type of content that is accepted from the bid request.                    |
| width         | yes      | Number                                          | Width of the creative that will be collected from the SSP                              |
| height        | yes      | Number                                          | Height of the creative that will be collected from the SSP                             |
