---
description: >-
  An ad unit is a placement that goes onto a site, so that you can later fill it
  with ads.
---

# Adunits

{% embed url="https://youtu.be/6wtGvqlIb1o" %}
How to create an ad unit.
{% endembed %}

An Ad unit is a placement that serves advertising and other content onto a publisher's site. It is a snippet of code placed on a website or within a third party system to request content from Adnuntius. If you're a developer and want to know the properties of the ad tag (adn.js), please see "[Requesting ads](../../requesting-ads/)".

![Example ad unit.](<../../../.gitbook/assets/202207 Ad Unit.png>)

## Creating an Ad Unit

To create an ad unit, [go to Ad Units under the Inventory section](https://admin.adnuntius.com/ad-units), and then click "new" in the upper right corner.&#x20;

Give the ad unit a **name** and optional **description** of your choice. If you are a marketplace publisher then names and descriptions makes it easier for buyers to understand what they are purchasing.

Next, add width and height restrictions to your ad unit to control what creative sizes will be allowed to serve. You can choose between two modes:&#x20;

* Range. For example, if your ad unit has minimum 728x90 and maximum 1000x300 pixels, then any creative with width between 728 and 1000, and height between 90 and 300 pixels can be served.
* Fixed. If you add for instance 728x90 and 1000x300 as two sizes, then only creatives with either of those two sizes will be allowed to serve. The fixed option is usually preferable whenever prebid is used to request ads. &#x20;

![Buyers can, when targeting ads, see the mode (range or fixed sizes) you set on ad units.](<../../../.gitbook/assets/202207 Ad Unit - Mode in Targeting.png>)

{% hint style="info" %}
As long as the creative is within the min/max size limits, the ad unit will automatically shrink to the size of the creative. If there is no creative to serve, the ad unit will by default collapse so that it does not take up space on the site. [Read more](../../requesting-ads/intro/adn-request.md).
{% endhint %}

**Page size** determines the number of creatives that can be shown inside your ad unit. For instance, if you have a 1000x300 ad unit and page size of 3, then the ad unit may (depending on what provides the highest revenue) serve for instance three 300x300 creatives inside this ad unit. **Columns** lets you set the max number of columns to be filled with ads. If you have your 1000x300 ad unit and allow 2 columns, then that ad unit can fill for instance two 300x300 creatives side by side, but not three.

{% hint style="info" %}
If you leave the page size and columns fields blank, then Adnuntius will serve any number of ads and columns inside the ad unit (of course without exceeding the size constraints).
{% endhint %}

**Floor price** determines the minimum eCPM, or the cost per thousand ad impressions, that you will accept on this ad unit. This means that any line items with a CPM bid lower than what you specify, will not be shown in this ad unit. Please note that if you run programmatic advertising with prebid or with one of our server-side connections, the floor price will apply also to these advertising sources.

**Site** lets you specify this ad unit's parent site.

**Matching labels** lets you target line items and/or creatives to groups of ad units with the same label. For instance, if you add “sports”, or “300x250”, or “mobile” to a set of ad units, you can with one click target a line item and/or creative to these ad units.

![Once you have created a matching label you will find it as a targeting criteria for line items and creatives.](../../../.gitbook/assets/202003-matching-labels-ad-units.png)

**Labels** can be added to make reporting work for you. Let's say you add the label "skyscrapers" to a set of ad units, and then want to run a report only for this group of ad units. You can then run a report which filters on these ad units specifically. [Learn more about reports.](../queries/publishing-queries.md)

![Once you have added a label, you can use it as a filter when running reports.](../../../.gitbook/assets/202003-ad-unit-query-labels.png)

**Timezone** lets you choose the timezone for the ad unit. Timezones is important because you can target ads to run on specific dates and times. For instance, if your ad unit's timezone is set to London and you have an ad that runs until 4pm every day using [day parts](https://docs.adnuntius.com/adnuntius-advertising/admin-ui/advertising/targeting#day-parts-targeting), then that ad will stop running at 4pm London time. However, if you would set that ad unit to Oslo time instead (which is 1 hour ahead of London), the ad would stop running at 4pm Oslo time - which is 5pm London time.

You can specify how ads should be **rendered** onto your website. If you have a preference you can choose to render ads into an iFrame, div tag or a sandboxed iFrame.

Ad units can automatically pick up the URL for the page on which it is shown, so that you can later use that information for [**targeting ads to specific categories**](https://docs.adnuntius.com/adnuntius-advertising/admin-ui/advertising/targeting#category-targeting)**.**

Ad units can also automatically **derive key values for key value targeting from the page URL's query string**. For example, if a user goes to the site example.com, searches for "wine" and the landing page has the URL [https://example.com/search?query=wine](https://www.aperitif.no/sok?query=wine), then the key value query=wine will immediately be available for targeting for line items and creatives.

You can set **targeting options** on the ad unit.&#x20;

* The default option "Can have no targeting" means that Adnuntius will deliver ads to every ad unit that it will fit.
* "Must have Targeting" means that only line items with any kind of targeting can deliver to this ad unit.
* "Must match type" allows you to select what targeting you will allow for this ad unit.&#x20;

![Must Match Type.](<../../../.gitbook/assets/image (21) (1) (1) (1) (1).png>)

In the example above only ad unit targeting is selected. This will only allow line items with ad unit targeting to be showed for this ad unit. If this would be applied to an ad unit it would not show any ads unless it´s explicitly targeted. You can of course add more targeting to the line item to reduce the scope of users to target.

**Rate limits** allows you to limit the traffic (viewable/visible/rendered/regular impressions or clicks) that an ad unit receives in a given timeframe. A rate limit may be useful to ad networks that are allowed to sell only a defined set of impressions on a publisher’s behalf. If this applies to you, simply add the number of impressions, clicks or other that you are allowed to sell, then choose the period. You can also add labels if the limitation should apply only to certain line items. For example, if you add “cars” to the label field, then the rate limit will apply to all line items with the label "cars", while all other line items will be free to deliver without limitation.

**External ad units** are placements connecting programmatic ads to an ad unit, enabling you to serve ads from one or more SSPs with a client-side or server-side connection. [Read more about external ad units in this separate section](external-adunits.md).

## When an Ad Unit is Created

Once a site is created you will see the following tabs.

### Ad Unit

Ad unit charts provides you with insights about the ad unit's performance for whichever period you would like. Choose the period, the metrics, and the visualization of the data to design the charts you want to see. You can also download the report to Excel directly from this page.

![Ad unit charts example.](<../../../.gitbook/assets/202207 Ad Unit - Charts.png>)

### External Ad Unit

If you have external ad units serving programmatic ads AND you have connected this ad unit to one or more external ad units, you can see how programmatic ads are delivering to this ad unit.

![External ad unit chart example.](../../../.gitbook/assets/202003-ad-units-external-au-chart.png)

### Ad Tags

The tab “Ad Tags” is where you get the ad tag that is to be placed onto the page where you want ads to show. You can choose between standard tags for your webpage, email tags that can go into your newsletter, and VAST tags if you want to implement for video ads (instance prerolls, midrolls or endrolls).

![Ad tags example.](<../../../.gitbook/assets/202207 Ad Unit - Ad Tags (1).png>)

### Reports

Allows you to create a report based on a [report template](../reports/reports-templates-and-schedules.md), that can be shared with others as a link. You can also schedule reports to be created regularly, and whoever should receive the reports. Once you have created a scheduled report and added a recipient, Adnuntius will automatically send reports to recipients, containing the data you have decided on using in the [report template](../reports/reports-templates-and-schedules.md).

![Reports example.](<../../../.gitbook/assets/202207 Ad Unit - Reports.png>)

### Traffic&#x20;

The traffic tab shows you the delivery of impressions, clicks, viewables and visible impressions that this ad unit has delivered, per device type, operating system and mobile brand.

![Traffic example.](<../../../.gitbook/assets/202207 Ad Unit - Traffic.png>)

### Location

The location tab gives you the traffic to the ad unit broken down by country.

![](<../../../.gitbook/assets/202207 Ad Unit - Location.png>)

### Availability

Availability allows you to forecast how much traffic your ad unit is likely to have available in a defined period. Just enter a date range and then click “run availability” analysis. For an explanation of how to read the results, please go to the [Site Availability explanation](adunits-1.md#availability) as the results are the same (but the ad unit availability accounts for only the relevant ad unit).&#x20;

### Diagnostics

If you cannot see any ads in your ad unit, or you expected to see another ad, then diagnostics is a test that gives you more insight into what might be going on. You can simulate different targeting criteria before you run the test. Running the test, you will get detailed feedback on winning, losing, capped, unmatched and unsuitable line items, and the reasons why they were so.

![Diagnostics example.](<../../../.gitbook/assets/202207 Ad Unit - Diagnostics.png>)

### Explore

You can explore your inventory by adding filters and see a breakdown of your traffic. The example below shows a table of cities and their approximate traffic next week, when two filters are applied:&#x20;

* A category filter for the category "oppskrifter" (Norwegian for "recipes").&#x20;
* A country filter for Norway.&#x20;

These two filters applied means that the table of cities only show the estimated traffic coming from Norway, and for content within the recipes category.

![Explore example.](<../../../.gitbook/assets/202207 Site - Explore.png>)

## Requesting Ads

Once an ad unit is created you can deploy it on your page to let that page request ads from the Adnuntius adserver.[ To learn how to request ads, see here](../../requesting-ads/).
