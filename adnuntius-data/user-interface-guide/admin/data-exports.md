---
description: >-
  Data collected and organized with Adnuntius Data can be exported so that you
  can activate the data and create value using any system.
---

# Data Exports

To create a new data export, go to [https://admin.adnuntius.com/admin/data-exports](https://admin.adnuntius.com/admin/data-exports), and click "new" in the upper right corner. First, give your export a **name** and **description** of your choice.  

{% hint style="info" %}
If you want to use your data in Adnuntius Advertising, no export is required; Adnuntius Data is connected to Adnuntius Advertising out of the box, so any segment created is automatically available for line item and/or creative targeting. 
{% endhint %}

Next choose **export type**. You can choose between the following: webhooks \(export the data to a web hook\), SFTP \(use the SFTP protocol to export the data to a remote server\) and Platform 161 \(export user segments to DSP provider Platform 161\). Depending on your choice, you will need to provide the following. 

| Choice | Information to be provided |
| :--- | :--- |
| Web hook | Web hook URL. |
| SFTP | SFTP Host, SFTP Port, SFTP Directory, File Name, SFTP Username, and SFTP Password. |
| Platform 161 | No more information needed. |

Next, choose if you want to export the data in JSON or CSV format. Based on your choice you will have the following choices and alternatives.

| Type | Choices | Alternatives to choose from |
| :--- | :--- | :--- |
| JSON | Data to export | Deltas \(only the changes to your data to periodically update the records in the external system\), or All \(all your data to replace what's in your external system\). |
| JSON | Data source | Export segment definitions,  user segments, or user profiles. |
| JSON | Compression | Export your data without any compression, or compressed in the GZIP format. |
| JSON | Schedule | Hourly \(usually for deltas\), daily \(usually for deltas\) or weekly. |
| CSV | Data to export | Deltas \(only the changes to your data to periodically update the records in the external system\), or All \(all your data to replace what's in your external system\). |
| CSV | Field separator | Comma, or tab. |
| CSV | Array separator | Comma, tab, colon, or semi-colon. |
| CSV | Header | Include a header row with the CSV export, or just show the data \(no header\). |
| CSV | Data source | Export segment definitions,  user segments, or user profiles. |
| CSV | Compression | Export your data without any compression, or compressed in the GZIP format. |
| CSV | Schedule | Hourly \(usually for deltas\), daily \(usually for deltas\) or weekly. |

Lastly, fields for export let you define the fields you want to export. You can export as many fields as you'd like. When you click to add a field, first provie a name of your choice. Then choose the data you want to export. Here are the alternatives.

| Data to export | Explanation |
| :--- | :--- |
| Adnuntius user ID | ID of the User within Adnuntius Data. |
| External system user ID | ID of the User within the External System. |
| List of segments | List of the segments user belongs to. |
| Constant | Constant data \(you can then define the constant's string value and number\). |

