# /deliveryestimates

A delivery estimate uses historical data about the traffic and line items on a network to determine whether another line item might be able to compete with those line items and still meet its objectives if it were to be booked on that network in a given time period. This is a faster and less accurate alternative to using the forecasts endpoint to perform auction simulations, because among other things it does not consider seasonality, rate control, creative targeting, or any auction ranking factors such as tiers and cost.

**The following example calls the python api wrapper with the minimum information required to estimate a new line item:**

```python
 api.deliveryestimate.run({
   'startDate': '2018-08-08T08:08:08Z',
   'endDate': '2018-08-18T18:18:18Z',
   'objectives': {
       'IMPRESSION': 888
   }
 })
```

**The returned json will have the following format:**

```json
  {
     "prediction": "FAILURE",
     "available": {
          "IMPRESSION": -500
     },
     "allocations": {
          "IMPRESSION": [ ... ]
     }
 }
```

This indicates that it is estimated that another 500 impressions would be needed on the network in order for a new line item to successfully meet the objective of 888 impressions in that period. If instead the estimate returned a prediction of SUCCESS, the value of available would reflect the excess of impressions available once the line item had met its objective, however if the required number of impressions is within 10% of the expected number of impressions then a status of UNSURE will be returned instead. In addition to the above endpoint, which expects a json object describing a new line item, it is also possible to perform an estimate on an already saved line item using the deliveryestimate/{id} endpoint.

All of the objective types it is possible to set on a line item are supported, and more than one objective type can be set. We estimate objectives other than IMPRESSION by observing the historical relative frequency of that event type for the relevant ad units, and scaling our forecast by that ratio. Everything that was said about impressions above applies to these other event types, for example there will be a listing of the amount of CLICKs in the available and allocations section of the JSON response if a click objective is set. If multiple objectives are set then the prediction will be based on the best case from all those objectives, i.e. based off the first one to be met.

**Targeting information can be included with the request in the same format as targeting information on a line item:**

```json
...
"targeting": {
    "adUnitMatchingLabelTargets": [
        {"matchingLabels": ["topbanner", "bottombanner"]}, 
        {"matchingLabels": ["middle"]}
    ],
    "userSegmentTargets": { "userSegments": [{"id": "segment2"}]}
}
...
```

* Available shows the amount of traffic expected to match this target, and overlap shows a set of other targets which typically match on the same traffic as this target, these are considered to be competing for events and so the more overlaps there are the lower the available events will be. In this case the only thing overlapping the target is itself.
* Objective shows how many events need to match this target in order for the estimate to meet its objective, this is based off historical data about how many events typically match similar targets on this network. Also shown are the identities and objectives of other line items competing for this target, these objectives are derived from their overall objectives and scaled down to the proportion of time the line item will be running while the estimate is also running and with the events from other targets that that line item will match removed, so this represents the number of events that line item requires before the estimate considers it removed by rate control.
* Finally, required shows the number of events that need to match the target in order for the estimate to meet its objective and be SUCCESSful, and used shows the number of events needed for everything competing for this target to meet their objectives in this period \(just because the estimate is successful doesn't mean the other competitors need to be, the competition from the estimate item may have even have been enough to make them unsuccessful in meeting their objectives for this period\).

| name | data type | description |
| :--- | :--- | :--- |
| startDate | number | An ISO 8601 date and time at which this line item should start delivering. Cannot be historic dates. If past date is specified current date will be used. |
| endDate | number | An ISO 8601 date and time at which this line item should stop delivering. Must be more than one hour from start date. |
| teamId | string | An optional name of a team to assign the line item to in order to restrict the AdUnits it is eligible to run on to. if not present the forecast will run on all ad units. |
| excludeId | string | An optional name of a line item to exclude from competing against the estimate. This is useful if these parameters represent a potential new state for an existing line item. |
| targeting | Targeting | The line item will be run as if all of this targeting had been applied to it \(there is no creative targeting for delivery estimates\). If none present the forecast will run on all targets. |
| objectives | map of number | Any type or combination of objectives is acceptable here, the estimate will run until all of these are met, without considering the effects of rate control. |

