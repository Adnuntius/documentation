---
description: >-
  An ad unit is a placement that goes onto your site, so that you can later fill
  it with ads. It is as such an empty container that sets aside a space on your
  site so that you can fill it with content.
---

# Adunits

An Ad unit is a placement that serves your intended content onto a page. It is a snippet of code placed on a website or within a third party system to request content from Adnuntius. If you're a developer and want to know the properties of the ad tag, please see "[Requesting ads](../../../requesting-ads/)".

![Ad unit example](../../../../.gitbook/assets/201811-inventory-ad-unit.png)

You can create an ad unit by going to Inventory &gt; Ad Units, then in the upper right corner click "New".

**Name and description**: Give the ad unit a name and description \(optional\) of your choice. It is always better to use spacing between words rather than underscores, as searching for items later makes the items easier to find.

**Minimum and maximum width and height**: You can add a range of dimensions to ensure that an ad unit can serve any size between your minimum and maximum constraints. For example, if your ad unit has minimum 728x90 and maximum 1000x400 pixels, then any creative with width between 728 and 1000, and height between 90 and 400 pixels can be served. 

{% hint style="info" %}
As long as the creative is within the min/max size limits, the ad unit will automatically shrink to the size of the creative. If there is no creative  to serve, the ad unit will by default collapse so that it does not take up space on the site.  
{% endhint %}

**Page size and columns**: _Page siz_e determines the number of creatives that can be shown inside your ad unit. For instance, if you have a 1000x300 ad unit and page size of 3, then the ad unit may \(depending on what provides the highest revenue\) serve for instance three 300x300 creatives inside this ad unit. _Columns_ lets you set the maximum number of columns to be filled with ads within the ad unit's dimensions. So if you have your 1000x300 ad unit and allow 2 columns, then that ad unit can fill for instance two 300x300 creatives side by side, but not three.

{% hint style="info" %}
If you leave the page size and columns fields blank, then Adnuntius will serve any number of ads and columns inside the ad unit \(of course without exceeding the size constraints\).
{% endhint %}

**Floor price** determines the minimum eCPM, or the cost per thousand ad impressions, that you will accept on this ad unit. This means that any line items with a CPM bid lower than what you specify, will not be shown in this ad unit. Please note that if you run programmatic advertising with prebid or with one of our server-side connections, the floor price will apply also to these advertising sources.

**Site** lets you specify this ad unit's parent site. 

**Matching labels** lets you target line items and/or creatives to groups of ad units with the same label. For instance, if you add “sports”, or “300x250”, or “mobile” to a set of ad units, you can with one click target a line item and/or creative to these ad units.

![Once you have created a matching label you will find it as a targeting criteria for line items and creatives.](../../../../.gitbook/assets/202003-matching-labels-ad-units.png)

**Labels** can be added to make reporting work for you. Let's say you add the label "skyscrapers" to a set of ad units, and then want to run a report only for this group of ad units. You can then run a report which filters on these ad units specifically. [Learn how to run reports like this](../../reports.md#publishing-queries).

![Once you have added a label, you can use it as a filter when running reports.](../../../../.gitbook/assets/202003-ad-unit-query-labels.png)

**Timezone** lets you choose the timezone for the ad unit. Timezones is important because you can target ads to run on specific dates and times. For instance, if your ad unit's timezone is set to London and you have an ad that runs until 4pm every day using [day parts](https://docs.adnuntius.com/adnuntius-advertising/admin-ui/advertising/targeting#day-parts-targeting), then that ad will stop running at 4pm London time. However, if you would set that ad unit to Oslo time instead \(which is 1 hour ahead of London\), the ad would stop running at 4pm Oslo time - which is 5pm London time.

