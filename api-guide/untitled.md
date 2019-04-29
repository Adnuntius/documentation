# HTTP Delivery API

## HTTP Requests

### Usage

We provide an HTTP API for requesting ads from our delivery server. An example usage of this API is for server-side fetching of ads.

```text
POST https://delivery.adnuntius.com/i{{params}}
```

The parameters for the above request are as follows:

| Parameter | Required? | Example value(s) | Default Value | Description |
| :--- | :--- | :--- |  :--- |  :--- | 
| auId | Yes, unless making a POST request (see below) | ab123456789 \(string\) | None | The Ad Unit to fetch ads from |
| tzo | No |-120 \(number\) | 0 | Timezone, offset from UTC in minutes |
| userId | No |ab123456789 \(string\) | If not provided, this value will be read from the Adnuntius cookie | Identifies a unique user; used for segment targeting, rate limiting, and unique user counting |
| siteId | No |ab123456789 \(string\) | None | A unique identifier for the site where the ad will be shown. This will be used, if required by your DMP, for segment targeting  |
| tt | No |composed | None | allows you to send requests for multiple adunits using a post body described below |
| format | No |html, xml, json, image, email \(string\) | html | Specifies the format of the returned ads |

### Post Body

```text
{
    "adUnits":[
        {
            "auId":"0000000000017d97",
            "targetId":"adn-0000000000017d97"
        },
        {
            "auId":"0000000000017d93",
            "targetId":"adn-0000000000017d93"
        }
    ]
}
```

#### Description for post body

| Parameter | Example value | Description |
| :--- | :--- | :--- |
| adUnits | - | An array of objects for the adunits that you wish to request. |
| auId | ab123456789 \(string\) | The ad unit tag id in question. |
| targetId | adn-123456789 \(string\) | The id of the HTML element you wish your ad to be placed in. |

### Example request a single ad unit

```text
GET http://delivery.adnuntius.com/i?tzo=-120&auId=0000000000017d95&userId=jia8lpi4wzw7qsof&sessionId=jia8lpi319r05b4f
```

### Example request multiple ad units

```text
POST http://delivery.adnuntius.com/i?tzo=-120&auId=0000000000017d95&userId=jia8lpi4wzw7qsof&sessionId=jia8lpi319r05b4f&tt=composed
```

#### Post body

```text
{
    "adUnits":[
        {
            "auId":"0000000000017d97",
            "targetId":"adn-0000000000017d97"
        },
        {
            "auId":"0000000000017d93",
            "targetId":"adn-0000000000017d93"
        }
    ]
}
```

