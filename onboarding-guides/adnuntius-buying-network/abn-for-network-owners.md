---
description: >-
  This page provides an onboarding guide for network owners intending to use the
  Adnuntius Marketplace to onboard buyers and sellers in a private marketplace.
---

# For Network Owners

As a network owner there are certain processes that you will need to manage. The goal of this page is to get you ready to manage these processes so that you can effectively run your private marketplace. Not all these processes may apply to you, as this depends on the processes you already have in place, and whether you run a publishing company, an agency/advertising company, or an ad network. This guide covers the following.

| Process step | Resources |
| :--- | :--- |
| **1 Create agreements with buyers and sellers.** Depending on your business model you should have agreements in place with the parties invited to your marketplace as ad buyers or publishers. We have templates to help you get started. | [Templates](abn-for-network-owners.md#agreements-with-partners) |
| **2 Create products.** When you later in this process invite buyers, they will be able to buy campaigns, which starts with selecting a Marketplace Product. You must create at least one product, and here is how you do it. | [Documentation](../../adnuntius-advertising/admin-ui/admin/marketplace-products.md) |
| **3 Create publisher teams and users.** If you are an agency or ad network, publishers that you onboard to your marketplace may expect access to manage their sites and ad units, and to read reports. Here is how you do it. | [Documentation](abn-for-network-owners.md#creating-publisher-users) |
| **4 Train publishers.** If you are an agency or ad network and have invited publishers as users, they may have questions on how it all works, and how to make their traffic available. Here is a list of tasks they can do, and an explanation on how to do them.  | [Documentation](abn-for-publishers.md) |
| **5 Create buyer teams and users.** If you are a publisher or ad network, buyers that you onboard will need access to your marketplace to buy and manage campaigns and more. Here is how you do it. | [Documentation](abn-for-network-owners.md#creating-buyer-users) |
| **6 Train buyers.** If you are a publisher or ad network and have invited buyers as users, they may have questions on how it all works. Here is a list of tasks they can do, and an explanation on how to do them.  | [Documentation](abn-for-buyers.md) |
| **7 Invoice buyers and/or pay out to sellers.** Depending on your business model you may have to invoice buyers, and/or paying to publishers their share of the revenue from buyers. Here is how you do it. | [Documentation](abn-for-network-owners.md#invoicing) |
| **8 Set up report templates.** Report templates determine the reports that users can create from sites, line items and more, and also schedule for email distribution. Here is how you create templates for your customers.  | [Documentation](abn-for-network-owners.md#set-up-report-templates) |

## Agreements with Partners

If you are an agency you need access to publishing inventory; if you are a publisher you need buyers to buy your inventory; and if you're an ad network you're likely to need both. Here you will find agreement templates that can help you along. Please see the comments in the Word documents for guidance, and please note that you may want to add, change or remove certain parts of it.

{% file src="../../.gitbook/assets/202012-agreement-template-network-to-agency.docx" caption="Network or Publisher to Agency" %}

{% file src="../../.gitbook/assets/202012-agreement-template-network-to-publisher.docx" caption="Network or Agency to Publisher" %}

Please note that you are responsible for the content of the contracts; these templates work only as tips.

[Back to the checklist overview.](abn-for-network-owners.md)

## Creating Publisher Users

Whenever you get a new publisher onboard your network, you can create users for them so that they can access and manage their own publishing inventory. Here is how you create roles, teams and users with the right permissions, and finally an earnings account that controls the publisher's revenue share.

**Roles.** This is a one-time setup job, so if you already have the roles below in place, you can skip this point whenever you set up new users. You will need two roles in order to create users with the right permissions; a network role and a team role. 

1. Admin role. Go to [Admin &gt; Roles](https://admin.adnuntius.com/admin/roles) and click “new”. Give the role a name of your choice \(for instance “Marketplace Publisher Admin”, choose role type “internal”, role scope “network” and then finally the permission “Marketplace Publisher Admin”. Then click save. Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information. 
2. Team role. Go to [Admin &gt; Roles](https://admin.adnuntius.com/admin/roles) and click “new”. Give the role a name of your choice \(for instance “Marketplace Publisher”, choose role type “internal”, role scope “team” and then finally the permission “Marketplace Publisher”. Then click save. Click [here ](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md)for more information.

**Teams.** Once your roles are set up, you can proceed to create teams. Teams determine the content that users shall have access to. Whenever you bring a new publisher onboard you should create a new team, so that invited users can access this inventory, but not the inventory of other publishers, or buyers.

1. Go to [Admin &gt; Teams](https://admin.adnuntius.com/admin/teams) and click “new”. Give the team a name of your choice, for example “Team \[publisherName\]”. Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information on teams. 
2. Choose type “Marketplace Publisher”.
3. If you have created the publisher’s site\(s\) on behalf of the publisher, then you can choose those sites to ensure that the publisher will have access to these. If you want to let publishers create this content on their own, just click save without choosing any sites.

**Users.** Once you have created a team for the publisher, you can go to the last step, which is to create a user. Please note that once you have created one user for the publisher, that user can invite more users with the same permissions. So, you only need to create the first user before letting that user create more.

1. Go to [Admin &gt; Users](https://admin.adnuntius.com/admin/users) and click “new”. Provide the user’s email address, name and display name \(display name is the name that will be displayed in the upper right corner of the user interface\). Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information on users.
2. Choose the advertising network role that you created earlier \(“Marketplace Publisher Admin” if you followed the naming example above\).
3. Under the team you’ve created for the user, choose the role you created earlier \(“Marketplace Publisher” if you followed the naming example above\). 
4. Lastly, click save. When you’ve clicked save an invitation email will be automatically be sent to the user.

**Earnings account.** Finally create an earnings account for the new publisher. Earnings accounts make it easy to track the revenue that each publisher makes, and to calculate their revenue share if you are operating on such a model. Go to [Earnings Accounts](https://admin.adnuntius.com/earnings-accounts) and click "new". Click [here ](https://docs.adnuntius.com/adnuntius-advertising/admin-ui/inventory/earnings-accounts)for more information on how to create an earnings account. 

{% hint style="info" %}
Remember to use the revenue share field on earnings accounts in order to automatically calculate what publishers should earn. Also, remember to take into account your cost to Adnuntius. Let’s say for example’s sake that Adnuntius charges you 10% of revenue, and you want 15% for yourself. This means that you should specify a revenue share to the earnings account of 75%.
{% endhint %}

## Creating Buyer Users

Whenever you get a new buyer onboard your network, you can create users for them so that they can access and manage their own advertisers \(for agencies\) and campaigns. Here is how you create roles, teams and users with the right permissions.

**Roles.** This is a one-time setup job, so if you already have the roles below in place, you can skip this point whenever you set up new users. You will need two roles in order to create users with the right permissions; a network role and a team role.

1. Admin role. Go to [Admin &gt; Roles](https://admin.adnuntius.com/admin/roles) and click “new”. Give the role a name of your choice \(for instance “Marketplace Advertiser Admin”, choose role type “internal”, role scope “network” and then finally the permission “Marketplace Advertiser Admin”. Then click save. Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information.
2. Team role. Go to [Admin &gt; Roles](https://admin.adnuntius.com/admin/roles) and click “new”. Give the role a name of your choice \(for instance “Marketplace Advertiser”, choose role type “internal”, role scope “team” and then finally the permission “Marketplace Advertiser”. Then click save. Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information.

**Teams.** Once your roles are set up, you can proceed to create teams. Teams determine the content that users shall have access to. Whenever you bring a new advertiser onboard you should create a new team, so that invited users can access this inventory, but not the inventory of other advertisers, or publishers.

1. Go to [Admin &gt; Teams](https://admin.adnuntius.com/admin/teams) and click “new”. Give the team a name of your choice, for example “Team \[advertiserName\]”. Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information.
2. Choose type “Marketplace Advertiser”. 
3. Choose the sites from which this advertiser should be able to purchase advertisers. These are the sites that will become available to the advertiser for buying. Lastly click save.

**Users.** Once you have created a team for the advertiser, you can go to the last step, which is to create a user. Please note that once you have created one user for the advertiser, that user can invite more users with the same permissions. So, you only need to create the first user before letting that user create more.

1. Go to [Admin &gt; Users](https://admin.adnuntius.com/admin/users) and click “new”. Provide the user’s email address, name and display name \(display name is the name that will be displayed in the upper right corner of the user interface\). Click [here](../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md) for more information.
2. Choose the advertising network role that you created earlier \(“Marketplace Advertiser Admin” if you followed the naming example above\).
3. Under the team you’ve created for the user, choose the role you created earlier \(“Marketplace Advertiser” if you followed the naming example above\). 
4. Lastly, click save. When you’ve clicked save an invitation email will be automatically be sent to the user.

## Invoicing

As a network owner you will need to make sure that buyers are invoiced, and that publishers receive their share of revenue. 

**Invoicing Buyers.** Let's say that we just entered the month of July, and you want to send out invoices for June. Go to [https://admin.adnuntius.com/queries/advertiser](https://admin.adnuntius.com/queries/advertiser) and choose the period of last month. Under grouping, make sure that you group by "teams" so that you will see any agencies that operate advertising across multiple Advertisers, and should receive one invoice across those Advertisers.

{% hint style="info" %}
Remember: whenever you onboard an agency or advertiser, that entity will be set up as a Team.  So when you group by Team, this means that you will see any agency that manage multiple advertisers. Then, you will be able to invoice the agency rather than each advertisers \(if this is the agreement you have with that agency\).
{% endhint %}

Alternatively, you can also [integrate](../../adnuntius-advertising/admin-api/) Adnuntius to your invoicing system in order to automate the process. 

**Informing Sellers**. Again, let's say that we just entered the month of July, and you want to send out reports  for June so that publishers can invoice you for the right amount. You can inform sellers in two ways: 

* Go to [https://admin.adnuntius.com/queries/earnings-account](https://admin.adnuntius.com/queries/earnings-account) and generate a report. This provides the information to manually inform publishers how much they have earned. The column "Cost" shows the gross revenue, while "Revenue Share" shows how much publishers have earned after costs are withdrawn. To understand how revenue shares are defined for publishers, please see [earnings accounts](../../adnuntius-advertising/admin-ui/inventory/earnings-accounts.md).
* Alternatively you can create automated reports being sent to publishers. Read more below on how to set up report templates, and to learn specifically how to set up monthly revenue reports for publishers. 

## Set Up Report Templates

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
| Add the component "text", and use this text box to inform advertisers why they receive this report. | This report shows how much you as an advertiser have spent with Adnuntius Marketplace in the period since the last time you received this report.  |
| Add the "Advertiser Totals ", "Daily Breakdown" and "Line Item Breakdown" widgets \(and other information you want to share\). Then pick the numbers you want to share. | NA |
| Go to the advertisers and add a scheduled report for all advertisers that should have one \(advertisers can also do this themselves\). | How to: [see here](../../adnuntius-advertising/admin-ui/advertising/advertisers.md). We also recommend you to run a test report from a test advertiser so that you can ensure that you have set everything up correctly.  |

**Line item reports to buyers.** This report is useful because it informs buyers about the performance of their campaigns. In order to create this, go to [https://admin.adnuntius.com/report-templates](https://admin.adnuntius.com/report-templates) and click to create "new", then follow these steps.

| What to do | Example if applicable |
| :--- | :--- |
| Give the template a name and description, then choose type "Line item". | Campaign Performance Report |
| Add the component "text", and use this text box to inform advertisers why they receive this report. | This report shows how your campaign performs. |
| Add the "Line Item Totals " and "Daily Breakdown" widgets \(and other information you want to share\). Then pick the numbers you want to share. | NA |
| Go to the line items and add a scheduled report for all line items that should have one \(advertisers can also do this themselves\). | How to: [see here.](../../adnuntius-advertising/admin-ui/advertising/line-items.md) We also recommend you to run a test report from a test advertiser so that you can ensure that you have set everything up correctly.  |

