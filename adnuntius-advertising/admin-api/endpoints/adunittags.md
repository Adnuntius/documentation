# /adunittags

### GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/adunittags?context=<context>
```
```json

{
    "results": [
        {
            "auId": "000000000000f527",
            "auW": 980,
            "auH": 400,
            "tags": [
                {
                    "name": "COM",
                    "targetTag": "<div id=\"adn-000000000000f527\" style=\"display:none\"></div>",
                    "insertionTag": "<script type=\"text/javascript\">window.adn = window.adn || {}; adn.calls = adn.calls || []; adn.calls.push(function() { adn.request({ env: 'production', adUnits: [ {auId: '000000000000f527', auW: 980, auH: 400 } ]}); });</script>"
                },
                {
                    "name": "IFR",
                    "targetTag": "<div id=\"adn-000000000000f527\" style=\"display:none\"></div>",
                    "insertionTag": "<script type=\"text/javascript\">window.adn = window.adn || {}; adn.calls = adn.calls || []; adn.calls.push(function() { adn.request({ auId: '000000000000f527', auW: 980, auH: 400, env: 'production' }); });</script>"
                }
            ]
        }
    ],
    "totalCount": 1
}
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

| Name | Restriction | Description |
| :--- | :--- | :--- |
| auId | String | The ad tag identifier. |
| auW | String | Width of the ad unit. |
| auH | String | Height of the ad unit. |
| tags | Array | An array including the tag object specified below |

### tags object

| Name | Restriction | Description |
| :--- | :--- | :--- |
| name | String | Name of the tag version \("COM" or "IFR"\). |
| targetTag | String | The div-element that the content will be loaded into by default. |
| insertionTag | String | The javascript that will make the ad request. |

