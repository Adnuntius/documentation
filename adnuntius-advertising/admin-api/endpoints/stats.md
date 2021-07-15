# /stats

This endpoint is for getting a list of selected items and the stats associated with them.

## Example GET request

```http
https://api.adnuntius.com/api/v1/stats/
    ?context=<networkId>
    &advObjectLabel=
    &auth_token=f92LGtCLx1TA6vrLQ6UfaDz_5w_P...
    &startDate=2020-02-02T23:00:00.000Z
    &endDate=2020-02-10T14:00:00.000Z
    &all=lineItem
    &groupBy=LINE_ITEM
    &includeAll=false
    &includeChunkRange=true
    &aggregateTo=ORDER
```

<table>
  <thead>
    <tr>
      <th style="text-align:left">Parameter</th>
      <th style="text-align:left">Scope</th>
      <th style="text-align:left">Value</th>
      <th style="text-align:left">Function</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">context</td>
      <td style="text-align:left">required</td>
      <td style="text-align:left">String</td>
      <td style="text-align:left">Network to get information from</td>
    </tr>
    <tr>
      <td style="text-align:left">auth_token</td>
      <td style="text-align:left">required</td>
      <td style="text-align:left">String</td>
      <td style="text-align:left">Authorization</td>
    </tr>
    <tr>
      <td style="text-align:left">startDate</td>
      <td style="text-align:left">required</td>
      <td style="text-align:left">
        <p>Date in UTC</p>
        <p>(2020-01-01T23:00:00:00.000Z)</p>
      </td>
      <td style="text-align:left">Start date of the report</td>
    </tr>
    <tr>
      <td style="text-align:left">endDate</td>
      <td style="text-align:left">required</td>
      <td style="text-align:left">
        <p>Date in UTC</p>
        <p>(2020-01-01T23:00:00:00.000Z)</p>
      </td>
      <td style="text-align:left">End date of the report</td>
    </tr>
    <tr>
      <td style="text-align:left">all</td>
      <td style="text-align:left">optional</td>
      <td style="text-align:left">lineItem, order, creative, advertiser</td>
      <td style="text-align:left">Selects the endpoint for which to get the data.</td>
    </tr>
    <tr>
      <td style="text-align:left">groupBy</td>
      <td style="text-align:left">optional</td>
      <td style="text-align:left">ORDER, LINE_ITEM, ADVERTISER</td>
      <td style="text-align:left">Defines how to group the &quot;chunks&quot;</td>
    </tr>
    <tr>
      <td style="text-align:left">includeAll</td>
      <td style="text-align:left">optional</td>
      <td style="text-align:left">Boolean</td>
      <td style="text-align:left">Weather or not to show items that has 0 impressions.</td>
    </tr>
    <tr>
      <td style="text-align:left">includeChunkRange</td>
      <td style="text-align:left">optional</td>
      <td style="text-align:left">boolean</td>
      <td style="text-align:left">Includes all the dates even if there are no stats on those dates</td>
    </tr>
    <tr>
      <td style="text-align:left">aggregateTo</td>
      <td style="text-align:left">optional</td>
      <td style="text-align:left">ORDER, LINE_ITEM, ADVERTISER</td>
      <td style="text-align:left">Determine what chunks should be in the response.</td>
    </tr>
  </tbody>
</table>

### Example request

```javascript
/stats
    ?auth_token=PDXS2YodiUqV0ur...
    &aggregateTo=LINE_ITEM
    &all=lineItem
    &context=<networkId>
    &endDate=2021-07-15T22:00:00.000Z
    &startDate=2021-07-14T22:00:00.000Z
    &groupBy=ORDER
    &includeChunkRange=true
    &includeAll=true
```

### Example Response

```javascript
{
    "chunks": [
        {
            "order": {
                "id": "lkvk7qf1y9y...",
                "name": "Testorder",
                "labels": [
                    "car"
                ],
                "source": "DIRECT",
                "url": "/api/v1/orders/lkvk7qf1y9y..."
            },
            "chunks": [
                {
                    "ctr": 0.0,
                    "viewability": 0.0,
                    "cost": {
                        "currency": "NOK",
                        "amount": 0
                    },
                    "visibility": 0.0,
                    "viewables": 0,
                    "lineItem": {
                        "id": "8z6bvgphm...",
                        "name": "TestLineitem1",
                        "labels": [],
                        "source": "DIRECT",
                        "url": "/api/v1/lineitems/8z6bvgphm..."
                    },
                    "averageAuctionRank": 0.0,
                    "impressionsPerUniqueUser": 0.0,
                    "impressions": 0,
                    "visibles": 0,
                    "rendered": 0,
                    "eCpm": {
                        "currency": "NOK",
                        "amount": 0
                    },
                    "uniqueUsers": 0,
                    "clicks": 0
                }
            ],
            "totals": {
                "ctr": 0.0,
                "viewability": 0.0,
                "cost": {
                    "currency": "NOK",
                    "amount": 0
                },
                "visibility": 0.0,
                "viewables": 0,
                "averageAuctionRank": 0.0,
                "impressionsPerUniqueUser": 0.0,
                "impressions": 0,
                "visibles": 0,
                "rendered": 0,
                "eCpm": {
                    "currency": "NOK",
                    "amount": 0
                },
                "uniqueUsers": 0,
                "clicks": 0
            }
        }
	]
}
```

| Key | Value | Description |
| :--- | :--- | :--- |
| chunks | Array | An array of the data for the selected scope. |
| totals | Object | The aggregated totals for selected scope. |
| ctr | Percentage | Click through rate |
| viewability | Percentage | The percentage of impressions being more than one second in screen. |
| cost | Number | the total cost of the scope between selected dates. |
| visibility | Percentage | Percentage of impressions that has been in screen. |
| viewables | Number | Number of impressions that have been in screen. |
| lineItem | Object | The Object containing line item information. |
| averageAuctionRank | Number | The average auction rank of the selected scope. \(The average placement if ad unit can hold more than one ad.\) |
| impressionsPerUniqueUser | Number | Number of impressions a unique user makes. |
| impressions | Number | Total amount of impressions |
| visibles | Number | Number of impressions that has been in screen. |
| rendered | Number | Number of impressions rendered in the browser. |
| eCpm | Number | Effective cost per thousand impressions. |
| currency | String | Currency |
| amount | Number | Amount of cost  |
| uniqueUsers | Number | Number of users that have seen the ad. |
| clicks | Number | The number of clicks on the ad. |

