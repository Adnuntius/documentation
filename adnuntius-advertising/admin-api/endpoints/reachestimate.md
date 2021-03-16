---
description: >-
  Reach estimates will tell you if a line item will be able to deliver or not as
  well as estimate the number of impressions it can get during the time it is
  active.
---

# /reachestimate

## GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/reachestimate?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true` as a parameter to the `GET` query

## POST

**Example POST object:**

```javascript
{
	"targeting": {
		"adUnitTarget": {
			"adUnits": [],
			"negated": false
		},
		"siteTarget": {
			"sites": ["<site-ID>"],
			"negated": false
		},
		"siteGroupTarget": {
			"siteGroups": []
		},
		"userSegmentTargets": [],
		"namedLocationTarget": {
			"locations": [],
			"negated": false
		},
		"deviceTargets": [],
		"dateTarget": {
			"dateRanges": [],
			"timeZoneSetting": "USER"
		},
		"adUnitMatchingLabelTargets": [],
		"categoryTargets": [],
		"keywordTargets": [],
		"keyValueTargets": [],
		"retargetingTargets": [],
		"dayPartingTargets": [],
		"domainNameTarget": {
			"names": [],
			"negated": false
		},
		"ipAddressTarget": {
			"addresses": []
		}
	},
	"dimensions": [
		[
			980,
			240
		],
		[
			980,
			120
		]
	],
	"startDate": "2021-03-15T23:00:00.000Z",
	"endDate": "2021-03-23T22:59:59.999Z",
	"modStartDate": "2021-03-15T23:00:00.000Z",
	"modEndDate": "2021-03-23T22:59:59.999Z",
	"cpm": {
		"currency": "NOK",
		"amount": 100
	},
	"tier": "<tier-ID>"
}

```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| targeting |  | [targeting object](../targeting-object.md) | A list of targeting options to run your reach estimation against. |
| dimensions | Yes | Array | An array of size arrays of the sizes of the line item you wish to run a reach estimation for. |
| startDate | Yes | Date String | The start date of the reach estimate. |
| endDate | Yes | Date String | The end date for the reach estimate. |
| cpm | Yes | Array | Labels used for line item targeting. |
| tier | Yes | String | The id of the tier you wish to run the estimate against. |

### Example responses object. 

```javascript
{
	"numSamples": 60449,
	"matchedSamples": 0,
	"totalTraffic": 1630297,
	"reach": 0,
	"reachUpperBound": 54,
	"reachLowerBound": 0,
	"competitors": {},
	"uncontestedReach": 0,
	"uncontestedReachUpperBound": 54,
	"uncontestedReachLowerBound": 0,
	"clickReach": 0,
	"clickReachUpperBound": 54,
	"clickReachLowerBound": 0,
	"visibleReach": 0,
	"visibleReachUpperBound": 54,
	"visibleReachLowerBound": 0,
	"viewableReach": 0,
	"viewableReachUpperBound": 54,
	"viewableReachLowerBound": 0,
	"renderedReach": 0,
	"renderedReachUpperBound": 54,
	"renderedReachLowerBound": 0
}
```

| Name | Description |
| :--- | :--- |
| numSamples | Number of samples that was emulated. |
| matchedSamples |  |
| totalTraffic. | The maximum amount of traffic. |
| reach | The estimation of the impressions the Lineitem will get. |
| reachUpperBound | The highest amount of impressions the estimate will deliver. |
| reachLowerBound | The lowest amount of impressions the esimate will deliver. |
| competitors | A list of the competitors that were encountered during the estimation. |
| uncontestedReach | The estimation of impressions that are uncontested. |
| uncontestedReachUpperBound | The highest amount of impressions that are uncontested. |
| uncontestedReachLowerBound | The lowest amount of impressions that are uncontested. |
| clickReach | An estimation of clicks. |
| clickReachUpperBound | The highest amount of clicks estimated. |
| clickReachLowerBound | The lowest amount of clicks estimated. |
| visibleReach | An estimation of visible impressions. |
| visibleReachUpperBound | The highest amount of visible imressions estimated. |
| visibleReachLowerBound | The lowest amount of visible impressions estimated. |
| viewableReach | An estimation of viewable impressions. |
| viewableReachUpperBound | The highest amount of viewable imressions estimated. |
| viewableReachLowerBound | The lowest amount of viewable impressions estimated. |
| renderedReach | An estimation of rendered impressions. |
| renderedReachUpperBound | The highest amount of rendered imressions estimated. |
| renderedReachLowerBound | The lowest amount of rendered impressions estimated. |

