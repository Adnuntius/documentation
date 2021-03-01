# Prebid - Google ad manager

This guide will let you know how to integrate Google Ad Manager with Adnuntius Connect. First there are some requirements that you will have to do in GAM:

{% embed url="https://docs.prebid.org/adops/step-by-step.html" %}

After you have setup your buckets in google ad manager you will be able to continue with Adnuntius Connect. This part will be divided into the following steps. 

* **Setup a prebid connection.**
* **Add a trigger for loading google.**
* **Setup google as a tag.**
* **Publish your container.**
* **Download Prebid.js.**
* **Add code to the page.**

### Setup a prebid connection

after you have logged into Connect you will navigate to the prebid section:

![](../../.gitbook/assets/image%20%2813%29.png)

Here you can add all the bidders that you wish to have in you bidder setup. If you wish to know more you can read more about it in this section:

{% page-ref page="../user-interface-guide-wip/prebid-configuration.md" %}

![](../../.gitbook/assets/image%20%2812%29.png)

Navigate to the options tab in prebid an select Google Ad Manager as the requesting system. You will also have to specify the network id of the admanager account you wish to request. This is all you have to do for the prebid section and you can now move onto adding a trigger.

### **Add a trigger for loading google**

All tags that you add to connect requires a trigger to tell the browser when to fire them. For this example we will add a page view trigger. To learn more about triggers you can read this section:

{% page-ref page="../../adnuntius-data/user-interface-guide/segmentation/triggers.md" %}

Navigate to the triggers section, and click "add trigger", it's advisable that you give it a name that represents the action. In this case we will call it "Pageview". The default values for a newly created trigger will be set to page view. If cou click on it, you can verify that it's set to Pageview. If you wish to only trigger on certain conditions this can be added in the highlighted section below:

![](../../.gitbook/assets/image%20%2821%29.png)

An example use case for this would be if you would like to trigger different ad units on article pages for instance, this would be the place to do it.

### **Setup google as a tag**

Now youwill head onto creating your google adunit setup. Head on over to the   
"Tags" section: 

![](../../.gitbook/assets/image%20%2844%29.png)

And create a new tag named "Google", click on it and the edit page should appear. 

![](../../.gitbook/assets/image%20%2846%29.png)

Under triggers select the "Pageview" trigger that we created earlier. Skip Purposes for now. Select **Tag Type** "Google". A new field appears for you to enter the adunit identifiers that you get from google and also wha target div that you wish the ad should appear in. Now it's time to publish the container.

### **Publish your container**

Head on over to the "Publish" section in the UI. Here you can select what environment you would like to publish to. Currently there are two available:

* Development
* Production

The difference between these is that Production is minified as oppodsed to Development that's not. This is to make it easier for developers to find any issues with the code. Select the appropriate environment for you and click publish.

### Download Prebid.js

Navigate to the page below and select the bidders you wish to have in your bidder setup:

{% embed url="https://docs.prebid.org/download.html" %}

After you click download, a javascript will be downloaded on your computer. This will be hosted by you so that your prebid setup can use the bidders you have setup.

### **Add code to the page**

On the page that you will use your container, setup a link to the prebid.js you have downloaded and a link to the published script from connect. 

After that you will have to tell google to show the correct ad in the correct placement. The final code you end up with should look something like this:

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

Make sure that the ids of the divs correspond to the ids that you have setup in connect. 

