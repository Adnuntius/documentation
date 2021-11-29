---
description: >-
  When you have created your ad units, you can use the ad tag generator to get
  the codes ready for deployment.
---

# Ad Tag Generator

{% embed url="https://youtu.be/FBoBqQK5VNo" %}
How to use the ad tag generator.
{% endembed %}

The ad tag generator allows you to add important controls to the ad tag so that your deployment goes smoothly.

First, you can use the **ad unit search** to find the ad unit you want to deploy. Then click “copy” to copy its properties. You will now see that the width and height that you added to the ad unit is filled in.&#x20;

**targetId** Specifies which element ID in the page to insert an ad into. It defaults to value of the ad unit you’ve chosen. TargetId comes most in handy when multiple requests to the same ad unit are made to the ad server from the same page. If the same target ID is used multiple times on the same page, it will cycle through the HTML elements that match the ID until an empty one is found in which to put the ad. However, to ensure the requested ad is put into the expected spot on the page, unique IDs must be used in your page. You can also leave targetId blank if you don’t need it.&#x20;

![Ad tag generator.](../../../.gitbook/assets/202003-ad-tag-gen.gif)

**Ad container** allows you to choose how ads are rendered; into an iframe, which is the default value, or div tag, which means that the ad will be rendered directly into the page.&#x20;

**Load method** allows you to choose when to load the ad into the page. You can choose “direct” which means that the ad will be loaded immediately as the page loads. “Lazy load” means that the ad will be requested from the ad server immediately as the page loads, but it will not be rendered on page before the user is a specified number of pixels away from getting the ad into the viewport. “Lazy request” means that the ad will not be requested before the user is a specified number of pixels away from getting the ad into the viewport.

You can also add **key values, categories and ad unit matching labels** to the ad unit. These are all values that can later be used in targeting line items and/or creatives. If you want to see how, please have a look at the targeting section.&#x20;

You can also create tags for multiple ad units; just click **“new ad unit”** and then repeat the process. However, as we know that some values are normally used repeatedly across all adu units, you can perform bulk operations by clicking on **“show global settings”**. Here you can set the ad container and load method, and whatever you set here will be applied to all ad units you have specified below, as long as they are also set to **“inherit global settings”**. Here you can also specify segments, if there are specific user segments you would like to target with these ad units.&#x20;

On the right side you will see the ad tags being formed as you add values as explained earlier. You can choose to get the output as an ad tag, as an email tag that can be pasted into your newsletter, as a VAST tag that can be pasted into your video player to serve for instance prerolls, midrolls and endrolls.&#x20;

You can also make an ad request to the ad server so that you can see which ads will be served using the ad tag. And finally, you can send the ad tags to other people by copying these links. The public ad tag link can be sent to users who don’t have access to the system. They will be able to see and copy the ad tags, but they cannot modify them. The ad tag link for logged in users allows those users to access to ad tags, and also to make modifications if they have an Adnuntius user with the appropriate privileges.
