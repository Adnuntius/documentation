---
description: >-
  An advertiser is a client that wants to advertise on your sites, or the sites
  you have access to. Here is how to create one.
---

# Advertisers

An Advertiser is the top item in the Advertising section, and has children Orders belonging to it. To understand the organization of advertising objects, [see here](../../../../adnuntius-advertising/admin-ui/advertising/).&#x20;

## Creating an Advertiser

To create an Advertiser, [go to Advertisers under the Advertising section](https://admin.adnuntius.com/advertisers), and then click "new" in the upper right corner.&#x20;

![The fields available when creating a new Advertiser.](<../../../../.gitbook/assets/202207 New Advertiser Fields.png>)

Give your advertiser a **name**, and an optional **description** of your choice.

Specify a **team** that this Advertiser should belong to. The team determines which users in Adnuntius will be able to view this Advertiser, while their roles determine if they can make changes to it. [Read more about teams and roles here](https://docs.adnuntius.com/adnuntius-advertising/admin-ui/users).

The **self-service user account** only applies to customers who use Adnuntius Self-Service. More information on this coming soon.&#x20;

**Labels** can be added to structure reporting. Let's say you add the label "Mindshare" to a set of advertisers, and then want to run a report only for this group of advertisers. You can then run a report which filters on these advertisers specifically. [Read more about reports.](../../../../adnuntius-advertising/admin-ui/queries/advertising-queries.md) Labels will also be visible in the global search results on the top center of the screen.

Add an **external reference** if you want to match the advertiser with the same client in another system. For instance, if Coca Cola is registered in your invoicing system with customer ID 123456, then by adding 123456 as an external reference in Adnuntius you can connect these two different entries in the different systems, as one Advertiser.

A **VAT identification number** can be used to register that number for advertisers. If you use [Adnuntius Self-Service](https://adnuntius.com/selfservice) then you can choose to request this VAT number from advertisers when signing up, in which case the number will be stored here.

Adding one or more **IAB categories** to the Advertiser allows you to categorize advertisers so that you can later group them in analyses. You can for example [export data to a cloud service](../../../../adnuntius-data/user-interface-guide/admin/data-exports.md) (or download via an SFTP server) so that you can analyze the performance of different advertiser categories using a BI/analytics tool like Google Data Studio, Tableau or similar.&#x20;

Finally, you can add contact information to the Advertiser, and an address, before clicking to save.&#x20;

## When an Advertiser is Created

Once an advertiser is created you will see the following tabs below the Advertiser information.

### Orders

The order tab gives you an overview of the orders belonging to this advertiser, and their team, salesperson and ad ops responsible.

![Order overview from an Advertiser page](<../../../../.gitbook/assets/202207 Orders from Advertiser Page.png>)

### Line Items

The line items tab gives you an overview of the line items tied to this advertiser through their Orders.

![Example overview of line items from an Advertiser page](<../../../../.gitbook/assets/202207 Line Items from Advertiser Page.png>)

### Charts

Charts lets you see the performance of all advertising belonging to this advertiser. You can select the timeframe to look at, the metrics, the presentation of the data, and you can download the data to Excel or a CSV file.&#x20;

![Example chart from Advertiser page](<../../../../.gitbook/assets/202207 Charts from Advertiser Page.png>)

### Reports

Reports lets you create a report based on a [report template](../../../../adnuntius-advertising/admin-ui/reports/reports-templates-and-schedules.md), that can be shared with others as a link. You can also schedule reports to be created regularly, and whoever should receive the reports. Once you have created a scheduled report and added a recipient, Adnuntius will automatically send reports to recipients, containing the data you have decided on using in the [report template](../../../../adnuntius-advertising/admin-ui/reports/reports-templates-and-schedules.md).

![Screenshot showing how a scheduled report can be created ](<../../../../.gitbook/assets/202207 Reports from Advertiser Page.png>)

### Traffic

The traffic tab shows you the delivery of impressions, clicks, viewables and visible impressions across the line items belonging to this Advertiser.

![Example traffic from an Advertiser page](<../../../../.gitbook/assets/202207 Traffic from Advertiser Page.png>)

### Location

The location tab gives you the traffic to the Advertiser's advertising broken down by country.

![Example locations from an Advertiser page](<../../../../.gitbook/assets/202207 Location from Advertiser Page.png>)
