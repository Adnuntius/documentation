# /stats

This endpoint is for getting a list of selected items and the stats associated with them.

## Example GET request

```text
https://api.adnuntius.com/api/v1/stats/
?advObjectLabel=
&all=lineItem
&auth_token=f92LGtCLx1TA6vrLQ6UfaDz_5w_P...
&context=my_network_id
&groupBy=LINE_ITEM
&includeAll=false
&startDate=2020-02-02T23:00:00.000Z
&endDate=2020-02-10T14:00:00.000Z
```

<table>
  <thead>
    <tr>
      <th style="text-align:left">Parameter</th>
      <th style="text-align:left">Value</th>
      <th style="text-align:left">Function</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">auth_token</td>
      <td style="text-align:left">String</td>
      <td style="text-align:left">Authorization</td>
    </tr>
    <tr>
      <td style="text-align:left">advObjectLabel</td>
      <td style="text-align:left">String</td>
      <td style="text-align:left">Filter result on labels.</td>
    </tr>
    <tr>
      <td style="text-align:left">all</td>
      <td style="text-align:left">lineItem, order, creative, advertiser</td>
      <td style="text-align:left">Selects the endpoint for which to get the data.</td>
    </tr>
    <tr>
      <td style="text-align:left">context</td>
      <td style="text-align:left">String</td>
      <td style="text-align:left">Network to get information from</td>
    </tr>
    <tr>
      <td style="text-align:left">groupBy</td>
      <td style="text-align:left">ORDER, LINE_ITEM, ADVERTISER</td>
      <td style="text-align:left">Defines how to group the &quot;chunks&quot;</td>
    </tr>
    <tr>
      <td style="text-align:left">includeAll</td>
      <td style="text-align:left">Boolean</td>
      <td style="text-align:left">Weather or not to show items that has 0 impressions.</td>
    </tr>
    <tr>
      <td style="text-align:left">startDate</td>
      <td style="text-align:left">
        <p>Date in UTC</p>
        <p>(2020-01-01T23:00:00:00.000Z)</p>
      </td>
      <td style="text-align:left">Start date of the report</td>
    </tr>
    <tr>
      <td style="text-align:left">endDate</td>
      <td style="text-align:left">
        <p>Date in UTC</p>
        <p>(2020-01-01T23:00:00:00.000Z)</p>
      </td>
      <td style="text-align:left">End date of the report</td>
    </tr>
  </tbody>
</table>

## Example Response

```text
{
    "chunks": [
        {
            "ctr": 0.0027049521431543903,
            "viewability": 0.9822444167013455,
            "cost": {
                "currency": "NOK",
                "amount": 0
            },
            "visibility": 0.9970176168678041,
            "viewables": 14162,
            "order": {
                "id": "xxxxxxx",
                "name": "NAME",
                "labels": [

                ],
                "url": "/api/v1/orders/xxxxxxxx"
            },
            "averageAuctionRank": 1.0,
            "impressions": 14418,
            "visibles": 14375,
            "rendered": 14376,
            "eCpm": {
                "currency": "NOK",
                "amount": 0
            },
            "uniqueUsers": 373,
            "clicks": 39
        },
        {
            "ctr": 0.0,
            "viewability": 0.5151515151515151,
            "cost": {
                "currency": "NOK",
                "amount": 0
            },
            "visibility": 0.6363636363636364,
            "viewables": 34,
            "order": {
                "id": "xxxxxxxx",
                "name": "NAME",
                "labels": [

                ],
                "url": "/api/v1/orders/xxxxxxxx"
            },
            "averageAuctionRank": 1.0,
            "impressions": 66,
            "visibles": 42,
            "rendered": 66,
            "eCpm": {
                "currency": "NOK",
                "amount": 0
            },
            "uniqueUsers": 36,
            "clicks": 0
        },
    ],
    "totals": {
        "ctr": 1.9391943710817328E-4,
        "viewability": 0.5533693397939783,
        "cost": {
            "currency": "NOK",
            "amount": 6392.7323101
        },
        "visibility": 0.6624834282287482,
        "viewables": 1326926,
        "averageAuctionRank": 1.0,
        "impressions": 2397903,
        "visibles": 1588571,
        "rendered": 2381199,
        "eCpm": {
            "currency": "NOK",
            "amount": 2.66
        },
        "uniqueUsers": 156971,
        "clicks": 465
    }
}
```

