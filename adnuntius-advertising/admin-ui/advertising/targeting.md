---
description: >-
  You can target line items and creatives to specific users and/or content. Here
  you will find a full overview of how you can work with targeting.
---

# Targeting

Targeting lets you direct a line item's and/or creative's impressions to specific users or content. Any of the targeting criteria below can be added to both line items and creatives. Just make sure that when you use targeting on both these levels, that they are not mutually exclusive. For instance, if you target a line item to people sitting in New York, and one of its creatives to people sitting in Miami, then you reach no people with that creative \(because no one can be in two places at the same time\).

{% hint style="info" %}
Please note that you do not have to add targeting to both line items and creatives, unless you need to.
{% endhint %}

When you target multiple items in the same group \(for instance, multiple ad units\) your ads will be eligible to be shown in item 1, item 2, OR item N. When you target multiple groups \(for instance, one ad unit and one segment\) then your ads will only be shown when group 1 AND group 2 matches.

![How to find targeting on line items and creatives.](../../../.gitbook/assets/202003-finding-targeting.gif)

## Targeting Templates

Targeting templates allow you to save combinations of targeting criteria for later re-use. For example: if you repeatedly target multiple line items or creatives to a set of locations, then rather than adding those locations manually each time you create one, you can save a template so that you can use the same targeting with one click. Below you can see an example of how to save a targeting template for multiple ad units. 

![Targeting Template created from three ad units.](../../../.gitbook/assets/202003-targeting-templates.gif)

## Copy from Line Item

You can copy the targeting that has been added to other line items. If you work with complex targeting criteria and want to add these targeting combinations with the click of a button, then this is the function for you. You can either copy targeting from running line items, or you can create "template line items" that contain the targeting criteria you most often use, so that you can copy from those templates. Below is a video demonstrating how to copy targeting from other line items. 

![](../../../.gitbook/assets/202003-copy-targeting.gif)

## Ad Unit Targeting

An [ad unit ](../inventory/adunits-1/)is a placement that goes onto your site, so that you can later fill it with ads. It is as such an empty container that sets aside a space on your site so that you can fill it with content. Ad unit targeting allows you to target a line item and/or creative to one or more ad units.

You can choose to add include the chosen items in your targeting, or to exclude them \(whatever is easiest given your need\). 

![Ad unit targeting can be added to line items and to creatives](../../../.gitbook/assets/201811-advertising-line-item-ad-unit-targeting.png)

## Site Targeting

A [site](../inventory/sites.md) is an object that makes it easy to organize your content according to the domains, or sites, that you own, control or have access to. Site targeting allows you to target your line items and/or creatives to one or more sites. You can choose to add include the chosen items in your targeting, or to exclude them \(whatever is easiest given your need\).

![Site targeting can be added to line items and creatives](../../../.gitbook/assets/201811-advertising-line-item-site-targeting.png)

## Site Group Targeting

Publishers can [group sites together](../inventory/site-groups.md) in order to make targeting a set of sites easier. Once a site group is created you can target line items and/or creatives. You can choose to add include the chosen items in your targeting, or to exclude them \(whatever is easiest given your need\).

![Site group targeting can be added to line items and to creatives](../../../.gitbook/assets/201811-advertising-line-item-site-group-targeting.png)

## Ad Unit Matching Label Targeting

Matching labels are labels added to ad units that you can later use for targeting groups of ad units. Let's say that you add the label "sports" to three different ad units, and then target a line item to the matching label "sports". You will then target your ads to be shown in these three ad units.

![Right: you can add a matching label to an ad unit. Left: after that you can target on those matching labels](../../../.gitbook/assets/201811-advertising-line-item-matching-label-targeting.png)

## Segment Targeting

Segments are based on historic user behaviour, and targes groups of users \(or "audiences"\) that have something in common. There are three ways of connecting to user segments: 

1. Using Adnuntius Data, a data platform that allows you to unify your 1st and 3rd party data and eliminate silos, create segments with consistent user profiles, and to activate your data in any system. Any data collected by Adnuntius Data will automatically be avaiable for targeting in Adnuntius Advertising without any setup work needed in advance. 
2. 
are groups of users that match whatever criteria you would like to set for that audience. Adnuntius has a server-side "out-of-the-box" integration to data management platform \(DMP\) partner Cxense, which means that you can easily connect to Cxense to get your segments into Adnuntius for targeting.



