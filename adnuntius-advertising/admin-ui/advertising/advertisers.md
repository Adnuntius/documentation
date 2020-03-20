---
description: >-
  An advertiser is a client that wants to advertise on your sites, or the sites
  you have access to.
---

# Advertisers

Creating an advertiser is easy. Here are the steps you should take, and some tips on how to do it well. First, a word about hierarchy: an advertiser is the top level object, and contain multiple orders, which in turn can contain multiple line items, which in turn can contain multiple creatives. Creatives will then be served inside ad units, which are set up under the inventory section. 

![The hierarchy of the objects under Advertising, and how the connect to ad units. ](../../../.gitbook/assets/advertising-hierarchy.png)

**Name, description and contact information:** Add a name, an optional description of your choice and the contact information to the advertiser \(optional\). It is always better to use spacing between words rather than underscores, as searching for items later makes the items easier to find.

**External reference:** Add an external reference \(optional\) if you want to match the advertiser with the same client in another system. For instance, if Coca Cola is registered in your invoicing system with customer ID 123456, then you may want to add 123456 as an external reference in Adnuntius. This way you can easily recognize two different entries as the same advertiser across two different systems, which may in turn speed up processes like invoicing.

**IAB category:** Adding an IAB category to the client allows you to group advertisers together. Once you've added a category you can send impressions, clicks and conversions to for instance your DMP, and then create segments based on users who responded to your campaigns and their categories.

**Labels** can be added to make reporting work for you. Let's say you add the label "agency" to a set of advertisers, and then want to run a report only for this group of advertisers. You can then run a report which filters on these advertisers specifically. [Learn how to run reports like this](../reports.md#advertising-queries).

![An example advertiser](../../../.gitbook/assets/201811-advertising-advertiser.png)

