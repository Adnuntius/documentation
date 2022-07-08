---
description: >-
  An advertiser is a client that wants to advertise on your sites, or the sites
  you have access to. Here is how to create one.
---

# Advertisers

{% embed url="https://youtu.be/a19B-oBfMEc" %}
How to create an advertiser.
{% endembed %}

To create an Advertiser, [go to Advertisers under the Advertising section](https://admin.adnuntius.com/advertisers), and then click "new" in the upper right corner.&#x20;

![The fields available when creating a new Advertiser.](<../../../.gitbook/assets/202207 New Advertiser Fields.png>)

Give your advertiser a **name**, and an optional **description** of your choice.

Specify a **team** that this Advertiser should belong to. The team determines which users in Adnuntius will have access to this Advertiser, while their roles determine if they can view it or make changes to it. [Read more about teams and roles here](../admin/users-teams-and-roles.md).&#x20;

The **self-service user account** only applies to customers who use Adnuntius Self-Service. More information on this coming soon.&#x20;

**Labels** can be added to structure reporting. Let's say you add the label "Mindshare" to a set of advertisers, and then want to run a report only for this group of advertisers. You can then run a report which filters on these advertisers specifically. [Read more about reports.](../reports/advertising-queries.md) Labels will also be visible in the global search results on the top center of the screen.

Add an **external reference** if you want to match the advertiser with the same client in another system. For instance, if Coca Cola is registered in your invoicing system with customer ID 123456, then by adding 123456 as an external reference in Adnuntius you can connect these two different entries in the different systems, as one Advertiser.

A **VAT identification number** can be used to register that number for advertisers. If you use [Adnuntius Self-Service](https://adnuntius.com/selfservice) then you can choose to request this VAT number from advertisers when signing up, in which case the number will be stored here.

Adding one or more **IAB categories** to the Advertiser allows you to categorize advertisers so that you can later group them in analyses. You can for example [export data to a cloud service](../../../adnuntius-data/user-interface-guide/admin/data-exports.md) (or download via an SFTP server) so that you can analyze the performance of different advertiser categories using a BI/analytics tool like Google Data Studio, Tableau or similar.&#x20;

Finally, you can add contact information to the Advertiser, and an address, before clicking to save. Once an advertiser is created you will see the following tabs below the Advertiser information.

{% tabs %}
{% tab title="Orders" %}
The order tab gives you an overview of the orders belonging to this advertiser.

![Orders overview.](../../../.gitbook/assets/202003-advertisers-orders.png)
{% endtab %}

{% tab title="Line Items" %}
The line items tab gives you an overview of the line items belonging to this advertiser.

![](<../../../.gitbook/assets/image (47).png>)
{% endtab %}

{% tab title="Charts" %}
Charts lets you see the performance of all campaigns belonging to this advertiser.

![Charts example.](../../../.gitbook/assets/202003-advertisers-charts.png)
{% endtab %}

{% tab title="Reports" %}
Once an advertiser is created, you can also generate reports, and scheduled reports, based on any of your report templates. To create a scheduled report, just add a name, the report template, the run period and dates, and the receivers.

![Scheduling advertiser reports.](../../../.gitbook/assets/202003-advertisers-reports.png)
{% endtab %}

{% tab title="Traffic" %}
Under the traffic tab you can find reports splitting the traffic for this advertiser by device types, operating systems and mobile brands.

![Traffic example.](../../../.gitbook/assets/202003-advertisers-traffic.png)
{% endtab %}

{% tab title="Location" %}
Locations shows you the advertiser's traffic per location (countries).

![](<../../../.gitbook/assets/image (48).png>)
{% endtab %}
{% endtabs %}
