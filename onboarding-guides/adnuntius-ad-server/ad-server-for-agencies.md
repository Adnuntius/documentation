---
description: >-
  This page helps agencies and other buyers get started with Adnuntius Ad Server
  quickly.
---

# Ad Server for Agencies

You will find full documentation of the underlying platform (Adnuntius Advertising) [here](../../adnuntius-advertising/admin-ui/). The purpose of this guide however, is to make it easier for new customers to get started. This guide is split into basic features which cover the steps to get started, and the more advanced features which help you get more value from Adnuntius.

{% hint style="info" %}
This guide assumes that you have been given access to Adnuntius Advertising. However, if you haven't please contact us at [support@adnuntius.com](mailto:support@adnuntius.com).
{% endhint %}

## 1 Basic Features

### 1.1 Inventory

When you add a creative to Adnuntius and want to generate a creative tag that you can send to a publisher, then you are asked to select an ad unit before the tag is created.

![When creating creative tags you are asked to select an ad unit first.](<../../.gitbook/assets/202201 Creative Tag.png>)

in order to create creative tags you must therefore first create those ad units (and a couple of other things as well to keep things tidy inside your system). When you later run a campaign you can split reporting per ad unit so that you better know what inventory performs and what does not. Here are three examples on how you can choose to set up your inventory.&#x20;

1. Let's say that you create three ad units: _sitex.com - top banner - frontpage, sitex.com - top banner - sports section, and sitey.com - skyscraper - frontpage_. When you run campaigns you will have reporting split by site (sitex vs sitey), by placement (top banner vs skyscraper), and by section (frontpage vs sports section). This one-time setup takes longer, but you are rewarded with more granular reporting.
2. Let's say that you create two ad units: _sitex.com - top banner, and sitey.com - top banner - frontpage_. Now your one-time setup goes faster since you reduce the granularity, but you get less detailed reporting in return.&#x20;
3. Let's say that you create one ad unit: _top banner_. Now you spend only minutes on the inventory section, but you only get high-level reporting back (more specifically; you only see the ad unit "top banner" in reports without having it split by site, section or anything else).

{% hint style="info" %}
Please note that this applies only when you use Adnuntius as an adserver. If you are connected to an **Adnuntius** **Marketplace** then you will not have to create inventory at all, as this has been done by publishers that operate live within that marketplace.
{% endhint %}

You can, if you'd like, start quickly with alternative 3 and then work to produce more granular inventory over time. Below is an overview of the most relevant objects you will find in the inventory section. [Here you will also find a schematic of how these objects relate to one another. ](../../adnuntius-advertising/admin-ui/inventory/)

| Object                                                                                                                                                                                                                                | Resources                                                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Earnings account:** aggregates your spending across multiple sites that all belong to the same publishing group. Allows you to (automatically if wanted) share reports with publishing partners. Example: Schibsted ASA             | <p><a href="../../adnuntius-advertising/admin-ui/inventory/earnings-accounts.md">Documentation</a><br><a href="https://admin.adnuntius.com/earnings-accounts">Start creating</a></p> |
| **Site:** aggregates your spending across multiple ad units. Allows you to (automatically if wanted) share reports with publishing partners, and to target your campaigns and creatives to one or more sites. Example: aftenposten.no | <p><a href="../../adnuntius-advertising/admin-ui/inventory/sites.md">Documentation</a><br><a href="https://admin.adnuntius.com/sites">Start creating</a></p>                         |
| **Ad unit:** counts your impressions, clicks and much more for a single placement on a site. Example: aftenposten.no - top banner                                                                                                     | <p><a href="../../adnuntius-advertising/admin-ui/inventory/adunits-1.md">Documentation</a><br><a href="https://admin.adnuntius.com/ad-units">Start creating</a></p>                  |

### 1.2 Advertising

Now that you have your inventory in place you're ready to start creating campaigns. The overview explains how to perform the most important advertising tasks.

| Object                                                                                                                                                                                           | Resources                                                                                                                                                                  |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Understand the advertising section.** The link to the right leads you to a page that teaches you the main parts of the advertising section.                                                    | [Documentation](../../adnuntius-advertising/admin-ui/advertising/)                                                                                                         |
| **Create an advertiser.** An advertiser is an advertising client that buys your services. If you have no advertisers yet, try creating your own company as an advertiser.                        | <p><a href="../../adnuntius-advertising/admin-ui/advertising/advertisers.md">Documentation</a><br><a href="https://admin.adnuntius.com/advertisers">Start creating</a></p> |
| **Create an order.** An advertiser can contain one or more orders. An order is also a folder for line items, and also determines which team that the campaign should belong to.                  | <p><a href="../../adnuntius-advertising/admin-ui/advertising/orders.md">Documentation</a><br><a href="https://admin.adnuntius.com/orders">Start creating</a></p>           |
| **Create a line item**. A line item determines start and end dates, delivery objectives, targeting and more.                                                                                     | <p><a href="../../adnuntius-advertising/admin-ui/advertising/line-items.md">Documentation</a><br><a href="https://admin.adnuntius.com/line-items">Start creating</a></p>   |
| **Upload a creative.** A line item needs one or more creatives to work. Try also to target the creative. Remember to use a creative size that is supported by the ad units you want to serve to. | <p><a href="../../adnuntius-advertising/admin-ui/advertising/creatives.md">Documentation</a><br>(Creation starts from the line item)</p>                                   |
| Try to generate an ad impression using the **Ad Tag Generator**. This tool helps you verify that your ads are serving as they should.                                                            | <p><a href="../../adnuntius-advertising/admin-ui/inventory/ad-tag-generator.md">Documentation</a><br><a href="https://admin.adnuntius.com/ad-tag">Start testing</a></p>    |

## 2 Advanced Features

Here are some additional features that helps you get more out of your adserver.

| Object                                                                                                                                                                                                                                                                        | Resources                                                                                                                                                                                 |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Layouts** let you determine what file types, looks and feels and other information to serve with your advertising.                                                                                                                                                          | <p><a href="../../adnuntius-advertising/admin-ui/design/layouts.md">Documentation</a><br><a href="https://admin.adnuntius.com/admin/layouts">Go to layouts</a></p>                        |
| **Custom events** let you measure additional events in addition to [what we already measure](https://app.gitbook.com/o/-LHmwQq\_PV3y8JslF7nb/s/-LHmwQqapxqiNrAwTABM/\~/revisions/69zJ9p3VAYmjrmqOZ5G2/adnuntius-advertising/admin-ui/reports/the-statistics-defined) for you. | <p><a href="../../adnuntius-advertising/admin-ui/admin/custom-events.md">Documentation</a><br><a href="https://admin.adnuntius.com/admin/custom-events">Go to custom events</a></p>       |
| **Log data** lets you download detailed data about each event (impression, viewable impression, click etc) and get in-depth information about each of these events.                                                                                                           | <p><a href="https://adnuntius.com/blog/adnuntius-brings-the-big-data">Introduction to log data</a><br><a href="https://admin.adnuntius.com/admin/data-exports">Go to data exports</a></p> |
| **Tiers** let you organize your campaigns into priority levels, so that you can ensure that your VIPs get first look before the second priority campaigns, and so on.                                                                                                         | <p><a href="../../adnuntius-advertising/admin-ui/admin/tiers.md">Documentation</a><br><a href="https://docs.adnuntius.com/adnuntius-advertising/admin-ui/admin/tiers">Go to tiers</a></p> |
