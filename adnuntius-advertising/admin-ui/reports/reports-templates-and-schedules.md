---
description: >-
  This section teaches you have to create and manage reports, reporting
  templates and scheduled reports.
---

# Reports, Templates and Schedules

## **Reports and Scheduled Reports**

**Reports** is an overview of the reports that have run in the past. This overview allows you to quickly retrieve a report that the system has previosuly generated, and to open them. 

**Report schedules** is an overview of all scheduled reports that are running. From here you can archive or delete a scheduled report so that it stops running and no longer sends emails to any receivers. 

## **Report Templates**

Report templates allow you to determine how a\(n automatically generated\) report by Adnuntius should look like, regarding the insights it should produce, and using which metrics. Here is how you create a template.

![in this example you see how to modify an existing report template.](../../../.gitbook/assets/202003-report-templates.gif)

**Name, description and logo:** Give the report template a name and description \(optional\) of your choice. If you have [uploaded a logo in the Admin &gt; Network section](../admin.md#network), you can also preview the logo that will be used in reports when they are generated. 

**Report template type**: Choose the report type you want to create based on this template. For example, if you choose "line item", then this template will be made available for users when they create a report for line items. The types you can choose between: 

* Line item
* Order
* Salesperson
* Advertiser
* Ad unit
* Site
* Site group
* Earnings account
* Network \(creates day-by-day breakdown of all metrics per advertiser, per line item, per ad unit\).

**Report components** are widgets you can add to the template to display reporting data. After you've chosen one or more widgets you can decide which metrics \(impressions, viewables, clicks, earnings etc\) that you want to show inside that widget. Example: If you are a publisher intending to automatically send reports to advertisers, perhaps you don't want to show the earnings? If this is the case, you can disable earnings from being shown.

{% hint style="info" %}
You can show one report component several times in the same template by choosing it, saving, clicking "Add report component" again, and then choosing it again. This may be useful if you for instance want to split up daily breakdown charts, and have one of them display clicks and clickrates, and another one display impressions and viewables. 
{% endhint %}

![Once a template is created you can generate a \(scheduled\) report from for instance a line item.](../../../.gitbook/assets/202003-report-template-line-item-example.png)

