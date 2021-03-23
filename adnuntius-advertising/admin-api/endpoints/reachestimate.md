---
description: >-
  Reach estimates will tell you if a line item will be able to deliver or not as
  well as estimate the number of impressions it can get during the time it is
  active.
---

# /reachestimate

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
| numSamples | Number of samples that were used to derive the reach estimate. |
| matchedSamples | Number of samples that matched the provided targeting |
| totalTraffic. | The maximum amount of traffic, regardless of targeting. |
| reach | The estimated number of impressions that the targeting will match. |
| reachUpperBound | An upper limit for the estimated number of impressions the targeting will match. |
| reachLowerBound | A lower limit for the estimated number of impressions the targeting will match. |
| competitors | A list of line-items that also compete against impressions that match the provided targeting. |
| uncontestedReach | The estimation of number of impressions that match the provided targeting and that are not allocated to existing line-items. |
| uncontestedReachUpperBound | Upper limit for the uncontested reach estimate. |
| uncontestedReachLowerBound | Lower limit for the uncontested reach estimate. |
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

