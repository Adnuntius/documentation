# Open RTB

Adnuntius provides limited support for requesting ads using the [version 2.5 of the OpenRTB protocol](https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-5-FINAL.pdf).

---

**Note**: Please contact Adnuntius if you intend to use this functionality, as your account will require some additional configuration.

---

## Requests

OpenRTB Requests are sent to: `https://delivery.adnuntius.com/rtb`

An example request looks like this:

```json
{
  "id": "123457893528",
  "at": 2,
  "bcat": ["IAB1-1"],
  "badv": ["uggs.com", "acme.co"],
  "imp": [
    {
      "id": 1,
      "tagid": "ab45ef1",
      "bidfloor": 0.0,
      "bidfloorcur": "USD",
      "banner": {
        "w": 728,
        "h": 90
      }
    }
  ],
  "site": {
    "id": 54739,
    "name": "The Age",
    "domain": "theage.com.au",
    "page": "https://theage.com.au/sport/",
    "cat": ["IAB12"],
    "keywords": ["sport", "news"],
    "publisher": {
      "id": 987035487,
      "name": "Nine Entertainment Co",
      "domain": "www.nineforbrands.com.au",
      "cat": ["IAB1"]
    }
  },
  "device": {
    "ua": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:15.0) Gecko/20100101 Firefox/15.0.1",
    "ip": "203.0.113.128"
  },
  "user": {
    "id": "1kjh3429kjh295jkl"
  }
}
```

The table below provides further information about *some* of the fields in the request.

| Field | Description |
| ----- | ----------- |
| `id`  | A unique identifier for the request |
| `bcat` | A list of blocked categories (using version 1.0 of the IAB Content Taxonomy). For this blocking to work, the Advertiser in Adnuntius must specify an IAB category |
| `badv` | A list of blocked advertiser domains. For this blocking to work, the Advertiser in Adnuntius must specify an advertiser URL |
| `imp.tagId` | The Adnuntius Ad Unit tag for the request |
| `imp.banner.w` | The ad unit width |
| `imp.banner.h` | The ad unit height |
| `site.domain` | The site domain. Advertisers can use this to target or block specific domains |
| `site.cat` | The site categories. Advertisers can use this to target or block specific categories |
| `site.keywords` | The site keywords. Advertisers can use this to target or block specific keywords |
| `device.au` | User Agent string. Advertisers can use this to target device types and operating systems etc. |
| `device.ip` | Ip address. Advertisers can use this for location targeting |

## Response

An example response looks like this:

```json
{
  "id": "12dcb8df-4f84-4965-ba8f-726cfd3df487",
  "bidid": "f7dc923428a3a86259960e27fcd60776"
  "cur": "USD",
  "seatbid": [
    {
      "bid": [
        {
          "adid": "e8669e93-622f-4655-b5b8-77f2f5ce7748",
          "price": 0.01,
          "adm": "<!DOCTYPE html>\n<html>\n<head>\n<meta charset=\"utf-8\">\n</head>\n<body>\n<div>\n<a href=\"https://delivery.adnuntius.com/c/ABGYTRkjhgjkhi789675654hgfh8JHGHGJG?ct=84&r={CLICK_URL_ESC}http%3A%2F%2Fwww.example.com%2Fboard\"><img src=\"https://assets.adnuntius.com/cdn/b055gUPRpZh_dLTPWKnO_dv7xTr-Bu1fRRvla4PTXLg.png\" width=\"728\" height=\"90\" style=\"width:728px; height:90px\"/></a></div>\n<iframe src=\"https://delivery.adnuntius.com/b/ABGYTRkjhgjkhi789675654hgfh8JHGHGJG.html?wp={WINNING_PRICE}\" scrolling=\"no\" frameborder=\"0\" width=\"1\" height=\"1\" style=\"position:absolute;top:-10000px;left:-100000px;\"></iframe>\n</body>\n</html>",
          "impid": "1",
          "id": "dd797ea3c02088418d5ad594416221cd"
        }
      ],
      "seat": "1c789427-f307-4d79-84c0-4107ccac9dfc"
    }
  ]
}
```

The table below provides further information about *some* of the fields in the response.


| Field | Description |
| ----- | ----------- |
| `id`  | A unique identifier for the request |


