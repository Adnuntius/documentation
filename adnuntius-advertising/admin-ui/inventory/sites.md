---
description: >-
  A site is a domain with a given name, containing one or more ad units. Here is
  how you create one.
---

# Sites

Sites are objects that represent the site to which an ad unit belongs. It is thus a container for ad units, and also connects ad units \(and their earnings\) to earnings accounts. To create a new site, go to Inventory &gt; Sites and click "New" in the upper right corner.

![Example site and its ad units \(on the right\).](../../../.gitbook/assets/201811-advertising-site.png)

**Name, description and site URL**: Give your site a name and description \(optional\) of your choice. The site URL \(optional\) helps you quickly visit the site in question, but does not impact any form of targeting, and has no other functions.

**Site group \(optional\)**: Connect the site to a [site group](site-groups.md) to make targeting multiple sites easier. 

**Earnings account \(optional\)**: Connect the site to an [earnings account](earnings-accounts.md) to aggregate earnings from this site and other sites to an earnings account. 

**Labels** \(optional\) can be added to make it easier to search for the site, and to make reporting work for you. Let's say you add the label "publishing-group" to a set of sites, and then want to run a report only for this group of sites. You can then run a report which contains these sites specifically. [Learn how to run reports like this](../reports/#publishing-queries).

**Rate limits** allows you to limit the traffic \(viewable/visible/rendered/regular impressions or clicks\) that a site or ad unit receives in a given timeframe. A rate limit may be useful to ad networks that are allowed to sell only a defined set of impressions on a publisher’s behalf. If this applies to you, simply add the number of impressions, clicks or other that you are allowed to sell, then choose the period. You can also add labels if the limitation should apply only to certain line items. For example, if you add “cars” to the label field, then the rate limit will apply to all line items with the label "cars", while all other line items will be free to deliver without limitation.  

**Team membership:**  A [team](../../admin-api/endpoints/teams.md) consists of users who should have access to see and/or perform changes to the site \(their privileges are determined by [Roles](../../admin-api/endpoints/roles.md)\). When you add your site to a team, this determines who will have access to view and/or change the site.

{% hint style="info" %}
While we cover teams in greater detail in the admin section, a [team](../../admin-api/endpoints/teams.md) determines what content a user will have access to. A [Role ](../admin.md#roles)on the other hand, defines the actions that user can take to that content. 
{% endhint %}

**Overview, charts and reports**: On the right side of a site's page you will find multiple tabs that each has its function. 

{% tabs %}
{% tab title="Ad Units" %}
An overview of ad units belonging to the site. From here you can also create new ad units. 

![Ad unit overview](../../../.gitbook/assets/201811-inventory-site-ad-unit-overview.png)
{% endtab %}

{% tab title="Site Charts" %}
Site charts provides you with insights about the site's performance for whichever period you would like. Choose the period, the metrics, and the visualization of the data to design the charts you want to see. You can also see the line items that delivered to the site in the period. 

![Site charts example](../../../.gitbook/assets/201811-inventory-site-site-charts.png)
{% endtab %}

{% tab title="Ad Unit Charts" %}
Ad unit charts provides you with insights about the site's ad unit performance for whichever period you would like. Choose the period, the metrics, and the visualization of the data to design the charts you want to see. You can also see the line items that delivered to the site, and for each ad unit, in the period.

![Ad unit chart example](../../../.gitbook/assets/201811-inventory-site-ad-unit-charts.png)
{% endtab %}

{% tab title="Reports" %}
Allows you to create a report based on a [report template](../reports/#reports-report-templates-and-report-schedules), that can be shared with others as a link. You can also schedule reports to be created regularly, and whoever should receive the reports. Once you have created a scheduled report and added a recipient, Adnuntius will automatically send reports to recipients, containing the data you have decided on using in the [report template](https://docs.adnuntius.io/documentation/~/drafts/-LRqZ7HD-p07mcKQLMfS/primary/user-interface-guide/reports#reports-report-templates-and-report-schedules). 

![Example set up for a scheduled report](../../../.gitbook/assets/201811-inventory-site-report-scheduler.png)
{% endtab %}
{% endtabs %}



