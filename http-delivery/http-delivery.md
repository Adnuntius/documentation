# HTTP delivery

## Basic request

In Adnuntius ad server you will always have the possibility to deliver ads doing a HTTP request to a URL to get the information about the line item and creative that will be served. the most basic request to the ad server without user information or targeting information looks like this:

```http
http://delivery.adnuntius.com/i?auId=0000000000000000
```

You will have to replace the `auId` with your own ad unit Id. in addition to your auId you can provide additional parameters:

| Parameter | Example value | Description |
| :--- | :--- | :--- |
| tzo | -120  | Timezone, offset from UTC in minutes. |
| userId | ab123456789  | The universal session identifier used to identify what user session being dealt with, thereby enabling segment targeting and rate limiting. |
| sessionId | ab123456789  | A unique identifier to identify which session the user's in. |
| tt | composed, vast2  | allows you to send requests for multiple adunits using a post body described below. |
| auId | ab123456789  | If tt \(composed ad call\) is not used you can send a request for a single adunit. |
| format | json, email, xml | Will return the ad as the format you have specified |

## Example Targeting

you can send information in the delivery request that will send a set of targeting parameters to the ad server so you can specify where the line items or creatives will end up.

### Key valye targeting

Key values can be sent to the ad server through HTTP like this:

```http
http://delivery.adnuntius.com/i?tzo=-120&auId=00000000000481f7&kv=%5B%7B%22myKey%22%3A%5B%22myValue1%22%2C%22myValue2%22%5D%7D%5D
```

The `kv=` will be a URL encoded Json of what you wish to send. In the above case it's this:

```javascript
kv: [{'myKey': ['myValue1', 'myValue2']}]
```

Category Targeting

Category targeting can be sent to the adserver using the `c=` parameter.

```http
&c=category1&c=sport%2Fbasketball&c=politics
```

Woud be the equivalent of sending this in the ad request:

```javascript
c: ['category1', 'sport/basketball', 'politics']
```

the content of the category should be URL encoded.