{% tabs %}
{% tab title="Ad Units" %}
Target select ad units, or exclude select ad units. When you target one ad unit, you make sure that your line item is shown only in this ad unit. [Learn more about ad units](../inventory/#ad-units).

![Ad unit targeting can be added to line items and to creatives](../../../.gitbook/assets/201811-advertising-line-item-ad-unit-targeting.png)
{% endtab %}

{% tab title="Sites" %}
Target select sites. When choosing one site, you make sure that your line item is shown only in ad units belonging to this site. [Learn more about sites](../inventory/#site).

![Site targeting can be added to line items and creatives](../../../.gitbook/assets/201811-advertising-line-item-site-targeting.png)
{% endtab %}

{% tab title="Site groups" %}
If you have many sites, and want to save time when booking your campaigns, you can gather sites into site groups. Once you have done this you can easily target your groups of sites. [Learn more about site groups](../inventory/#site-group).

![Site group targeting can be added to line items and to creatives](../../../.gitbook/assets/201811-advertising-line-item-site-group-targeting.png)
{% endtab %}

{% tab title="Matching labels" %}
Matching labels are labels added to ad units that you can later use for targeting groups of ad units. Let's say that you add the label "sports" to three different ad units, and then target a line item to the matching label "sports". You will then target your ads to be shown in these three ad units.

![Right: you can add a matching label to an ad unit. Left: after that you can target on those matching labels](../../../.gitbook/assets/201811-advertising-line-item-matching-label-targeting.png)
{% endtab %}

{% tab title="Segments" %}
Segments are groups of users that match whatever criteria you would like to set for that audience. Adnuntius has a server-side "out-of-the-box" integration to data management platform \(DMP\) partner Cxense, which means that you can easily [connect to Cxense ](../admin.md#context-service-connections)to get your segments into Adnuntius for targeting.

![Segment targeting can be added to line items and to creatives](../../../.gitbook/assets/201811-advertising-line-item-segment-targeting.png)

{% hint style="info" %}
Would you like to consider Cxense as your DMP? Contact us at support@adnuntius.com, and we will introduce you to the DMP and get you started.
{% endhint %}

{% hint style="info" %}
Would you like your DMP to get integrated with Adnuntius? Contact us at support@adnuntius.com, and we can discuss!
{% endhint %}
{% endtab %}

{% tab title="Categories" %}
Adnuntius can read the URLs from whatever pages that ad units are deployed to. [Read more about how derive categories for category targeting from page URLs](../inventory/#ad-units). Once you've set up your ad units, you can add multiple categories by separating each individual one by a comma. For instance, inputting sport, color/blue, color/red/crimson will match any of sport, sport/ANY-VALUE-HERE, color/blue, color/blue/ANY-VALUE-HERE, color/red/crimson or color/red/crimson/ANY-VALUE-HERE. In addition, a category of golf will match any of domain.com/golf/news, domain.com/news/sport-golf-good and domain.com/news/sport\_golf\_good.

![Category targeting can be added to line items and creatives](../../../.gitbook/assets/201811-advertising-line-item-category-targeting.png)

{% hint style="info" %}
You can create a library of pre-defined categories to simplify targeting \(this way you don't have to remember or look up your site's category structure every time you want to use category targeting. [Read more about how to create a library](../admin.md#reference-data).
{% endhint %}
{% endtab %}

{% tab title="Geospatial areas" %}
Geospatial targeting can be used when you want to closely manage which geographical locations are to be targeted. Simply click the polygon or rectangle icon on the right hand side of the map and start drawing.

![Geospatial targeting can be used for line items and creatives](../../../.gitbook/assets/201811-advertising-line-item-geospatial-targeting.png)

{% hint style="info" %}
If you want to define a default position from which you can start drawing \(for instance the area that you use the most\), you can define this in the [Admin &gt; Network section](../admin.md#network).
{% endhint %}

{% hint style="info" %}
If you ask your users or customers for permission to track their locations, you can send this to Adnuntius for improved targeting. Out of the box, Adnuntius uses [Netacuity Pulse](https://www.digitalelement.com/solutions/netacuity-pulse/) to provide you with excellent location targeting.
{% endhint %}
{% endtab %}

{% tab title="Locations" %}
Named locations lets you search for specific locations and to add them to a list locations that you want to target with your ad.

![Location targeting can be used for line items and creatives](../../../.gitbook/assets/201811-advertising-line-item-location-targeting.png)

{% hint style="info" %}
Adnuntius uses [Netacuity Pulse](https://www.digitalelement.com/solutions/netacuity-pulse/) to provide you with excellent location targeting.
{% endhint %}
{% endtab %}

{% tab title="Devices" %}
Device targeting lets you target ads to specific devices. Simply choose the device types, operating systems or brands, hit "save" and your ad is targeted.

Adnuntius has access to a range of browser, hardware and platform information. If there is any data you would like us to add to the device targeting list, then feel free to send us a request on support@adnuntius.com. You can also use key value targeting \(see next tab\) to target specific devices using any of these keys:

* browserName 
* browserVendor 
* browserVersion 
* hardwareFamily 
* hardwareModel 
* hardwareName 
* hardwareVendor 
* platformName 
* platformVendor 
* platformVersion

![Device targeting can be added to line items and creatives](../../../.gitbook/assets/201811-advertising-line-item-device-targeting.png)

{% hint style="info" %}
Adnuntius uses [51Degrees Device Detection](https://51degrees.com/device-detection) to provide you with excellent device targeting.
{% endhint %}
{% endtab %}

{% tab title="Key values" %}
Key values is your regular swiss army knife of targeting, as you can send any key and value to Adnuntius with any ad request. You can add multiple values for every key by separating individual values by a comma. For instance, inputting red, blue, green as values means that the key will match any of red, blue or green. [Read more about adn.js and key value targeting](http://admin.adnuntius.com/adn).

You can add key values with the boolean operators AND, OR and NOT.

![Key value targeting can be added to line items and creatives](../../../.gitbook/assets/201811-advertising-line-item-keyvalue-targeting.png)
{% endtab %}

{% tab title="Keywords" %}
Keywords are words in written text on any page where the ad is shown. Targeting a keyword therefore means that you will target an ad to any page where the keyword is part of the text. Please note that Adnuntius uses data management platform partner Cxense to power this feature, and keyword targeting will not work without a Cxense account.

You can add key values with the boolean operators AND, OR and NOT.

![](../../../.gitbook/assets/201811-advertising-line-item-keyword-targeting.png)

{% hint style="info" %}
Are you interested in testing Cxense as a data management platform? Contact us at support@adnuntius.com and we will help you out.
{% endhint %}
{% endtab %}

{% tab title="Retargeting" %}
Retargeting can be used to target an ad to users who have performed specific actions. For instance, you can retarget a user that have put a product in your shopping cart, but didn't actually purchase it. Or you can retarget a user who has read about sports the last 30 days.

You can add multiple values for every retargeting key by separating individual values by a comma. For instance, inputting red, blue, green as values means that the retargeting key will match any of red, blue or green.

To register targets, include the image tags in the example onto your web page. The example below registers the following three targets:

* shop with value petshop.com.au will last as a target for 2 592 000 seconds \(30 days\) 
* age with value 39 will last as a target for 5 184 000 seconds \(60 days\) 
* sport with value handball will last as a target for the default length of time \(usually 30 days\)

```text
<img src="https://delivery.adnuntius.com/pixelr.gif?network=fagpressen&shop=petshop.com.au&expiry=2592000">
<img src="https://delivery.adnuntius.com/pixelr.gif?network=fagpressen&age=39&expiry=5184000">
<img src="https://delivery.adnuntius.com/pixelr.gif?network=fagpressen&sport=handball">
```

![](../../../.gitbook/assets/201811-advertising-line-item-retargeting-targeting.png)
{% endtab %}

{% tab title="DayParts" %}
Day Parting lets you choose the days and times of day that your ad should be shown. You can add multiple day parts.

![Day parting can be added to line items and creatives](../../../.gitbook/assets/201811-advertising-line-item-daypart-targeting.png)
{% endtab %}

{% tab title="Dates" %}
You can add specific dates or ranges of dates to make sure that your line item delivers on the date that it should.

![Dates can be added to line items and creatives](../../../.gitbook/assets/201811-advertising-line-item-date-targeting.png)
{% endtab %}

{% tab title="IP Addresses" %}
Targeting specific IP addresses can be useful, for instance when testing in a limited environment that ads look good before they are released to the whole world. You can add multiple IP addresses by separating each individual IP address by a comma. For instance, inputting 118.16.78.34, 205.112.45.0/24 will match any of 118.16.78.34 and 205.112.45.0 through to 205.112.45.255.

![IP addresses can be assigned to line items and creatives](../../../.gitbook/assets/201811-advertising-line-item-ip-targeting.png)
{% endtab %}
{% endtabs %}



