---
description: >-
  The Inventory section allows publishers to manage their publishing inventory,
  and marketers to manage publishing partners.
---

# Inventory

## Concept Summary

| Name | Description |
| :--- | :--- |
| Ad Unit | A placement that serves an ad. It is a snippet of code placed on a website or within another adserver to request an ad from Adnuntius. |
| Site | A site with a given name, that gathers a set of ad units, and connects them to an earnings account. |
| Earnings account | A container for earnings generated by a set of sites. Sites are usually grouped per publisher. |
| Site Group | A group of sites, making ad targeting to a publisher \(or other group of sites\) easier. |
| External Ad Unit | A placement connecting programmatic ads to an ad unit, enabling you to serve ads from an SSP with a server-side connection. |

## Earnings Account

An earnings account is a label that aggregates earnings that one or more sites have made. The purpose is to enable you to choose how you want to consolidate earnings from certain sites into one or more earnings accounts. 

{% hint style="info" %}
A site can only have one earnings account, as registering the same earnings multiple places would result in the wrong earnings numbers. However, an earnings account may belong more than one site.
{% endhint %}

![Example earnings account](../.gitbook/assets/201811-advertising-ea.png)

**Name, description and address**: Give the earnings account a name and description \(optional\) of your choice. It is always better to use spacing between words rather than underscores, as searching for items later makes the items easier to find. You can also add an address to the account \(optional\).

**External reference:**  Add an external reference \(optional\) if you want to match the earnings account with the same account in another system. For instance, if you are an ad network working with publishing partners, and a publisher is registered in your invoicing system with customer ID 123456, then you may want to add 123456 as an external reference in Adnuntius. This way you can easily recognize two different entries as the same account across two different systems, which may in turn speed up processes like invoicing.

**Revenue share**: If you are an ad network or a marketer with publishing partners, where the publisher is entitled to a share of revenues or spending on their sites, then you can specify that revenue share here. For instance; if you add 10% as revenue share, this means that you award the publisher 10% of whatever is spent on the sites. 

**Labels** can be added to make reporting work for you. Let's say you add the label "Norway" to a set of earnings accounts, and then want to run a report only for this set of accounts. You can then run a report which filters on these accounts specifically. [Learn how to run reports like this](reports.md#publishing-queries).

## Site

Sites are objects that represent the site to which an ad unit belongs. It is thus a container for ad units, and also connects ad units \(and their earnings\) to earnings accounts. 

![Example site](../.gitbook/assets/201811-advertising-site.png)

**Name, description and site URL**: Give your site a name and description \(optional\) of your choice. It is always better to use spacing between words rather than underscores, as searching for items later makes the items easier to find. The site URL \(optional\) helps you quickly visit the site in question, but does not impact any form of targeting. 

