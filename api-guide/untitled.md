# HTTP Request

## HTTP Requests

### Usage

We offer support for HTTP request to our delivery server. This will allow you to request ads from your server.

```text
POST https://delivery.adnuntius.com/i{{params}}
```

The parameters for the above request are as follows:

| Parameter | Example value | Description |
| :--- | :--- | :--- |
| tzo | -120 \(number\) | Timezone, offset from UTC in minutes. |
| userId | ab123456789 \(string\) | The universal session identifier used to identify what user session being dealt with, thereby enabling segment targeting and rate limiting. |
| sessionId | ab123456789 \(string\) | A unique identifier to identify which session the user's in. |
| tt | composed | allows you to send requests for multiple adunits using a post body described below. |
| auid | ab123456789 \(string\) | If tt \(composed ad call\) is not used you can send a request for a single adunit. |
| format | json \(string\) | Will return the ad as a JSON format. |

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
| auid | ab123456789 \(string\) | The ad unit tag id in question. |
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

