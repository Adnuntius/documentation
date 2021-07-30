# Prebid - Google ad manager

This guide will let you know how to integrate Google Ad Manager \(hereafter called GAM\) with Adnuntius Connect in order to serve ads through prebid. First there are some requirements that you will have to do in GAM: [https://docs.prebid.org/adops/step-by-step.html](https://docs.prebid.org/adops/step-by-step.html).

After you have completed these steps and set up your buckets in GAM, you will be able to continue with Adnuntius Connect. This part will be divided into the following steps. 

1. Setup a prebid connection.
2. Add a trigger for loading google.
3. Setup google as a tag.
4. Publish your container.
5. Download Prebid.js.
6. Add code to the page.

### 1 Setup a prebid connection

after you have logged into Adnuntius Connect, navigate to the prebid section.

![The prebid section of Adnuntius Connect.](../../.gitbook/assets/image%20%2813%29.png)

Here you can add all the bidders that you wish to have in you bidder setup. If you wish to know more, please [read more about it in this section](../user-interface-guide-wip/prebid-configuration.md).

Next, navigate to the **Options** tab and select GAM as the requesting system. You will also have to specify the network id of the GAM account you wish to request. This is all you have to do for the prebid section, and you can now move onto adding a trigger.

![On the prebid page, first click &quot;Options&quot; and then choose &quot;Google Ad Manager&quot;. Finally add your GAM account/network ID. ](../../.gitbook/assets/image%20%2812%29.png)

### **2 Add a trigger for loading GAM**

All tags that you add to Adnuntius Connect requires a trigger to tell the browser when to fire them. For this example we will add a page view trigger. [Learn more about Triggers here](../user-interface-guide-wip/variables-triggers-and-tags.md#triggers).

Navigate to the triggers section, and click "Add trigger", You should give it a name that represents the action, and in the example screenshot below we have called it "Pageview". The default values for a newly created trigger will be set to pageview. If you click on it, you can verify that it's set to Pageview. If you wish to only trigger on certain conditions this can be added in the highlighted section below:

![](../../.gitbook/assets/image%20%2821%29.png)

An example use case can be that you would like to trigger different ad units on article pages than on the front page. This is where you can ensure that. 

### **3 Set up Google as a tag**

You are now ready to create your Google ad unit section. Please go to the "Tags" section in Adnuntius Connect, and create a new tag named "Google". Click on it to trigger the Edit page. 

![The &quot;Tags&quot; section in Adnuntius Connect.](../../.gitbook/assets/image%20%2844%29.png)

![The &quot;Edit page&quot; of a tag in Adnuntius Connect.](../../.gitbook/assets/image%20%2846%29.png)

Under "Triggers" select the "Pageview" trigger that you created in step 2. Skip Purposes for now. Select **Tag Type** "Google". A new field appears for you to enter the adunit identifiers that you get from GAM and also what target div on which you want the ad to appear. Finally click Save. 

### **4 Publish your container**

Go to the "Publish" section in the UI. Here you can select what environment you would like to publish to. Currently there are two available: Development, and Production. The difference between these is that Production is minified as opposed to Development that is not. This is to make it easier for developers to find any issues with the code. Select the appropriate environment for you and click publish.

### 5 Download Prebid.js

Navigate to [https://docs.prebid.org/download.html](https://docs.prebid.org/download.html) and select the bidders you want to have in your bidder setup \(ref step 1\). Click download. A javascript file will then be downloaded on your computer. This will be hosted by you so that your prebid setup can use the bidders you have set up.

### **6 Add code to the page**

On the page where you will use your container, set up a link to the prebid.js you have downloaded and a link to the published script from Adnuntius Connect. After that you will have to tell google to show the correct ad in the correct placement. The final code you end up with should look something like this:

```markup
<html>
<head>
	<script async src="//www.googletagservices.com/tag/js/gpt.js"></script>
	<script async src="https://tags.adnuntius.com/pb/prebid.js"></script>
	<script src="https://tags.adnuntius.com/network_2/2_ylguT3o.dev.js" async></script>
	<script>
		window.googletag = window.googletag || { cmd: [] };
	</script>

</head>

<body>


	<div id='header-bid-tag-1'>
		<script type='text/javascript'>
			googletag.cmd.push(function () {
				googletag.display('header-bid-tag-1');
			});
		</script>
	</div>

	<br>

	<div id='header-bid-tag-0'>
		<script type='text/javascript'>
			googletag.cmd.push(function () {
				googletag.display('header-bid-tag-0');
			});

		</script>
	</div>

</body>

</html>
```

Make sure that the div IDs correspond to the IDs that you have setup in Adnuntius Connect. 

