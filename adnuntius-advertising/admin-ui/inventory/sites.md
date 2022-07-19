---
description: >-
  Create a site to organize your ad units (placements), facilitate site
  targeting and more.
---

# Sites

{% embed url="https://youtu.be/M3joikSAjHw" %}
How to create a site.
{% endembed %}

A Site belongs to an Earnings Account, and can contain multiple Ad Units as its children. To understand the organization of inventory objects, [see here](./).&#x20;

## Creating a Site

To create a site, [go to Sites under the Inventory section](https://admin.adnuntius.com/sites), and then click "new" in the upper right corner.

![The fields for creating a site.](<../../../.gitbook/assets/202207 Site - Fields.png>)

Give your site a **name** and optional **description**. The **site URL** can be added, and if so then it can be used by anyone targeting their campaigns to find ad units under the URL you specify here.

Anyone booking a campaign can target **IAB categories** and **countries** under site targeting. If you assign for example the category "Food and Drink - 9" to your site, then campaigns targeted to this category will be eligible to show on your site.

Assign the site to a [**site group**](site-groups.md) if you want to make targeting multiple sites easier for those booking campaigns.

Assign the site to an [**earnings account**](earnings-accounts.md) to aggregate earnings and reports from this and other sites.

You can specify how ads should be **rendered** onto your website. If you have a preference you can choose to render ads into an iFrame, div tag or a sandboxed iFrame.

**Labels** can be added to make it easier to search for the site, and to make reporting work for you. Let's say you add the label "publishing-group" to a set of sites, and then want to run a report only for this group of sites. You can then run a report which contains these sites specifically. [Learn more about reports](../reports/publishing-queries.md).

**Rate limits** allows you to limit the traffic (viewable/visible/rendered/regular impressions or clicks) that a site or ad unit receives in a given timeframe. A rate limit may be useful to ad networks that are allowed to sell only a defined set of impressions on a publisher’s behalf. If this applies to you, simply add the number of impressions, clicks or other that you are allowed to sell, then choose the period. You can also add labels if the limitation should apply only to certain line items. For example, if you add “cars” to the label field, then the rate limit will apply to all line items with the label "cars", while all other line items will be free to deliver without limitation.

Assign the [**teams** ](../admin/users-teams-and-roles.md)of users who should have access to book campaigns targeted to this site and/or manage the site (their privileges are determined by [Roles](../admin/users-teams-and-roles.md)).

**Block lists** let publishers block certain ads from showing on their sites, which is especially important for marketplace publishers.&#x20;

* _Blocked IAB categories_ lets you block ads under a certain category. If anyone managing [Advertisers ](../advertising/advertisers.md)specify one or more IAB categories, then you can use this information to block certain categories from being displayed.&#x20;
* _Blocked Advertiser Domains_ lets you block ads based on a creative's URL. For example, if a creative's click/landing page URL is [https://adnuntius.com/blog](https://adnuntius.com/blog), then you can add "adnuntius.com" to block this creative from showing on your website. If a URL is added to an [Advertiser](../advertising/advertisers.md), then this block will apply to that URL as well.&#x20;
* _Blocked Line Items_ lets you block specific line items from being shown. You can type in the name of the line item or the line item's ID to find the right one to be blocked.
* _Blocked Creatives_ lets you block specific creatives from being shown. You can type in the name of the creative or the creative's ID to find the right one to be blocked.
* _Blocked Teams_ lets you block certain teams from showing ads on your site.&#x20;

## When a Site is Created

Once a site is created you will see the following tabs.

### Ad Units

An overview of ad units belonging to the site. From here you can also create new ad units.

![Example overview of ad units assigned to a site.](<../../../.gitbook/assets/202207 Site - Ad Units Overview.png>)

### Site Charts

Site charts provides you with insights about the site's performance for whichever period you would like. Choose the period, the metrics, and the visualization of the data to design the charts you want to see. You can also see the line items that delivered to the site in the period.

![Example site charts.](<../../../.gitbook/assets/202207 Site - Site Charts.png>)

### Ad Unit Charts

Ad unit charts provides you with insights about the site's ad unit performance for whichever period you would like. Choose the period, the metrics, and the visualization of the data to design the charts you want to see. You can also see the line items that delivered to the site, and for each ad unit, in the period.

![Example ad unit charts under a site.](<../../../.gitbook/assets/202207 Site - Ad Unit Charts.png>)

### Reports

You can create reports based on a [report template](../reports/reports-templates-and-schedules.md), that can be shared with others as a link. You can also schedule reports to be created regularly, and whoever should receive the reports. Once you have created a scheduled report and added a recipient, Adnuntius will automatically send reports to recipients, containing the data you have decided on using in the [report template](../reports/reports-templates-and-schedules.md).

![Creating (scheduled) reports for a site.](<../../../.gitbook/assets/202207 Site - Reports.png>)

### Traffic

The traffic tab shows you the delivery of impressions, clicks, viewables and visible impressions that this site has delivered, per device type, operating system and mobile brand.

![Traffic charts example.](<../../../.gitbook/assets/202207 Site - Traffic.png>)

### Location

The location tab gives you the traffic to the site broken down by country.&#x20;

![Example location chart under a site.](<../../../.gitbook/assets/202207 Site - Location.png>)

### Availability

Availability allows you to forecast how much traffic your site is likely to have available in a defined period. Just enter a date range and then click “run availability” analysis.

![Example availability analysis.](<../../../.gitbook/assets/202207 Site - Availability.png>)

The following explanations will the example above above for guidance.

First, the analysis tells you that "**This ad unit is estimated to deliver 7.90% of all traffic across your network**", and that this means that for the defined period the ad unit can deliver between 231,070 and 248,379 impressions, between 0 and 162 clicks etc. If you choose a longer period of time (start and end date) these numbers are likely to increase.

Next, the allocation analysis tells you that "**0 impressions are allocated to 3 line items, which is 0.00% of the projected traffic**". This may sound strange, but the reason is that none of the three line items currently taking up space for this site have any objectives (impressions, clicks etc) registered. Let's say that one of the three line items had an impression objective of 100,000 impressions, was targeted to this ad unit only and had start and end dates equal to the ones you chose, then the message could be "100,000 impressions are allocated to 3 line items, which is 43.29% of the projected traffic".

The message "**Between 231,070 – 248,379 impressions are not allocated**" tells you how many impressions are not booked already, meaning that you can probably book this many impressions for a new line item. If we repeated the example above with the 100,000 booke impressions, the message could have been "Between 131,070 – 148,379 impressions are not allocated".

**Competitors** is a useful list of competing line items (either as one list, or grouped by tiers). This list lets you identify competing line items and make changes to them in case you need to make room for a new and more important campaign.

### Explore

You can explore your inventory by adding filters and see a breakdown of your traffic. The example below shows a table of cities and their approximate traffic next week, when two filters are applied:&#x20;

* A category filter for the category "oppskrifter" (Norwegian for "recipes").&#x20;
* A country filter for Norway.&#x20;

These two filters applied means that the table of cities only show the estimated traffic coming from Norway, and for content within the recipes category.&#x20;

![Example of exploring inventory.](<../../../.gitbook/assets/202207 Site - Explore.png>)
