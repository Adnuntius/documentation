---
description: >-
  This page provides an onboarding guide for publishers intending to use the
  Adnuntius Marketplace in the role as a Marketplace Publisher.
---

# For Publishers

Adnuntius Marketplace is a tool that enables publishers to activate their advertising traffic and user data, and buyers to buy that traffic and data according to the publisher’s conditions. The purpose of this document is to show you as a publisher how Adnuntius Marketplace works.

This document starts with a high level overview before moving to the publisher's end result, which is what the buyer sees depending on your choices. This document is structured this way so that it is easier to understand the reason why Adnuntius Marketplace works the way it does. It then works its way backwards into the tasks and choices available to you.

| Section in this document | Explanation                                                                                                                                                                                                                                 |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1 High level overview    | The three main components of Adnuntius Marketplace, and its sub-components.                                                                                                                                                                 |
| 2 The buyer workflow     | Gives you an overall understanding of what the buyer sees depending on your product and traffic choices explained further down. We aim to be transparent about everything we do, and this helps you understand what is available to buyers. |
| 3 Marketplace products   | Shows you how you can create products (comparable to programmatic deals) from your advertising and data inventory. Products lets you define pricing rules, formats, targeting criteria and more.                                            |
| 4 Ad inventory           | Shows you how to send ad traffic, and how to manage your ad inventory before creating products.                                                                                                                                             |
| 5 User data              | Shows you how you can, if you want to, send user data and create audiences for sale.                                                                                                                                                        |

## 1 High Level Overview

Adnuntius Marketplace connects publishing inventory and buyers through a so-called marketplace product. The figure below visualizes the three main components and their sub-components. Please note that this figure only includes the advertising workflow; collection, activation and segmentation of user data follows later.

![Marketplace for advertising: high level overview.](<../../.gitbook/assets/MP high level overview.png>)

The figure above shows how (1) publishers can send their bid requests to Adnuntius with ad units, sites and earnings accounts; (2) how that inventory can be packaged into products; that (3) can then be purchased by buyers in the form of campaigns.

## 2 The Buyer Workflow

This \*\*\*\* section gives you an overall understanding of what the buyer sees depending on your product and traffic choices explained further down. We aim to be transparent about everything we do, and this helps you understand what is available to buyers.

**Selecting marketplace products.** A buyer using Adnuntius Marketplace can manage their advertising clients (if the buyer is an agency), campaigns and creative material. Whenever a buyer creates a new campaign (called “line item”) their first step is to select a Marketplace Product.\\

![When a buyer creates a campaign they have to choose one product.](<../../.gitbook/assets/MP new line item.png>)

In the next section, which shows you how you can create marketplace products, you will see that you can determine which buyers should have access to your products. When a buyer is allowed to create a campaign based on your product, they will see it in a menu like shown below.

![An example where a buyer has access to two marketplace products.](<../../.gitbook/assets/MP choose product.png>)

**Creating campaigns.** When a product is selected the buyer can create their line item based on rules set by you. Below is an example line item, and an explanation of how you can set rules for what buyers can and cannot do.

![Example line item and explanations.](<../../.gitbook/assets/MP line item explanations.png>)

**Reporting.** When a line item starts delivering, Adnuntius will show real-time statistics to the buyer. These are explained below.

![In-UI reports available to buyers.](<../../.gitbook/assets/MP line item reporting info.png>)

