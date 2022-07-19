---
description: >-
  When you have created your ad units, you can use the ad tag generator and
  tester to get the codes ready for deployment.
---

# Ad Tag Generator

{% embed url="https://youtu.be/FBoBqQK5VNo" %}
How to use the ad tag generator.
{% endembed %}

There are three elements of the Ad Tag Generator and Tester; (1) Ad Units, (2) Global Settings, and (3) Example Code.&#x20;

## Ad Units

Ad units is where you retrieve the ad units you have created and can change each of them (whereas Global Settings explained below is where you can make changes to all of them collectively).&#x20;

Use the **ad unit search** to find the ad unit you want to deploy. Then click “copy” to copy its properties into the other fields. Once you have copied the ad unit you can specify:&#x20;

* A targetId as [explained here](https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/intro/adn-request#targetid).&#x20;
* The container as [explained here](https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/intro/adn-request#container).&#x20;
* The load method as [explained here](https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/intro/adn-request#requestparams-on-multi-adn.request-calls).&#x20;

![Tag Generator and Tester.](<../../../.gitbook/assets/202207 Tag Generator.png>)

You can also add **key values, keywords, categories and ad unit matching labels** to the ad unit. These are all values that can later be used in targeting line items and/or creatives. If you want to see how, please have a look at the [targeting section](../advertising/targeting.md).

You can **add dimensions** to the ad unit by clicking "add dimensions". Dimensions you add here will override the ad unit's dimensions.

You can also create tags for multiple ad units; just click **“new ad unit”** and then repeat the process. However, as we know that some values are normally used repeatedly across all adu units, you can perform bulk operations with **global settings**.&#x20;

## Global Settings

You can apply the following to all ad units added using the steps above:&#x20;

* Ad container.
* Load method.
* Cookie use (whether cookies and/or local storage should be used).&#x20;
* Segments that can be used in [segment targeting](../advertising/targeting.md#segment-targeting).

## Example Code

As you make changes to ad units and global settings you will see the code on the right side adjust accordingly. You can choose to get the output as an ad tag, as an email tag that can be pasted into your newsletter, as a VAST tag that can be pasted into your video player to serve for instance prerolls, midrolls and endrolls.

You can also make an ad request to the ad server so that you can see which ads will be served using the ad tag. And finally, you can send the ad tags to other people by copying these links. The public ad tag link can be sent to users who don’t have access to the system. They will be able to see and copy the ad tags, but they cannot modify them. The ad tag link for logged in users allows those users to access to ad tags, and also to make modifications if they have an Adnuntius user with the appropriate privileges.
