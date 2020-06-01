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
| `bcat` | A list of blocked categories (using version 1.0 of the IAB Content Taxonomy). For this blocking to work, the Advertiser in Adnuntius must be tagged with an IAB category |