**Log data.** In addition, you can determine whether or not a buyer should have access to log data to obtain detailed information about every event (an event means an impression, a viewable impression, a visible impression or a click). Please note that buyers will not have access to log data unless explicitly approved by you as a publisher. If you choose to allow access to log data, then buyers will have access to hourly log files, containing the data as shown here (see "Example of a single data record"): [https://adnuntius.com/blog/adnuntius-brings-the-big-data](https://adnuntius.com/blog/adnuntius-brings-the-big-data).

**Upcoming improvements.** Adnuntius Marketplace is a product in constant development. Here are some of our short term plans on how to improve it.

| Feature                                     | Explanation                                                                                                                                                                                                                                                                                                           |
| ------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Better presentation of marketplace products | When buyers currently choose a product they can choose from a simple list. However, we expect thousands of products in the network, which requires us to better categorize products and enable buyers to search and select products based on criteria like publisher, format and targeting.                           |
| Log data per publisher per buyer            | Right now log data access means that a buyer will have access to log data across all publishers. This means that we will not give access to any buyers unless (1) all publishers agree on giving access, or (2) we split log data so that each publisher can consent independently - which this improvement is about. |

## 3 Marketplace Products

This section shows you how you can create products (comparable to programmatic deals) from your advertising and data inventory. Products lets you define pricing rules, formats, targeting criteria and more based on the ad traffic and data you send to Adnuntius.

Below is an example marketplace product with explanation of each field that determines what buyers can and cannot do when creating line items.

![Example marketplace product and explanations.](<../../.gitbook/assets/MP product explanations.png>)

**Upcoming improvements.** Adnuntius Marketplace is a product in constant development. Here are some of our short term plans on how to improve it.

| Feature                                                                | Explanation                                                                                                                                                                                                                        |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Enable publisher to create its own products, layouts and custom events | Right now product creation is a managed service, meaning that Adnuntius admins have to create the product. We will however make you as publisher able to create and manage your own products as well as layouts and custom events. |

## 4 Ad Inventory

Before you create marketplace products you should ensure that your ad traffic (bid requests) are sent to Adnuntius. This includes certain key tasks that are explained here. These explanations also contain information about how to create reports and set various business rules.

| 1 Create one or more sites. Sites ensure that you can structure placements according to your site structure, get performance reports per site, and more. Sites will be available and visible to buyers for targeting. | <p><a href="../../adnuntius-advertising/admin-ui/inventory/sites.md">Documentation</a></p><p><a href="https://admin.adnuntius.com/sites">Start creating</a></p>                                |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 2 Create one or more ad units. Ad units are placements that you want to make available to buyers.                                                                                                                     | <p><a href="../../adnuntius-advertising/admin-ui/inventory/adunits-1.md">Documentation</a></p><p><a href="https://admin.adnuntius.com/ad-units">Start creating</a></p>                         |
| 3 Set up ad requests from your site. This is the technical part that helps developers set up bid requests from your pages (normally using the prebid option).                                                         | [Documentation](../../adnuntius-advertising/requesting-ads/)                                                                                                                                   |
| 4 Create a report. When you start sending requests to the network, you can create and schedule reports that tell you the performance of your earnings account, sites and ad units.                                    | <p><a href="https://docs.adnuntius.com/adnuntius-advertising/admin-ui/reports/publishing-queries">Documentation</a></p><p><a href="https://admin.adnuntius.com/reports">Start creating</a></p> |

## 5 User Data

This section shows you how you can, if you want to, send user data and create audiences for sale.

**What buyers see.** When you have created a segment for sale, buyers can purchase that segment as part of campaign targeting. The example below shows what the buyer sees.

![What buyers see; please note that you as a publisher can give any name, description and price to each segment.](<../../.gitbook/assets/Segment targeting.png>)

Setting up segments for buyers to purchase involves the following steps: (1) sending data to Adnuntius; (2) structuring data (optional); (3) defining segments; and (4) defining triggers.

| What and Why                                                                                                       | How                                                                                                                                                                                                                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1 Send data. Send data from your online and/or offline properties, and ensure that they are available only to you. | <p><a href="../../adnuntius-data/user-interface-guide/segmentation/folders.md">Documentation: create folders (clean rooms)</a><br><a href="https://admin.adnuntius.com/folders">Start creating folders</a><br><a href="../../adnuntius-data/api-documentation/">Documentation: send data</a></p>           |
| 2 Structure data. If needed you can structure the data you send, so that it is stored in a unified form.           | <p><a href="../../adnuntius-data/user-interface-guide/fields/mappings.md">Documentation: mapping</a><br><a href="https://admin.adnuntius.com/mappings">Start mapping</a><br><a href="../../adnuntius-data/api-documentation/javascript/user-synchronisation.md">Documentation: unify user profiles</a></p> |
| 3 Define segments. Give your segments a name, define access, set expiry, and set pricing.                          | <p><a href="../../adnuntius-data/user-interface-guide/segmentation/segments.md">Documentation: segments</a><br><a href="https://admin.adnuntius.com/segments">Start creating segments</a></p>                                                                                                              |
| 4 Define triggers. Determine when users should be added to your segments.                                          | <p><a href="../../adnuntius-data/user-interface-guide/segmentation/triggers.md">Documentation: triggers</a><br><a href="https://admin.adnuntius.com/triggers">Start creating triggers</a></p>                                                                                                              |
