---
description: >-
  Publishing queries are reports you can run to get an overview of all earnings
  accounts, sites or ad units that have been running in your chosen time period.
---

# Publishing Queries

{% embed url="https://youtu.be/OnOl6-FTdn0" caption="How to run a site query." %}

You can apply multiple filters to get the data you want. For example: if you have added labels to earnings accounts, sites or ad units, then you can filter by these labels to single out certain items in your reports.

![Publishing query example - in this case an ad unit query.](../../../.gitbook/assets/201811-reports-publishing-query.png)

**Metrics**: Here are the metrics returned by a query, and what they mean.

* Request: An ad tag has sent a request to the Adnuntius adserver for an ad. 
* Positive request: The Adnuntius adserver has responded to the request with one or more ads. 
* Match rate: The share of requests that return one or more ads.
* Impression: An ad has been delivered by the Adnuntius adserver. Please note that the number of ad impressions may be higher than positive requests; this is because an ad unit can show more than one ad.
* Rendered Impression: An ad has been rendered onto a page.
* Visibles: An ad has shown one or more pixels in the viewport.
* Visibility: The share of impressions that were visible.
* Viewables: Ad ad has 50% or more of its pixels shown in the viewport for 1 second or longer.
* Viewability: The share of impressions that were viewable.
* Uniques: Unique users \(browsers\).
* Clicks: Clicks on an ad.
* CTR: Clickrate, meaning the share of impressions that produce a click.
* eCPM: \(effective\) cost per thousand ad impressions, calculated as \[Cost\] / \[Impressions\] x 1000.
* Cost: The revenue generated over the period.
* Revenue share: Revenue share to partners as specified in [earnings accounts](../inventory/earnings-accounts.md).

