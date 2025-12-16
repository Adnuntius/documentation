---
description: >-
  An Advertiser is the top item in the Advertising section, and has children
  Orders belonging to it.
---

# Advertisers

## Creating an Advertiser

To create an Advertiser, go to [Advertisers under the Advertising section](https://admin.adnuntius.com/advertisers) and click "new" in the upper right corner.&#x20;

<figure><img src="../../../.gitbook/assets/image (57).png" alt=""><figcaption></figcaption></figure>

Give your advertiser a **name**, and an optional **description** of your choice.

Specify a **team** that this Advertiser should belong to. The team determines which users in Adnuntius will be able to view this Advertiser, while their roles determine if they can make changes to it. [Read more about teams and roles here](https://docs.adnuntius.com/adnuntius-advertising/admin-ui/users).

**Labels** can be added to structure reporting. Let's say you add the label "AgencyX" to a set of advertisers, and then want to run a report only for this group of advertisers. You can then run a report which filters on these advertisers specifically. [Read more about reports.](../queries/advertising-queries.md) Labels will also be visible in the global search results on the top center of the screen.

Next you can choose to activate the Advertiser for **Political Advertising**. This is relevant to those who must comply with the law on political advertising (TTPA). When enabling this, certain fields will become mandatory in order for political ads to serve, and you will be able to provide more information about the advertiser, controlling entities, paying parties and budgets.&#x20;

{% hint style="info" %}
To learn more about the political advertising feature, visit [https://docs.adnuntius.com/political-ads/political-advertising](https://docs.adnuntius.com/political-ads/political-advertising)
{% endhint %}

Add an **external reference** if you want to match the advertiser with the same client in another system. For instance, if Coca Cola is registered in your invoicing system with customer ID 123456, then by adding 123456 as an external reference in Adnuntius you can connect these two different entries in the different systems, as one Advertiser.

A **VAT identification number** can be used to register that number for advertisers. If you use [Adnuntius Self-Service](https://adnuntius.com/selfservice) then you can choose to request this VAT number from advertisers when signing up, in which case the number will be stored here.

Adding one or more **IAB categories** to the Advertiser allows you to categorize advertisers so that you can later group them in analyses. You can for example [export data to a cloud service](../../../adnuntius-data/user-interface-guide/admin/data-exports.md) (or download via an SFTP server) so that you can analyze the performance of different advertiser categories using a BI/analytics tool like Google Data Studio, Tableau or similar.&#x20;

Finally, you can add contact information to the Advertiser, and an address, before clicking to save.&#x20;

## Invite Editor

If you want to Advertiser to fill out their own information you can generate a link that can be sent to them. At the bottom right of the screen below you will see the "Invite Editor" button - click that.

<figure><img src="../../../.gitbook/assets/Invite Editor.png" alt=""><figcaption></figcaption></figure>

You will now see a modal window asking you to fill out the receiver's email and name. When this is sent the receiver will receive an email, containing a link. This link will expire after 24 hours. The link will lead to  a page such as shown in the example below, enabling them to fill out and store the information.&#x20;

<figure><img src="../../../.gitbook/assets/202510 Invite Editor.png" alt=""><figcaption></figcaption></figure>

## When an Advertiser is Created

Once an advertiser is created you will see the following tabs below the Advertiser information.

### Orders, Line Items and Creatives

These tabs give you an overview of the orders, line items and creatives belonging to this advertiser.

![Order overview from an Advertiser page](<../../../.gitbook/assets/202207 Orders from Advertiser Page.png>)

### Charts

Charts lets you see the performance of all advertising belonging to this advertiser. You can select the timeframe to look at, the metrics, the presentation of the data, and download data to an Excel file.&#x20;

![Example chart from Advertiser page](<../../../.gitbook/assets/202207 Charts from Advertiser Page.png>)

### Reports

Reports lets you create a report based on a [report template](../reports/reports-templates-and-schedules.md), that can be shared with others as a link. You can also schedule reports to be created regularly, and whoever should receive the reports. Once you have created a scheduled report and added a recipient, Adnuntius will automatically send reports to recipients, containing the data you have decided on using in the [report template](../reports/reports-templates-and-schedules.md).

![Screenshot showing how a scheduled report can be created ](<../../../.gitbook/assets/202207 Reports from Advertiser Page.png>)

### Traffic

The traffic tab shows you the delivery of impressions, clicks, viewables and visible impressions across the line items belonging to this Advertiser.

![Example traffic from an Advertiser page](<../../../.gitbook/assets/202207 Traffic from Advertiser Page.png>)

### Location

The location tab gives you the traffic to the Advertiser's advertising broken down by country.

![Example locations from an Advertiser page](<../../../.gitbook/assets/202207 Location from Advertiser Page.png>)
