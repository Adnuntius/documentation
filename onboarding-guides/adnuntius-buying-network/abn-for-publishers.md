---
description: >-
  This page provides an onboarding guide for publishers intending to use the
  Adnuntius Marketplace in the role as a Marketplace Publisher (i.e. using
  Adnuntius as an SSP).
---

# For Publishers

This documentation is intended to educate you as a publisher on how to set up your inventory for sale on, and how to use the Adnuntius Marketplace. In other words, this page explains the supply side platform \(SSP\) side of Adnuntius Marketplace. If you are a buyer who is looking to buy ads, please [go here](abn-for-buyers.md). 

{% hint style="info" %}
Note that this guide assumes that you're a customer and have received access. If this is not the case, just email us at [support@adnuntius.com](mailto:support@adnuntius.com), and we will help you get started. 
{% endhint %}

<table>
  <thead>
    <tr>
      <th style="text-align:left">What and Why</th>
      <th style="text-align:left">How</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1 Create one or more sites. Sites ensure that you can structure placements
        according to your site structure, get performance reports per site, and
        more. Sites will be available and visible to buyers for targeting.</td>
      <td
      style="text-align:left">
        <p><a href="../../adnuntius-advertising/admin-ui/inventory/sites.md">Documentation</a>
        </p>
        <p><a href="https://admin.adnuntius.com/sites">Start creating</a>
        </p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">2 Create one or more ad units. Ad units are placements that will go onto
        your site to ensure that advertisers can serve ads. Ad units will be available
        and visible to buyers for targeting.</td>
      <td style="text-align:left">
        <p><a href="../../adnuntius-advertising/admin-ui/inventory/adunits-1.md">Documentation</a>
        </p>
        <p><a href="https://admin.adnuntius.com/ad-units">Start creating</a>
        </p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">3 Set up ad requests from your site. This is the technical part that helps
        developers set up ad requests from your pages using prebid. If you need
        help setting up, please contact us at <a href="mailto:support@adnuntius.com">support@adnuntius.com</a>.</td>
      <td
      style="text-align:left">
        <p><a href="abn-for-publishers.md#sending-ad-requests">Documentation</a>
        </p>
        <p><a href="http://prebid.org/dev-docs/bidders.html#adnuntius">Prebid</a>
        </p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">4 Create a report. When you start sending requests to the network, you
        can create and schedule reports that tell you the performance of your earnings
        account, sites and ad units.</td>
      <td style="text-align:left">
        <p><a href="https://docs.adnuntius.com/adnuntius-advertising/admin-ui/reports/publishing-queries">Documentation</a>
        </p>
        <p><a href="https://admin.adnuntius.com/reports">Start creating</a>
        </p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">5 Create a user. If you need to get additional users into your account,
        you can invite more. Once users are created they will have the same permissions
        as you have.</td>
      <td style="text-align:left">
        <p><a href="../../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md">Documentation</a>
        </p>
        <p><a href="https://admin.adnuntius.com/admin/users">Start creating</a>
        </p>
      </td>
    </tr>
  </tbody>
</table>

## Sending Ad Requests

As a publisher you can send traffic to an Adnuntius network in a number of ways. We normally recommend prebid since this works with most ad servers and enables the publisher to determine winners based on revenue, but the below methods are all valid. 

<table>
  <thead>
    <tr>
      <th style="text-align:left">Connection method</th>
      <th style="text-align:left">How to</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Javascript tags</td>
      <td style="text-align:left"><a href="../../adnuntius-advertising/requesting-ads/intro/">Documentation</a>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Prebid</td>
      <td style="text-align:left">
        <p><a href="../../other-useful-information/header-bidding-implementation.md">Documentation</a>
        </p>
        <p><a href="http://prebid.org/dev-docs/bidders.html#adnuntius">Prebid.org documentation</a>
        </p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">HTTP API</td>
      <td style="text-align:left"><a href="../../adnuntius-advertising/requesting-ads/http-api.md">Documentation</a>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">OpenRTB</td>
      <td style="text-align:left"><a href="../../adnuntius-advertising/requesting-ads/open-rtb.md">Documentation</a>
      </td>
    </tr>
  </tbody>
</table>

