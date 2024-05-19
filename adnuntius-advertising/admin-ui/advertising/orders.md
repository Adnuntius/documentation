---
description: An order lets you set targets and rules for multiple line items.
---

# Orders

An Order belongs to an Advertiser, and can contain multiple Line Items as its children. To understand the organization of advertising objects, [see here](./).&#x20;

## Creating an Order

To create a new order go to [https://admin.adnuntius.com/orders](https://admin.adnuntius.com/orders) and click "New" in the upper right corner.

<figure><img src="../../../.gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>

Start by giving your Order a **name** of your choice. Specify a **team** that this Order should belong to. The team determines which users in Adnuntius will be able to view this Order, while their roles determine if they can make changes to it. [Read more about teams and roles here](https://docs.adnuntius.com/adnuntius-advertising/admin-ui/users).

Specify the **Advertiser** to which this Order should belong. **Objectives** can be used to set goals for multiple Line Items collectively.

If you turn on **Smoothing** to deliver the order's line items evenly over time you can set the start and end dates of the Order and its line items.&#x20;

* When you set start/end dates on an Order and then create a line item, then the Order start/end dates are applied by default to the line item.&#x20;
* The Order start/end dates will always take precedence over line item start/end dates. If you on a line item set a start date earlier than that on the Order, and/or an end date later than that on the Order, then the Order start/end dates will take precedence and cap the start/end of the line item.

**Capping** can be applied to limit the number of impressions, viewable impressions or clicks each user will see per hour, day, week, month, or over the lifetime of the Order. For example, if you set an Order rate limit to 3 impressions per day, and one of two line items show 3 impressions, then the remaining line item cannot show any impressions until the next day.

If a **salesperson** is responsible for the Order then you can assign it to that user. After you've done that, you can create reports showing how much revenue they have earned, their development over time, and more. You will also find the responsible salesperson for each Order in the Order overview found here: [https://admin.adnuntius.com/orders](https://admin.adnuntius.com/orders)

If you have an **ad ops** function in your company then you can add that person to it. When you have done this you can easily keep overview of who has the responsibility for which orders.

![Overview of orders, containing among other salespeople and ad ops users](../../../.gitbook/assets/201811-advertising-order-overview.png)

**Labels** can be added to structure reporting. Let's say you add the label "September" to a set of Orders, and then want to run a report only for this group of Orders. You can then run a report which filters on these specifically. [Read more about reports.](../queries/advertising-queries.md) Labels will also be visible in the global search results on the top center of the screen.

## When an Order is Created

When an Order is created you will be able to see the following tabs.

### Line Items

The line item overview gives you a list of line items created under this Order. Here you can also quickly create a new line item to reserve inventory, and create notes that can be shared with other users with access to the Order.

![Overview of line items belonging to the Order](<../../../.gitbook/assets/202207 Line Item Overview from Order.png>)

### **Order, Line Item and Creative Charts**

Charts provide you with insights into the Order's delivery, and the delivery of its line items and creatives. The numbers presented are the aggregated numbers across all line items belonging to that Order. You can specify the period you want to look at, the metrics important to you, and how you want the data visualized. Once you have the data interesting to you, you can also download it as an Excel file.

![Order chart example](<../../../.gitbook/assets/202207 Order Chart from Order Page.png>)

### Tags

Copy tags to advertise with publishers that are not part of your marketplace. The Javascript version works with any third party system, while the Google version is created for Google Ad Manager specifically.&#x20;

<figure><img src="../../../.gitbook/assets/image (1) (1).png" alt=""><figcaption></figcaption></figure>

### Reports

Reports lets you create a report based on a [report template](../reports/reports-templates-and-schedules.md), that can be shared with others as a link. You can also schedule reports to be created regularly, and whoever should receive the reports. Once you have created a scheduled report and added a recipient, Adnuntius will automatically send reports to recipients, containing the data you have decided on using in the [report template](../reports/reports-templates-and-schedules.md).

![Screenshot showing how a scheduled report can be created](<../../../.gitbook/assets/202207 Scheduled Reports from Order Page.png>)

### Traffic

The traffic tab shows you the delivery of impressions, clicks, viewables and visible impressions across the line items belonging to this order.

![Traffic stats example from the Order page.](<../../../.gitbook/assets/202207 Traffic Stats from Order Page.png>)

### Location

The location tab gives you the traffic to the Order broken down by country.&#x20;

![Location stats example from an Order](<../../../.gitbook/assets/202207 Location Stats from Order Page.png>)
