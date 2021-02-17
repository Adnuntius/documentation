# /lineitems

### GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of this documentation.

Example get request:

```http
GET https://api.adnuntius.com/api/v1/lineitems?context=<context>&orderByDirection=ASCENDING
```

### POST

```json
{
  "bidSpecification": {
    "cpm": {
      "amount": 123.456,
      "currency": "USD"
    },
    "defaultBidCpc": {
      "amount": 99.999,
      "currency": "EUR"
    },
    "cpa": {
      "cost": {
        "amount": 10.1,
        "currency": "AUD"
      },
      "initialECpm": {
        "amount": 1.5,
        "currency": "AUD"
      },
      "lookBackHours": 10,
      "customEventType": "custom_event"
    }
  },
  "companionAds": true,
  "endDate": null,
  "extended": false,
  "labels": [
    "Hooley",
    "Dooley"
  ],
  "name": "My Line Item",
  "notes": [
    {
      "id": "note_1"
    }
  ],
  "objectives": {
    "IMPRESSION": 32000,
    "CLICK": 1000,
    "VIEWABLE_IMPRESSION": 15000,
    "RENDERED_IMPRESSION": 100
  },
  "objectState": "HIDDEN",
  "order": {
    "id": "order_1"
  },
  "tier": {
    "id": "tier_1"
  },
  "rateLimits": [
    {
      "amount": 10000,
      "periodType": "DAYS",
      "scope": "PER_USER",
      "type": "IMPRESSION"
    },
    {
      "amount": 1000000,
      "periodType": "WEEKS",
      "scope": "GLOBAL",
      "type": "IMPRESSION"
    }
  ],
  "targeting": {},
  "sponsorshipPercentage": 12.45,
  "type": "SPONSORSHIP",
  "deduplicationLevel": "LINE_ITEM",
  "startDate": "2015-03-13T11:15:00Z"
}
```

| Name | Type | Description |
| :--- | :--- | :--- |
| bidSpecification | Object | See [bidSpecification](http://docs.adnuntius.com/api/advertising/line-item#bidSpecification) below. |
| companionAds | Boolean | set as true or false, described in the [line-item](http://docs.adnuntius.com/userguide/advertising/line-items) section |
| endDate |  |  |
| extended |  |  |
| labels |  |  |
| name |  |  |
| notes |  |  |
| objectives |  |  |
| objectState |  |  |
| order |  |  |
| tier |  |  |
| rateLimits |  |  |
| targeting |  |  |
| sponsorshipPercentage |  |  |
| type |  |  |
| deduplicationLevel |  |  |
| startDate |  |  |

