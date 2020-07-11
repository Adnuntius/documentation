---
description: >-
  This page provides an onboarding guide for network owners intending to use the
  Adnuntius Buying Network to onboard buyers and sellers in a private
  marketplace.
---

# ABN For Network Owners

This guide covers the following.

| Actions | Explanation |
| :--- | :--- |
| [Creating and training publisher users](https://docs.adnuntius.com/onboarding-guides/adnuntius-buying-network/abn-for-network-owners#creating-publisher-users) | How to create access for publishing partners so that they can manage their inventory.  |
| [Creating and training buyer users](https://docs.adnuntius.com/onboarding-guides/adnuntius-buying-network/abn-for-network-owners#creating-publisher-users) | How to create access for buyers so that they can create and manage campaigns.  |
| [Defining supported formats](https://docs.adnuntius.com/onboarding-guides/adnuntius-buying-network/abn-for-network-owners#defining-supported-formats) | How to determine the creative formats buyers should be able to buy. |
| [Invoicing](https://docs.adnuntius.com/onboarding-guides/adnuntius-buying-network/abn-for-network-owners#invoicing) | How to ensure that buyers are invoiced and  |
| [Setting up report templates](https://docs.adnuntius.com/onboarding-guides/adnuntius-buying-network/abn-for-network-owners#setting-up-report-templates) | How to set up reports that can be generated and scheduled by publishers and buyers. |

## Creating Publisher Users

Whenever you get a new publisher onboard your network, you can create users for them so that they can access and manage their own publishing inventory. Here is how you create roles, teams and users with the right permissions, and finally an earnings account that controls the publisher's revenue share.

**Roles.** This is a one-time setup job, so if you already have the roles below in place, you can skip this point whenever you set up new users. You will need two roles in order to create users with the right permissions; a network role and a team role. 

1. Admin role. Go to [Admin &gt; Roles](https://admin.adnuntius.com/admin/roles) and click “new”. Give the role a name of your choice \(for instance “Network Publisher Admin”, choose role type “internal”, role scope “network” and then finally the permission “AX Publisher Admin”. Then click save. Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information. 
2. Team role. Go to [Admin &gt; Roles](https://admin.adnuntius.com/admin/roles) and click “new”. Give the role a name of your choice \(for instance “Network Publisher Admin”, choose role type “internal”, role scope “team” and then finally the permission “AX Publisher”. Then click save. Click [here ](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md)for more information.

**Teams.** Once your roles are set up, you can proceed to create teams. Teams determine the content that users shall have access to. Whenever you bring a new publisher onboard you should create a new team, so that invited users can access this inventory, but not the inventory of other publishers, or buyers.

1. Go to [Admin &gt; Teams](https://admin.adnuntius.com/admin/teams) and click “new”. Give the team a name of your choice, for example “Team \[publisherName\]”. Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information on teams. 
2. Choose type “AX Publisher”.
3. If you have created the publisher’s site\(s\) on behalf of the publisher, then you can choose those sites to ensure that the publisher will have access to these. If you want to let publishers create this content on their own, just click save without choosing any sites.

**Users.** Once you have created a team for the publisher, you can go to the last step, which is to create a user. Please note that once you have created one user for the publisher, that user can invite more users with the same permissions. So, you only need to create the first user before letting that user create more.

1. Go to [Admin &gt; Users](https://admin.adnuntius.com/admin/users) and click “new”. Provide the user’s email address, name and display name \(display name is the name that will be displayed in the upper right corner of the user interface\). Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information on users.
2. Choose the advertising network role that you created earlier \(“Network Publisher Admin” if you followed the naming example above\).
3. Under the team you’ve created for the user, choose the role you created earlier \(“Team Publisher Admin” if you followed the naming example above\). 
4. Lastly, click save. When you’ve clicked save an invitation email will be automatically be sent to the user.

**Earnings account.** Finally create an earnings account for the new publisher. Earnings accounts make it easy to track the revenue that each publisher makes, and to calculate their revenue share if you are operating on such a model. Go to [Earnings Accounts](https://admin.adnuntius.com/earnings-accounts) and click "new". Click [here ](https://docs.adnuntius.com/adnuntius-advertising/admin-ui/inventory/earnings-accounts)for more information on how to create an earnings account. 

{% hint style="info" %}
Remember to use the revenue share field on earnings accounts in order to automatically calculate what publishers should earn.
{% endhint %}

Once these steps are completed and publishing users logs in, they will be able to create sites and ad units under their own earnings account, create reports for their own inventory, and invite users to join their own team. [Here you will find a guide that new users can use to get acquainted to the system.](abn-for-publishers.md)

## Creating Buyer Users

Whenever you get a new buyer onboard your network, you can create users for them so that they can access and manage their own advertisers \(for agencies\) and campaigns. Here is how you create roles, teams and users with the right permissions.

**Roles.** This is a one-time setup job, so if you already have the roles below in place, you can skip this point whenever you set up new users. You will need two roles in order to create users with the right permissions; a network role and a team role.

1. Admin role. Go to [Admin &gt; Roles](https://admin.adnuntius.com/admin/roles) and click “new”. Give the role a name of your choice \(for instance “Network Advertiser Admin”, choose role type “internal”, role scope “network” and then finally the permission “AX Advertiser Admin”. Then click save. Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information.
2. Team role. Go to [Admin &gt; Roles](https://admin.adnuntius.com/admin/roles) and click “new”. Give the role a name of your choice \(for instance “Network Advertiser Admin”, choose role type “internal”, role scope “team” and then finally the permission “AX Advertiser”. Then click save. Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information.

**Teams.** Once your roles are set up, you can proceed to create teams. Teams determine the content that users shall have access to. Whenever you bring a new advertiser onboard you should create a new team, so that invited users can access this inventory, but not the inventory of other advertisers, or publishers.

1. Go to [Admin &gt; Teams](https://admin.adnuntius.com/admin/teams) and click “new”. Give the team a name of your choice, for example “Team \[advertiserName\]”. Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information.
2. Choose type “AX Advertiser”. Then click save.

**Users.** Once you have created a team for the advertiser, you can go to the last step, which is to create a user. Please note that once you have created one user for the advertiser, that user can invite more users with the same permissions. So, you only need to create the first user before letting that user create more.

1. Go to [Admin &gt; Users](https://admin.adnuntius.com/admin/users) and click “new”. Provide the user’s email address, name and display name \(display name is the name that will be displayed in the upper right corner of the user interface\). Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information.
2. Choose the advertising network role that you created earlier \(“Network Advertiser Admin” if you followed the naming example above\).
3. Under the team you’ve created for the user, choose the role you created earlier \(“Team Advertiser Admin” if you followed the naming example above\). 
4. Lastly, click save. When you’ve clicked save an invitation email will be automatically be sent to the user.

[Here you will find a guide that new users can use to get acquainted to the system.](abn-for-buyers.md)

## Defining Supported Formats

Whenever a buyer creates a [creative](../../adnuntius-advertising/admin-ui/advertising/creatives.md), that user needs to first choose a [layout](../../adnuntius-advertising/admin-ui/admin/layouts.md). A layout defines the look and feel of an ad, and lots of other properties. Here are some example use cases: 

* You can allow buyers to use third party creative tags from other ad servers, or you can force buyers to upload all material directly to Adnuntius, if you are concerned about latency or data leakage.
* You can allow buyers to buy native ads \(image and text ads\), where the look and feel of the native ad will be adapted to the design of the publishing page.
* You can allow for responsive images that shrink or expand to the width of the publishing content, or you can restrict buyers to only buy static images. 

To define supported layouts: 

1. Go to [https://admin.adnuntius.com/admin/layouts](https://admin.adnuntius.com/admin/layouts) and create the layouts that you want to offer, or choose from the list. 
2. Keep the ones you want to offer in the state "active". Then, archive the ones you do not want to offer. If you later want to re-activate them, just go to the archive and click to activate. All changes are real-time. 

## Invoicing

As a network owner you will need to make sure that buyers are invoiced, and that publishers receive their share of revenue. If you want Adnuntius to handle invoicing, contact us at [support@adnuntius.com](mailto:support@adnuntius.com) and we will help you get started.

**Invoicing Buyers.** Let's say that we just entered the month of July, and you want to send out invoices for June. Go to [https://admin.adnuntius.com/queries/advertiser](https://admin.adnuntius.com/queries/advertiser) and choose the period of last month. Under grouping, make sure that you group by "teams" so that you will see any agencies that operate advertising across multiple Advertisers, and should receive one invoice across those Advertisers.

{% hint style="info" %}
Remember: whenever you onboard an agency or advertiser, that entity will be set up as a Team.  So when you group by Team, this means that you will see any agency that manage multiple advertisers. Then, you will be able to invoice the agency rather than each advertisers \(if this is the agreement you have with that agency\).
{% endhint %}

Alternatively, you can also [integrate](../../adnuntius-advertising/admin-api/) Adnuntius to your invoicing system in order to automate the process. 

**Informing Sellers**. Again, let's say that we just entered the month of July, and you want to send out reports  for June so that publishers can invoice you for the right amount. You can inform sellers in two ways: 

* Go to [https://admin.adnuntius.com/queries/earnings-account](https://admin.adnuntius.com/queries/earnings-account) and generate a report. This provides the information to manually inform publishers how much they have earned. The column "Cost" shows the gross revenue, while "Revenue Share" shows how much publishers have earned after costs are withdrawn. To understand how revenue shares are defined for publishers, please see [earnings accounts](../../adnuntius-advertising/admin-ui/inventory/earnings-accounts.md).
* Alternatively you can create automated reports being sent to publishers. Read more below on how to set up report templates, and to learn specifically how to set up monthly revenue reports for publishers. 

## Setting Up Report Templates

Report templates define what kind of reports users should be able to create, and also define which kind of scheduled reports can be created. In the following we will describe a few examples that can be useful.

**Monthly revenue reports to publishers.** This is a useful report as it can be used to automatically inform publishers what they should invoice you, thus reducing your manual work. In order to create this, go to [https://admin.adnuntius.com/report-templates](https://admin.adnuntius.com/report-templates) and click to create "new", then follow these steps.

| What to do | Example if applicable |
| :--- | :--- |
| Give the template a name and description, then choose type "earnings account". | Publisher Revenue Report |
| Add the component "text", and use this text box to inform publishers why they receive this report and what to do about it. | You receive this report because you are a publisher part of Adnuntius. This entitles you to revenue from ads shown on your website. Please send an invoice for the total earnings in this report to finance@adnuntius.com. Our address: Adnuntius Services AS, Dueveien 21, 1448 Drobak, Norway.  |
| Add the "daily breakdown" widget to provide the numbers. Ensure that the widget shows the "Revenue Share" numbers. Then click save. | NA |
| Go to Earnings accounts and add a scheduled report to all publishers who should receive one \(publishers can also do this themselves\). | How to: [see here](../../adnuntius-advertising/admin-ui/inventory/earnings-accounts.md). We also recommend you to run a test report from a test earnings account so that you can ensure that you have set everything up correctly.  |

**Weekly viewability reports to publishers.** This report is useful because it informs publishers about viewability on each and every ad unit. Buyers care about viewability, so giving publishers the numbers to improve the quality of their inventory will increase the quality of the overall network. In order to create this, go to [https://admin.adnuntius.com/report-templates](https://admin.adnuntius.com/report-templates) and click to create "new", then follow these steps.

| What to do | Example if applicable |
| :--- | :--- |
| Give the template a name and description, then choose type "site". | Site viewability report |
| Add the component "text", and use this text box to inform publishers why they receive this report and what to do about it. | This report shows if your ad units are viewable. An impression is viewable when 50% or more of an ad has been shown for 1 second or longer. Buyers want high viewability as ads that were never in the user’s screen will never have any effect. There is no right answer, but our experience suggest that buyers want viewability of 75% or higher. If you see ad units in this report with low viewability and want to improve performance, consider actions such as lazy loading.  |
| Add the "ad unit breakdown" widget to provide the numbers. Ensure that the widget shows the "Viewabiltiy" numbers. Then click save. | NA |
| Go to the sites and add a scheduled report for all sites that should have one \(publishers can also do this themselves\). | How to: [see here](../../adnuntius-advertising/admin-ui/inventory/sites.md). We also recommend you to run a test report from a test site so that you can ensure that you have set everything up correctly.  |

**Monthly spending reports to buyers.** This report is useful because it informs buyers about their spending. In order to create this, go to [https://admin.adnuntius.com/report-templates](https://admin.adnuntius.com/report-templates) and click to create "new", then follow these steps.

| What to do | Example if applicable |
| :--- | :--- |
| Give the template a name and description, then choose type "Advertiser". | Advertiser Spending Report |
| Add the component "text", and use this text box to inform advertisers why they receive this report. | This report shows how much you as an advertiser have spent with Adnuntius Buying Network in the period since the last time you received this report.  |
| Add the "Advertiser Totals ", "Daily Breakdown" and "Line Item Breakdown" widgets \(and other information you want to share\). Then pick the numbers you want to share. | NA |
| Go to the advertisers and add a scheduled report for all advertisers that should have one \(advertisers can also do this themselves\). | How to: [see here](../../adnuntius-advertising/admin-ui/advertising/advertisers.md). We also recommend you to run a test report from a test advertiser so that you can ensure that you have set everything up correctly.  |

**Line item reports to buyers.** This report is useful because it informs buyers about the performance of their campaigns. In order to create this, go to [https://admin.adnuntius.com/report-templates](https://admin.adnuntius.com/report-templates) and click to create "new", then follow these steps.

| What to do | Example if applicable |
| :--- | :--- |
| Give the template a name and description, then choose type "Line item". | Campaign Performance Report |
| Add the component "text", and use this text box to inform advertisers why they receive this report. | This report shows how your campaign performs. |
| Add the "Line Item Totals " and "Daily Breakdown" widgets \(and other information you want to share\). Then pick the numbers you want to share. | NA |
| Go to the line items and add a scheduled report for all line items that should have one \(advertisers can also do this themselves\). | How to: [see here.](../../adnuntius-advertising/admin-ui/advertising/line-items.md) We also recommend you to run a test report from a test advertiser so that you can ensure that you have set everything up correctly.  |