**Categories from URLs**: ad units can automatically pick up the URL for the page on which it is shown, so that you can later use that information for [targeting ads to specific categories](https://docs.adnuntius.com/adnuntius-advertising/admin-ui/advertising/targeting#category-targeting).

**Key values from URLs**: ad units can automatically derive key values for key value targeting from the page URL's query string. For example, if a user goes to the site example.com, searches for "wine" and the landing page has the URL [https://example.com/search?query=wine](https://www.aperitif.no/sok?query=wine), then the key value query=wine will immediately be available for targeting for line items and creatives. 

**Targeting options**: The ad server's default option "Can have no targeting", which means that the ad server will deliver ads to every ad unit that it will fit. Sometimes that will not be the best solution for you. For these scenarios we have added two more targeting options.

{% tabs %}
{% tab title="Can have no targeting" %}
"Can have no targeting" means that line items with no targeting can deliver to this ad unit \(useful for backfill or network-wide ads\).
{% endtab %}

{% tab title="Must have targeting" %}
"Must have Targeting" means that only line items with any kind of targeting can deliver to this ad unit.
{% endtab %}

{% tab title="Must match type" %}
"Must match type" allows you to select what targeting you will allow for this ad unit. It will open a list that looks like this.

![Must Match Type.](../../../../.gitbook/assets/202003-targeting-options-must-have.png)

In the instance above only ad unit targeting is selected. This will only allow line items with ad unit targeting to be showed for this ad unit. If this would be applied to an ad unit it would not show any ads unless it´s explicitly targeted. You can of course add more targeting to the line item to reduce the scope of users to target.
{% endtab %}
{% endtabs %}

**Rate limits** allows you to limit the traffic \(viewable/visible/rendered/regular impressions and clicks\) that a ad unit receives in a given timeframe. This can be useful if you are a marketer or ad network that is given a set impressions for instance monthly for a set price. You can set multiple rate limits.

{% hint style="info" %}
If you provide a label to rate limits, you will limit the traffic for any line item with that same label. If you do not provide a label, then all line items will stop delivering to the site or ad unit after the set amount is reached. 
{% endhint %}

External ad units are placements connecting programmatic ads to an ad unit, enabling you to serve ads from an SSP with a server-side connection. [Read more about external ad units in this separate section](../#external-ad-unit).

**Overview, charts and reports**: On the right side of a ad unit's page you will find multiple tabs that each has its function. 

{% tabs %}
{% tab title="Ad Unit" %}
Ad unit charts provides you with insights about the ad unit's performance for whichever period you would like. Choose the period, the metrics, and the visualization of the data to design the charts you want to see. 

![Ad unit chart example](../../../../.gitbook/assets/201811-inventory-ad-unit-ad-unit-charts.png)
{% endtab %}

{% tab title="Ad Tags" %}
This is where you find the ad tag that can be added to your page so that you can start serving content. For technical documentation about the properties of adn.js, visit [https://admin.adnuntius.com/adn](https://admin.adnuntius.com/adn).

![Ad tag example](../../../../.gitbook/assets/201811-inventory-ad-unit-ad-tag.png)
{% endtab %}

{% tab title="Reports" %}
Allows you to create a report based on a [report template](../../reports.md#reports-report-templates-and-report-schedules), that can be shared with others as a link. You can also schedule reports to be created regularly, and whoever should receive the reports. Once you have created a scheduled report and added a recipient, Adnuntius will automatically send reports to recipients, containing the data you have decided on using in the [report template](https://docs.adnuntius.io/documentation/~/drafts/-LRqZ7HD-p07mcKQLMfS/primary/user-interface-guide/reports#reports-report-templates-and-report-schedules). Here you can see a [demo of how to set up automated reporting](https://www.youtube.com/watch?v=_-OEgPFBq0A&feature=youtu.be).

![Report scheduler example](../../../../.gitbook/assets/201811-inventory-ad-unit-reports.png)
{% endtab %}

{% tab title="Diagnostics" %}
If you cannot see any ads in your ad unit, or you expected to see another ad, then diagnostics is a test that gives you more insight into what might be going on. You can simulate different targeting criteria before you run the test. Running the test, you will get detailed feedback on winning, losing, capped, unmatched and unsuitable line items, and the reasons why they were so. 

![Diagnostics test example](../../../../.gitbook/assets/201811-inventory-ad-unit-diagnostics.png)

{% hint style="info" %}
You can also run diagnostics for [line items](../../advertising/#line-item) if you wonder how an ad unit gave a line item the result that it got.
{% endhint %}

{% hint style="info" %}
You can also add ?adndebug123 at the end of any URL \(example: www.aperitif.no?adndebug123\) to show you all ad units, line items, creatives, targeting and more information in the context of a webpage.
{% endhint %}
{% endtab %}
{% endtabs %}

