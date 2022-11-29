---
description: General FAQ
---

# FAQs

## Can ads be loaded synchronously or asynchronously?

Either is possible. Nevertheless, you should always try to load your ads asynchronously, which is the default method for loading ads and has many advantages.

If, however, you have ads that must be loaded synchronously, you can do so with specific requests to the ad server that enable synchronous ad loading.

## What is the difference between a standard and basic ad tag?

The standard ad tag uses some advanced JavaScript to load and distribute ads throughout the page, but which can have mixed results on versions of Internet Explorer older than version 9.

The basic ad tag loads an ad directly into an IFrame, is simpler all round and is supported by even the versions of Internet Explorer older than version 9.

## Can ads be loaded within an IFrame and directly into the publisher's page?

Yes, we support both options. By default, ads are loaded inside an IFrame. If you would prefer to load an ad directly into the page, we can also do that by ad unit, ad or layout.

## How many sizes can we run on an ad unit?

Our ad unit sizes are based on minimum and maximum dimensions. This means any size between the minimum and maximum dimensions are supported. So if you set up an ad unit as 100x100 to 300x300, any ad size between those dimensions can be shown, e.g. 123x291, 300x100, 123x234. Once the ad is displayed in your page, by default we resize the ad slot to fit whatever ad size is served.

## Can reports be sent automatically to customers?

We support system-generated reports being sent out to any email recipients.

## How does creative weighting "Clicks" work?

When you set creative weighting to "Clicks" then your line item will increase the impressions for the creatives that show a higher clickrate.

All creatives start with an assumed click rate of 1 click per 1000 impressions. As clicks are registered the system will use machine learning to adjust the predicted click rate. In simple terms, this means that it must gather enough evidence to change the click rate. If the difference between the true click rate and the estimated click rate is large, then the estimated click rate will be revised quickly.

For example, if we start with an estimated click rate of 1000 impressions per click, but then receive 3 clicks each after only 100 impressions, then we will quickly adjust the estimated click rate down. But, if we instead started receiving clicks after 950 impressions on average, then it will take much longer for the system to revise the original estimate from 1000 down to 950.

Once Adnuntius has different clickrates estimated for the creatives, we assume that each creative is following a [Poisson distribution](https://en.wikipedia.org/wiki/Poisson\_distribution) and draw a random sample for each creative based upon their currently estimated click rates. The creative with the highest sample value is then selected as the winner. This means that it is not a "winner takes all" approach. When two creatives have very similar estimated click rates, both will get display frequently, but the one with the higher estimated click rate will be shown slightly more.

Also, we completely ignore the estimated click rates 5% of time time and instead just assume equally weighting. This ensures that poorly performing creatives are occasionally given a chance to deliver and improve their click rate.

## My line item state is "ready to deliver" but it won't start; why?

If this occurs, try clicking the "diagnostics" tab on the line item page and run a diagnostics test. This may return information about why your line item won't start. Here are also some common reasons:

* The line item's start date is in the future.&#x20;
* The creatives are targeted to ad units that do not fit these sizes. If this is the case, change the creative sizes or the allowed sizes on your ad units.
* You have applied non-overlapping targeting on your line item and your creatives. For example, if you target the line item to people in New York and the creatives to Washington, then you will get zero impressions because no users are in those two locations at the same time.&#x20;
