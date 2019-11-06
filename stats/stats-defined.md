# The Stats Defined

There are three families of stats recorded, each with some overlap: advertising stats, publishing stats and external ad unit stats.

Here's what is recorded in each stats family.

## Advertising Stats

Note: take [the deep dive on impression stats for more detailed information](impression-types.md) about them.

* **Impressions:** counts each time an ad is served by our Adnuntius ad server.
* **Rendered impressions:** counts each time an ad is rendered into a web page.
* **Visible impressions:** counts each time at least 1% of an ad is visible in a browser's viewport.
* **Visibility:** depending on how you've configured a setting on your network, visibility is visible impressions divided by impressions or visible impressions divided by rendered impressions.
* **Viewable impressions:** counts each time at least 50% of an ad is visible in a browser's viewport for at least one second.
* **Viewability:** depending on how you've configured a setting on your network, viewability is viewable impressions divided by impressions or viewable impressions divided by rendered impressions.
* **Unique users:** counts each unique user that has received an ad impression.
* **Clicks:** counts each time an ad has been clicked on.
* **CTR (click-through rate):** clicks divided by impressions.
* **eCPM (effective cost per mille):** the effective cost of an ad expressed as a CPM price. This applies even if clicks or actions are the cost basis for an ad rather than impressions.
* **Cost:** the actual cost of having delivered an ad.
* **Average Auction Rank:** the ad's ranking in an ad unit's auction results. If an ad is only ever delivered on ad units that serve only one ad at a time, this figure will only ever be 0 (meaning the ad has never been served) or 1 (meaning the ad has only ever been served in the primary position).
Average auction rank can be greater than 1 only when an ad is delivered via ad units that serve more than one ad at a time, which is when the ad unit's page size is greater than one. So if an ad has been delivering half the time in second place and half the time in third place on a particular ad unit, its average auction rank will be 2.5.

## Publishing Stats

Note: take [the deep dive on impression stats for more detailed information](impression-types.md) about them.

* **Requests:** counts each time an ad unit has received a request for an ad.
* **Positive Requests:** counts each time at least one ad has been delivered to an ad unit to fulfil an ad request.
* **Match rate:** positive requests divided by requests.
* **Impressions:** counts the number of ads delivered by an ad unit.
Note: this number can be greater than the number of requests when an ad unit can serve more than one ad at a time, which is when the ad unit's page size is greater than one. When this is the case, more than one ad can be delivered at a time, which means more than one impression can be delivered for a single ad request.
* **Rendered impressions:** counts each time an ad is rendered into a web page via the ad unit.
* **Visible impressions:** counts each time at least 1% of an ad is visible in a browser's viewport when delivered via the ad unit.
* **Viewable impressions:** counts each time at least 50% of an ad is visible in a browser's viewport for at least one second when delivered via the ad unit.
* **Viewability:** depending on how you've configured a setting on your network, viewability is viewable impressions divided by impressions or viewable impressions divided by rendered impressions.
* **Unique users:** counts each unique user that has received an ad impression. 
Note: this does not count the number of unique users who have requested an ad, only the number of unique users who have received an ad impression. Thus, the maximum number of unique users is equal to positive requests, not requests.
* **Clicks:** counts each time an ad has been clicked on when delivered by the ad unit.
* **CTR (click-through rate):** clicks divided by impressions.
* **eCPM (effective cost per mille):** the effective cost of the ads delivered by the ad unit expressed as a CPM price. This applies even if clicks or actions are the cost basis for an ad rather than impressions.
* **Earnings:** the actual earnings accumulated by delivering ads through an ad unit.
* **Revenue share:** the accumulated share of the earnings that belong to the publishing partner as defined in an associated earnings account. If no revenue share has been established or there is no earnings account associated with the ad unit, this figure will be 0.

## External Ad Unit Stats

External ad units obtain ads from external providers of ads, which is defined as an external demand source in Adnuntius and configured as part of your network.

* **Requests:** counts each time an ad request has been made to your external demand source via the external ad unit.
* **Wins:** counts each time an external ad has won an auction when delivered via the external ad unit.
* **Winning prices:** the accumulated price for each of the external ad impressions delivered via the external ad unit.
* **Losses:** counts each time an external ad has lost an auction when delivered via the external ad unit.
* **Losing prices:** the accumulated price for each of the external ad impressions that have lost an auction when attempting to be delivered by the ad unit. 
* **No bids:** counts each time there have been no bids made by the external demand source to deliver an ad via the external ad unit.
* **Highest Winning CPM:** the highest CPM of an external ad that was delivered via the external ad unit.
* **Passbacks:** counts each time the Adnuntius ad server detects that the external demand source has returned a passback tag and has therefore ignored the response.
* **Timeouts:** counts each time the external demand source wasn't able to respond quickly enough to the Adnuntius ad server request for an ad.
* **Errors:** counts each time the Adnuntius ad request to the external demand source fails or the external demand source responds with an error code of their own.

Note: the number of requests should equal the number of wins, losses, passbacks, timeouts and errors.