**Site group \(optional\)**: connect the site to a group of sites to make targeting of multiple sites easier. [Read more about site groups](inventory.md#site-group). 

**Earnings account \(optional\)**: If the site is part of a publishing group, then you can connect this and other sites to a common earnings account. When you have done so, the earnings account will aggregate revenues made by these sites. [Learn more about earnings accounts](inventory.md#earnings-account). 

**Labels** can be added to make reporting work for you. Let's say you add the label "publishing-inc" to a set of sites, and then want to run a report only for this group of sites. You can then run a report which filters on these sites specifically. [Learn how to run reports like this](reports.md#publishing-queries).

**Rate limits** allows you to limit the traffic \(viewable/visible/rendered/regular impressions and clicks\) that a site or ad unit receives in a given timeframe. This can be useful if you are a marketer or ad network that is given a set impressions for instance monthly for a set price. You can set multiple rate limits.

{% hint style="info" %}
If you provide a label to rate limits, you will limit the traffic for any line item with that same label. If you do not provide a label, then all line items will stop delivering to the site or ad unit after the set amount is reached. 
{% endhint %}

**Team membership:**  A team contains a set of sites and is used to control users' access to one or more sites. If your user has access to multiple teams you will be able to choose from multiple sites when clicking "Update team membership", otherwise only the team available to you will appear. [Learn more about teams.](https://docs.adnuntius.io/documentation/~/drafts/-LRqZ7HD-p07mcKQLMfS/primary/user-interface-guide/admin#teams)​

{% hint style="info" %}
While we cover teams in greater detail in the admin section, a team determines what content a user will have access to. A [Role ](admin.md#roles)on the other hand, defines the actions that user can take to that content. 
{% endhint %}

**Overview, charts and reports**: On the right side of a site's page you will find multiple tabs that each has its function. 

{% tabs %}
{% tab title="Ad Units" %}
An overview of ad units belonging to the site. From here you can also create new ad units. 

![Ad unit overview](../.gitbook/assets/201811-inventory-site-ad-unit-overview.png)
{% endtab %}

{% tab title="Site Charts" %}
Site charts provides you with insights about the site's performance for whichever period you would like. Choose the period, the metrics, and the visualization of the data to design the charts you want to see. You can also see the line items that delivered to the site in the period. 

![Site charts example](../.gitbook/assets/201811-inventory-site-site-charts.png)
{% endtab %}

{% tab title="Ad Unit Charts" %}
Ad unit charts provides you with insights about the site's ad unit performance for whichever period you would like. Choose the period, the metrics, and the visualization of the data to design the charts you want to see. You can also see the line items that delivered to the site, and for each ad unit, in the period.

![Ad unit chart example](../.gitbook/assets/201811-inventory-site-ad-unit-charts.png)
{% endtab %}

{% tab title="Reports" %}
Allows you to create a report based on a [report template](reports.md#reports-report-templates-and-report-schedules), that can be shared with others as a link. You can also schedule reports to be created regularly, and whoever should receive the reports. Once you have created a scheduled report and added a recipient, Adnuntius will automatically send reports to recipients, containing the data you have decided on using in the [report template](https://docs.adnuntius.io/documentation/~/drafts/-LRqZ7HD-p07mcKQLMfS/primary/user-interface-guide/reports#reports-report-templates-and-report-schedules). Here you can see a [demo of how to set up automated reporting](https://www.youtube.com/watch?v=_-OEgPFBq0A&feature=youtu.be).

![Example set up for a scheduled report](../.gitbook/assets/201811-inventory-site-report-scheduler.png)
{% endtab %}
{% endtabs %}

## Site Group

Site groups make it easier to target a group of sites when targeting a line item or creative. The process is as follows: 

1. Create a site group with a name, description \(optional\) and labels \(optional\) of your choice. For instance - "Adnuntius". It is always better to use spacing between words rather than underscores, as searching for items later makes the items easier to find.
2. Next, go to the sites you want to group, and choose a site group.
3. After this, when you create a line item or creative and want to target it, you will find "Adnuntius" as a criteria under "Site Groups". Once you've chosen this, then all sites under "Adnuntius" are targeted.

![](../.gitbook/assets/201811-inventory-site-group.png)

## Ad Units 

An Ad unit is a placement that serves the content onto a page. It is a snippet of code placed on a website or within another adserver to request content from Adnuntius. If you're a developer and want to know the properties of the ad tag - or adn.js as we call it - see this page: [https://admin.adnuntius.com/adn](https://admin.adnuntius.com/adn)

![Ad unit example](../.gitbook/assets/201811-inventory-ad-unit.png)

**Name and description**: Give the ad unit a name and description \(optional\) of your choice. It is always better to use spacing between words rather than underscores, as searching for items later makes the items easier to find.

**Minimum and maximum width and height**: You can add a range of dimensions to ensure that an ad unit can serve any size between your min and max constraints. For example, if your ad unit has minimum 728x90 and maximum 1000x400 pixels, then any creative with width between 728 and 1000, and between 90 and 400 pixels can be served. If you would serve a 1000x300 creative inside this ad unit, the ad unit shrinks by default to 1000x300. 

**Page size and columns**: _Page siz_e determines the number of creatives that can be shown inside your ad unit. For instance, if you have a 1000x300 ad unit and page size of 3, then the ad unit may \(depending on what provides the highest value\) serve for instance three 300x100 creatives inside this ad unit. _Columns_ lets you set the maximum number of columns to be filled with ads within the ad unit's dimensions. So if you have your 1000x300 ad unit and allow 2 columns, then that ad unit can fill for instance two 300x100 creatives side by side, but not three.

{% hint style="info" %}
If you leave the page size and columns fields blank, then Adnuntius will serve any number of ads and columns inside the ad unit \(of course without exceeding the size constraints\).
{% endhint %}

**Floor price** lets you set a minimum eCPM for ads to be delivered via this ad unit. Floor price can be used by publihers to ensure that pages with premium prices never display an ad with none-premium prices.

**Site** lets you specify this ad unit's parent site. 

**Matching labels** let you group ad units based on labels, so that you can easily target a set of ad units when creating line items. For instance, if you give three ad units the label "electronics" because they are all placed on the electronics section of our site, then you can later add "electronics" as a targeting criteria to line items and creatives. 

**Labels** can be added to make reporting work for you. Let's say you add the label "electronics" to a set of ad units, and then want to run a report only for this group of ad units. You can then run a report which filters on these ad units specifically. [Learn how to run reports like this](reports.md#publishing-queries).

**Timezone** lets you choose the timezone for the ad unit. Timezones is important because you can target ads to run on specific dates and times. For instance, if your ad unit's timezone is set to London and you have an ad that runs until 4pm every day, then that ad will stop running at 4pm London time. However, if you would set that ad unit to Oslo time instead \(which is 1 hour ahead of London\), the ad would stop running at 4pm Oslo time - which is 5pm London time.

**Categories from URLs**: Adnuntius ad units can pick up the URL for the page on which it is shown, so that you can later use that information for targeting ads to specific categories. Once you've set up your ad units, you can add multiple categories by separating each individual one by a comma. For instance, inputting sport, color/blue, color/red/crimson will match any of sport, sport/ANY-VALUE-HERE, color/blue, color/blue/ANY-VALUE-HERE, color/red/crimson or color/red/crimson/ANY-VALUE-HERE. In addition, a category of golf will match any of domain.com/golf/news, domain.com/news/sport-golf-good and domain.com/news/sport\_golf\_good.

**Rate limits** allows you to limit the traffic \(viewable/visible/rendered/regular impressions and clicks\) that a ad unit receives in a given timeframe. This can be useful if you are a marketer or ad network that is given a set impressions for instance monthly for a set price. You can set multiple rate limits.

{% hint style="info" %}
If you provide a label to rate limits, you will limit the traffic for any line item with that same label. If you do not provide a label, then all line items will stop delivering to the site or ad unit after the set amount is reached. 
{% endhint %}

External ad units are placements connecting programmatic ads to an ad unit, enabling you to serve ads from an SSP with a server-side connection. [Read more about external ad units in this separate section](inventory.md#external-ad-unit).

**Overview, charts and reports**: On the right side of a ad unit's page you will find multiple tabs that each has its function. 

{% tabs %}
{% tab title="Ad Unit" %}
Ad unit charts provides you with insights about the ad unit's performance for whichever period you would like. Choose the period, the metrics, and the visualization of the data to design the charts you want to see. 

![Ad unit chart example](../.gitbook/assets/201811-inventory-ad-unit-ad-unit-charts.png)
{% endtab %}

{% tab title="Ad Tags" %}
This is where you find the ad tag that can be added to your page so that you can start serving content. For technical documentation about the properties of adn.js, visit [https://admin.adnuntius.com/adn](https://admin.adnuntius.com/adn).

![Ad tag example](../.gitbook/assets/201811-inventory-ad-unit-ad-tag.png)
{% endtab %}

{% tab title="Reports" %}
Allows you to create a report based on a [report template](reports.md#reports-report-templates-and-report-schedules), that can be shared with others as a link. You can also schedule reports to be created regularly, and whoever should receive the reports. Once you have created a scheduled report and added a recipient, Adnuntius will automatically send reports to recipients, containing the data you have decided on using in the [report template](https://docs.adnuntius.io/documentation/~/drafts/-LRqZ7HD-p07mcKQLMfS/primary/user-interface-guide/reports#reports-report-templates-and-report-schedules). Here you can see a [demo of how to set up automated reporting](https://www.youtube.com/watch?v=_-OEgPFBq0A&feature=youtu.be).

![Report scheduler example](../.gitbook/assets/201811-inventory-ad-unit-reports.png)
{% endtab %}

{% tab title="Diagnostics" %}
If you cannot see any ads in your ad unit, or you expected to see another ad, then diagnostics is a test that gives you more insight into what might be going on. You can simulate different targeting criteria before you run the test. Running the test, you will get detailed feedback on winning, losing, capped, unmatched and unsuitable line items, and the reasons why they were so. 

![Diagnostics test example](../.gitbook/assets/201811-inventory-ad-unit-diagnostics.png)

{% hint style="info" %}
You can also run diagnostics for [line items](advertising.md#line-item) if you wonder how an ad unit gave a line item the result that it got.
{% endhint %}

{% hint style="info" %}
You can also add ?adndebug123 at the end of any URL \(example: www.aperitif.no?adndebug123\) to show you all ad units, line items, creatives, targeting and more information in the context of a webpage.
{% endhint %}
{% endtab %}
{% endtabs %}

## External Ad Unit

External ad units are placements connecting programmatic ads to an ad unit, enabling you to serve ads from an SSP with a server-side or client-side connection. In other words, an external ad unit is what connects a ["regular" Adnuntius ad unit](inventory.md#ad-units) to an ad unit that you've creating in an SSP. Before creating external ad units you need to have done the following: 

1. Created accounts \(customer relationships\) with one or more SSPs, and ad units within those SSPs. Please contact us at support@adnuntius.com if you want our advise on this. 
2. Set up an [integration between Adnuntius and an SSP](admin.md#external-demand-sources).

![External ad unit example](../.gitbook/assets/201811-inventory-external-ad-unit.png)

**Name**: Give the external ad unit a name of your choice. We recommend that you use the same name for ad units that connect your SSP with Adnuntius. 

**External demand source**: Select an external demand source \(SSP\) from the dropdown list. If your dropdown list is empty, this is because you have not set up an [integration between Adnuntius and an SSP](admin.md#external-demand-sources).

**External site and ad unit ID:** Provide this ad unit's parent site ID as it is defined in your SSP account, and the SSP ad unit ID that you want to connect to this external ad unit. For example, in Pubmatic you will find the site ID in the URL when editing the site \(example URL: [https://apps.pubmatic.com/inventoryui/\#/sites/editSites/250032](https://apps.pubmatic.com/inventoryui/#/sites/editSites/250032)\). 250032 is the site's ID in this example. And you will find Pubmatic ad unit IDs in list of a site's ad units - like here: 

![Pubmatic ad unit IDs are found in the leftmost column \(7 digit number\).](../.gitbook/assets/201811-inventory-pubmatic-ad-unit.png)

**External ad type** means that you can choose between ad formats like video, flash, text, html, image and more. We normally like to go with "mixed" as this gives the ad unit to choose the most profitable alternative between the various format options, but if you have preferences you can choose one specific type. 

**Dimensions**: Give your external ad unit a width and height. This should be the same width and height as you provide in the SSP that your external ad unit connects to. 

**Usage in ad units**: The last step is to connect your external ad unit to a ["regular" Adnuntius ad unit](inventory.md#ad-units). This is done on the ad unit page, and once you have done so, you will on the external ad unit page see an overview of the ad units connected to your external ad unit. 

{% hint style="info" %}
If you want granular reporting you can create one external ad unit for every SSP ad unit you create. But if you are ok with aggregating the statistics a bit and want to save time, you can create one external ad unit for every ad unit size. You can then connect that one size to multiple regular Adnuntius ad units. 
{% endhint %}
