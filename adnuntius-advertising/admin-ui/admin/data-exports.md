---
description: Lets you export data to a datawarehouse or similar.
---

# Data Exports

{% hint style="info" %}
Need help setting up data exports and dashboards? We can help you! Contact us at [support@adnuntius.com](mailto:support@adnuntius.com) for more information.
{% endhint %}

You can set up as many exports as you want, to Amazon S3, S3 compatible buckets, Google Cloud and/or to Azure. You can also download logs at sftp://data.adnuntius.com:8164, using your Adnuntius username and password to authenticate.&#x20;

To create a data export, go to [https://admin.adnuntius.com/admin/data-exports](https://admin.adnuntius.com/admin/data-exports) and click "New" in the upper right corner.&#x20;

<figure><img src="../../../.gitbook/assets/image (58).png" alt=""><figcaption></figcaption></figure>

**Data type for export:** if you choose "stats" you can export to Google Sheets. You will find the description for how to do this further below. Here we continue with the alternative "raw log".&#x20;

## Raw Log Exports

**Teams:** If you have access to multiple [Teams ](../users/users-teams-and-roles-1.md)you can choose to get data from all teams, or specific teams.&#x20;

**Event types:** export all events or choose events as in the screenshot below.&#x20;

<figure><img src="../../../.gitbook/assets/image (59).png" alt=""><figcaption></figcaption></figure>

**Export types** lets you choose to export to S3, S3 compatible buckets, Google Cloud and to Azure.

## Export to Google Sheets

A Google sheets data export requires some setup in Google before you can start using it. Specifically you need to provide a google service account JSON config and a spreadsheet ID for which the service account has editor permissions. Here are the steps required to get this working.

The most important fields to configure to have a successful data export are the Spreadsheet ID, Sheet Title and Credentials as JSON.

* Spreadsheet ID - is the unique ID of a google sheets spreadsheet
* Sheet Title - is the title of a tab in a google spreadsheet
* Credentials as JSON - is the Json file for a google cloud service account

<figure><img src="../../../.gitbook/assets/image (60).png" alt=""><figcaption></figcaption></figure>

### Credentials as JSON

To obtain credentials for the "Credentials as JSON" field you need to create a Service account. Here is how to do this - this process is the simplest set of steps that can possibly work.

First of all you will need a Google account (attached to your organisation rather than a personal account). Login to the google developer console ([https://console.cloud.google.com/](https://console.cloud.google.com/)) and create a new Project (or use an existing project if there is one).

<figure><img src="https://lh7-us.googleusercontent.com/_VrN8YVA7aPz-6yjAx7dbk5opyBIcgJbbjFWu-BNXieW36gZ5thyvXKvwRXr1yOA-mGe3zBg4Mw9--X8yMeN_RcdHaaMwSOHNpJfxxhuqM02NttRWhNsexCdt2101-CqbKvKuRyIPRlTmOxyVHsuNXw" alt=""><figcaption></figcaption></figure>

When your project is created, click "Select Project", click on "APIs & Services" and choose "Enabled APIs & services". Click "Enable APIs & services".

<figure><img src="https://lh7-us.googleusercontent.com/Y6RbK3Jk1M7bxePuhAIB13k2j0K_eAltmIXAxluJwmTr4f4a6441Kqvo5FagGikgBkhtd-w9ANdw7qmDbGwQjvMSbKcfiRjveRxadH6UIlzYNUsVESGYOUxmslOE9-rs_BawKM_9NjY1jJDfhPqcOc0" alt=""><figcaption></figcaption></figure>

![](https://lh7-us.googleusercontent.com/mudnZsyzKqCYDuKW2V36fQDjyL-2wZn1mgCXAtMj1zZFsoM2PiIvJlIV5SVWbaw24c8jXTrJ50P7yonM7kUVeZvVSId2BbOsT40AajZo-3qcs3KAxSBQ6v67lcZr4DPMBBkllZfZi1vgOZQjZ7xDvVE)

Search for "google sheets api" and select the Google Sheets API after the search completes.

<figure><img src="https://lh7-us.googleusercontent.com/g7fXqHBw0XN-9NQcO6kx4Kx7stARthG-JGRu1iPQ3HLRtGegJna1mABd0kc_qaRwyiNS0RdXPzBoqJnbVf9Ae1TEOS7dcE7tzlABCirlJ5GDzKBhZ4jClephRVbKXo0t53AL89Tr6mOWiHvbSIfwVlU" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-us.googleusercontent.com/W2CSOy--2dH40bgwcE6qL2-HhwLtFmxg1kl0ChXULVVS7YLkok2TGWacdHdb8RkTwINzgnGAFMSmII23i6rY7Qc3vxV8uciHgP2MkXWyZBPR8yGUQST8IJkqIbdmD45UXjlJrf6qb7eHN8W_9cWjXvQ" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-us.googleusercontent.com/8d1A8GMwn6tYlywiIPvJz8i4SOUn6-xp6qdBUWJzsdryK3OXPGATQya1ZxdnIHI_laNQ_ZMAQKNf45dd5lAexOY7zeWHzFH4yJAlBJQ0imMXrqy_gYnCjKxtO_bwwq96uqYZPaS1TBF6obbSlTfi1RU" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-us.googleusercontent.com/6IB5ZtJ3tzRc9kgkc_AizJ4LWDZM-shiF1qP-wQ1WplGlBdsqjWYu5e_VwPD-DScuyVLzSVJVXk1MhGiQ6qcrRiaRw6khP15d2cYYg-zoa5wvOVJ_NXLIjjzvfYAfSKD-dGNIEBYl6_ePYTse4Zozhg" alt=""><figcaption></figcaption></figure>

Provide the Service account name and Service account ID in the required fields and click "Create and Continue".&#x20;

<figure><img src="https://lh7-us.googleusercontent.com/ZWVfmxNXTDPY1x8GxIuFCrlQ5R0OibeDZOsouszN5s8kvXeXXfDLph24FvNNpt5_3dWa3DXrveddSyb9P6dij_7uSEDz1LmrRUZOyVmIAqr8etjCN-GZEmPbervB7Ta_HZ0BBNj0GMFw9CPbADJBlS4" alt=""><figcaption></figcaption></figure>

You can skip the "Grant this service account access to project" section, just click "Done". Click the "Service account email address" link. Next, click the "Keys" tab.&#x20;

<figure><img src="https://lh7-us.googleusercontent.com/WIX_v1L3ewbk7J_C9g8l-X0PudOd8WtNWyJq9Xwnw36IHhM1jx1L93u6VRJY1EHBpwAUKkqoj88Y1QIxTsGwWxLZMSO0_Garza4ITyShADRNMeMT4_yHVLvVMRZUs8bD67GfTPjIUhQNkLU3az_xVZA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-us.googleusercontent.com/sLxtOmIsK0usGFUygL3xs9STUtDMM2kRdR-oVuUwTjWozv7Q7-g2Uoa0VRE-csFa7wRJHZqc0vDxXB9zsnCU8jQ-r13kiMJLk_I0tXM33fn3irXDXH-_Vu_d4LEDw_QUPCYVpHvkOKuCYT6pwkA6cqU" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-us.googleusercontent.com/q-PoP-v8wU6xrHS7WgCIc_TukzEyj9pmoQUWZYqEgGF4SmqPCPvqjCvf7mLVlPVb8f9I8ZHnhohAUMG5m8Xtc3_WdZT-QQz-PuRHI0sQu3BgHGtH4idmxJ52Tsbes8UXjYn-2Lxd3fVdFiYAif9Iglw" alt=""><figcaption></figcaption></figure>

This step will automatically download the JSON key to your computer, you can find it in the Downloads folder (wherever your browser automatically saves files), or else your browser will prompt you to save it.

<figure><img src="https://lh7-us.googleusercontent.com/s2T3zWM2R_R3jRTO_giuYFieDiQKQNb8V7nlGH2srBm5NWP7LXSx5vKvGFQKLujhMrDmVawVC2GOT9wNVsiZx-otiSRjSVOfAifb-kEWwN-1DeF1fXjSC3xYtT_v9eclxBmdnUmOeDU1g-axUPKkl7I" alt=""><figcaption></figcaption></figure>

This JSON file is what you need to copy the contents of to the "Credentials as JSON" field in your Adnuntius Export. The format of the JSON file will look like below (the private key from the example below for brevity's sake), and you just need to copy the contents of this file directly into the field, don’t copy and paste the file, you need to copy and paste the content of the file.

```
{
  "type": "service_account",
  "project_id": "adnuntius-sheets",
  "private_key_id": "2b2a586c15ab52a59c0074a5562ddd80ebe6cc51",
  "private_key": "***********",
  "client_email": "adnuntius-sheets@adnuntius-sheets.iam.gserviceaccount.com",
  "client_id": "102065213824739261791",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/adnuntius-sheets%40adnuntius-sheets.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}

```

### Spreadsheet ID

Now that you have a service account you need to grant it access to an existing spreadsheet. Open up your google sheet, you can start by logging onto [https://docs.google.com/spreadsheets/u/0/](https://docs.google.com/spreadsheets/u/0/)

Click the Share button (on the right):

<figure><img src="https://lh7-us.googleusercontent.com/z2s9sWQAlcHZTX9UGL-M0w3_OZP0OIFci7mA4-bHhpwhmMsuGl57QlykauvwOXSWlvMHNwJiisX6vKhzLNUVg1pQ6Bwvz9QJkkYH1CiN5OQ9to9CudiLQEHW4Bh8QvZQ2SdIu40Xx895cHdwlnkF_hA" alt=""><figcaption></figcaption></figure>

At this point you will need the client\_email from the JSON file you created previously (in our example it is [adnuntius-sheets@adnuntius-sheets.iam.gserviceaccount.com](mailto:adnuntius-sheets@adnuntius-sheets.iam.gserviceaccount.com)).

Paste the email address into the Sharing screen and make sure Editor is selected, you can uncheck the Notify people checkbox as its a service account.

<figure><img src="https://lh7-us.googleusercontent.com/5YNTDK6Rfrf7uXhcyKcYmM4mW9e1-rVQzsdV07oCJInWJJL-Ly23Z_HEatzWjiesDKH3VLs4j88fi-Iy2W7OieVEkh3oDosIPcBxRW8qMP7hVeqL69jmIjTmKVDHi0CSMhbVSXqxQWJssjR4tDDoe3o" alt=""><figcaption></figcaption></figure>

This is all that is required to enable data export access.

The Spreadsheet ID can be obtained from the URL, its the series of characters after the /spreadsheets/d/ and before the /edit.

<figure><img src="https://lh7-us.googleusercontent.com/3_U6oupQNcjd4AR2_4LVPpbzvGmNvHD55Mt_PNUUGm-QodBFU6-Q3TLW8qxRZWDfPDq1ZvcrrgdPRFBqysJ9WS0Roh0cOG1RF6GEOvyIf8kUFN5cf-R1B7yQeRmxYNZnppSg_bhVyT7AvZBW-kpL2OE" alt=""><figcaption></figcaption></figure>

So in the above case our spreadsheet ID is: 1smWYTpJyAjCXXvQvC-Fpd17cOk9ZUae7bamKBpXestc

By default if you do not specify a Sheet Title, the data export will use the first tab in the spreadsheet, so for example for our example data export we are going to specify My Data Sheet as the spreadsheet title:

<figure><img src="https://lh7-us.googleusercontent.com/29McRiCtaJkm8-PEwSXDETClsBQ-sXPm12iI5FAiNND76d5eFIqplRqgVykjm86oS9618Yd44eq267nrlDc2l7Yd1rBhgniRRAvoUR7vXS7FVHtTAispz1FEW0cpM5YO6kD8rNYE8qnobTA3hsDRjcE" alt=""><figcaption></figcaption></figure>

#### Troubleshooting

The following validation warnings might occur:

_Please check the Spreadsheet 1smWYTpJyAjCXXvQvC-Fpd17cOk9ZUae7bamKBpXestc exists_

This means that either the Spreadsheet ID is wrong or you have not granted Editor access to the service account.

Currently there is a limitation in forcing a revalidation of the credentials you need to change something, even if all you have done is properly grant access to the service account, just change the Description and click Save again, this will revalidate the config, as soon as you get to a point where there are no warnings your export should work.
