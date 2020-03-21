---
description: >-
  The Advertising section is where you manage advertisers, orders, line items,
  creatives and explore available inventory.
---

# Advertising

## Concept Summary

| Concept | Description |
| :--- | :--- |
| [Advertiser](advertisers.md) | Adding an Advertiser \(for instance; CocaCola\) is a natural first step when a salesperson has closed a sale with a new buyer. An advertiser can contain multiple orders. |
| [Order](orders.md) | Determines who has access to the campaign, and what set of sites that impressions can be delivered to \(see [Teams ](../admin.md#teams)for more information\). One order can contain multiple line items. |
| [Line item](line-items.md) | Determines start and end dates, delivery objectives \(impressions, clicks or conversions\), pricing, targeting, creative delivery and prioritization. One line item can contain multiple creatives. |
| Creative | The material shown to the end user. Can consist of various assets such as images, text and videos. |
| Reach analysis | An analysis you can run to quickly estimate the volume of matching traffic for a line item.  Does not consider tiers or bids, nor competing line items.Provides you with insights into the delivery of the line item's creatives. You can specify the period you want to look at, the metrics important to you, and how you want the data visualized. Once you have the data interesting to you, you can also download it as an Excel file. You can also do the same to each creative part of the line item. |

## Creatives

Creatives is the material shown to the end user, and can consist of various assets such as images, text and videos. Here is how to work with creatives.

![An example creative](../../../.gitbook/assets/201811-advertising-creative.png)

**Name and state**: Give the creative a name of your choice \(It is always better to use spacing between words rather than underscores, as searching for items later makes the items easier to find\). Adnuntius will always generate a default name, but you can [change how this default naming is set in the Admin &gt; Network section](../admin.md#network). State can be set to _Approved_ \(meaning that the creative is ready to run\) or _Incomplete_ \(meaning that something needs to be changed or added before the creative can run\).

**Creative type** can be set to _Internal_ or _External._ Internal is what is mostly used, and means any creative you are designing or uploading yourselv. External creatives are relevant to publishers who want programmatic ads on their sites, and means creatives that are fetched from SSPs that Adnuntius is integrated to, such as Pubmatic. The tabs below shows how to set up an external creative, while the rest of this section is about creating internal creatives.

{% tabs %}
{% tab title="External Demand Source" %}
After choosing Creative type "External", the first step is to select your external demand source. Please note that if you haven't set this up yet, you will need to do so by first [adding an external demand source](../admin.md#external-demand-sources), and then [creating external ad units](../inventory/#external-ad-unit).

![First step: add an external demand source](../../../.gitbook/assets/201811-advertising-creative-external-1.png)
{% endtab %}

{% tab title="External Ad Unit Targeting \(Optional\)" %}
If you want to target your programmatic creative to specific ad units, you can use external ad unit targeting. Please note that if you haven't created external ad units yet, [you can learn how to do so here](../inventory/#external-ad-unit).

![Example where the creative is targeted to one external ad unit](../../../.gitbook/assets/201811-advertising-creative-external-2.png)
{% endtab %}
{% endtabs %}

**Layout** is where you add the look, feel and behavior of your creative. Adnuntius comes with an out-of-the-box library of layouts like responsive images, interstitials, Flash, HTML and more, but you can create any layout to create the perfect match with your website, using elements like media files, text and click URLs. [Learn how to manage layouts](../admin.md#layouts).

{% hint style="info" %}
When you choose a layout you will see that the "Layout's components" box changes. This is because different layouts may need different information \(multiple images, text input, or anything else your heart desires\). The system will ask you what it needs to assemble the creative.
{% endhint %}

**Uploaded assets** is where you upload the files needed to assemble the creative. You can click to upload, or drag and drop. You can also drag and drop multiple files into the file drop field, and get all files into the creative with one move.

**Share of voice:** if you have more than one creative on your line item, you can control delivery of this creative compared to others in the line item by giving it a percentage. If you give two creatives 50% each, then the line item will ensure that each creative delivers the same number of impressions. If you give three creatives 50% each, then each creative will get 33% of the impressions.

**Targeting:** You can add targeting to both the line item and your creative. As the targeting criteria are identical for both, please have a look at the [line item documentation](./#line-item) to see how you can target creatives.

**Width x Height** means the dimensions of your creative. These dimensions are only used to find out which ad units are eligible to show this creative. An ad unit will always be set up with minimum and maximum width and height, and if an ad unit can only show 980x300 pixels, then a creative with added dimensions 980x150 will not show in this ad unit.

**Creative preview** gives you a preview of the creative. Please note that not all layouts will give you a preview \(in which case the system will tell you\). But if Adnuntius cannot give you a preview, you can click to "preview on a black page" and the creative will render as it will be shown on a page.

{% hint style="info" %}
You can also generate previews from the line item page by clicking the small eye next to the creative name. From there you can choose to preview the creative on a blank page, or if you want to generate a URL. When you generate a URL, Adnuntius will attempt to serve the creative into all eligible ad units on whatever URL you added.
{% endhint %}

**Creative tag**: As a marketer, or a publisher that for any reason wants to market an Adnuntius creative through a third party adserver, this is the place to generate a code that can be sent off to the publisher that owns that adserver.

## Reach analysis

**Line item** allows you to choose a line item from which you want to copy the details \(targeting criteria and creative sizes\). This means that you can quickly fill in the details of the reach analysis by choosing a representative line item first.

{% hint style="info" %}
If you have packages you often sell \(for instance ad products consisting of set sizes or targeting criteria, then you should consider creating a template line item for each of these packages. Once you have done that, then simply copy the details from the template line item into the form each time you want to quickly run an analysis.
{% endhint %}

**Details to fill in:** If you choose not to use another line item as a template, then you can fill in the intended start date, end date, team, creative sizes and targeting criteria.

**Interpreting the results:** Let's say that you run a reach analysis, and then get a response like this:

> Audience estimated to match **88.46%** of all traffic across your network. A line item could deliver between:
>
> * **17 342 539** and **17 564 062** impressions
> * **16 047 479** and **16 260 853** rendered impressions
>
> Of those impressions above, between **443 047** and **517 135** impressions would face no competition from other line items.

88.46% means that, with the ad units and targeting you provided, you will reach 88.46% of all the ad impressions you can serve with Adnuntius. Furthermore, you will see the range of impressions and rendered impressions you will be able to serve. Lastly, you will see that with only 443 047 to 517 135 impression being without competition from other line items, there are certainly competitors for the impressions you are trying to book for the line item. These competitors are listed in the reach analysis result too. In the list you will find the overlap, so that you can see which campaigns you can make changes to in order to free up more space.

