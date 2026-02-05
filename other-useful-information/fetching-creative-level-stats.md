---
description: >-
  This page will guide you how to fetch stats per creative and ad unit level and
  connect it up with additional information about the creative.
---

# Fetching creative level stats

### Fetching stats

First you will have to fetch stats for the ad units. You can do it with a request that looks like this:

```hurl
GET https://api.adnuntius.com/api/v1/stats/
?context=NETWORK_ID
&auth_token=AUTH_TOKEN/API_KEY
&aggregateTo=AD_UNIT
&all=adUnit
&currency=NOK
&groupBy=CREATIVE
&includeAll=false
&includeChunkRange=true
&showFilteredBidReasons=true
&startDate=2026-02-05T10:00:00.000Z
&endDate=2026-02-05T16:30:00.000Z
```

That will fetch all ad units that a creative has served on. You can read more about our stats API here: [stats.md](../adnuntius-advertising/admin-api/endpoints/stats.md "mention")

The important thing is that you get the creative ID in order to fetch the rest of the informatoin from the creatives info endpoint. Once you have a list of creative IDs you will have to use the creatives info endpoint:

<pre class="language-hurl"><code class="lang-hurl"><strong>GET https://api.adnuntius.com/api/v1/creatives/info
</strong><strong>?id=id1;id2;id3
</strong></code></pre>

You can send all the id's that you have gathered from the top request but you will have to separate them with a semi colon.

This will return all information about the advertiser, order, line item, political status of the creative etc. In order to match the stats you will have to do some development to match the two requests, but it's a convenient way to fetch the stats for creatives.
