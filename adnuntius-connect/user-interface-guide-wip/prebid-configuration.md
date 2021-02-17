# Prebid Configuration

This page describes how to set up a bidder configuration in Adnuntius Connect. This requires that you already have received IDs for one or several SSPs \(e.g. Pubmatic’s Publisher- and Adslot IDs\) which can be mapped to adunits that you have implemented on your page. 

Adnuntius also offers a full-service for programmatic demand. In that case we will do the SSP ID mapping as well as the configuration for you. If you want to hear more about this, please contact us through our support channels.  


### **Step 1: Create size templates \(optional\)**

This optional step can make the actual setup in the Connect UI much easier: 

Prebid expects that the bid requests are coming with an array of sizes that are allowed on the specific adunit. That means for the setup, any adunit needs to get all sizes assigned that are allowed and supported. Alternatively, a size template \(e.g. all sizes that are allowed on Panorama-, or Skyscraper- or Rectangle-adunits\) can be assigned to an adunit. This directly adds all allowed sizes.  


* Click on the blue icon in the upper right corner and select “settings”

![](https://lh6.googleusercontent.com/0XofLEBi4XFuLtoBXuWEvMzAns_41FAye9t1NfDkLqWCDLte29RRNnxR-NCJPXWztr1xiHr3cdP8vCjMjRgxAiJnQvNn3GAaHUwRSJgtK6KKV39AFGlkw2iPCDvhoFnpnFdWDwke)

* Select “add template”, choose a name and add all sizes that the adunit category allows. Save the selection.

![](https://lh5.googleusercontent.com/1y8n2U8DKMkom7yH921wAOCVVIyDRGsOYvr_mZeEIlh1Le0LGqne6AQchsOldTu0dSw9DqDpiafTxez4m9ma5sbRJzNnywRtxVo5TMIch55XHNTU1h2_GQYNXj377DtQvOXfB_jG)

### \*\*\*\*

### **Step 2: Select the container of the site that you want to set up with prebid**

Each site usually contains a different set of adunits and requires a unique setup. A container includes all the configuration that is required for a specific site. ****You can think of a container as a "Site".

![](https://lh4.googleusercontent.com/JPm4xRHP1zWH5cHCk_8U47z7cMwVS6IiStZBUlA87V2J9wJKaWgJQmEhZl7I9cQyhYxBy48ivtD9UbzL46jGxBPDREKm5UW0nwbpjKxTP8u-uLtZxKqB2VD2YnR8Qn1ZMqrI8X53)

### \*\*\*\*

### **Step 3:  Connect your adunits to the programmatic partners**

\*\*\*\*

#### **3.1 For Adnuntius as primary Adserver**

![](https://lh6.googleusercontent.com/gvb85NYLPf4oOtctnZAO4sExF6Djk4EAUPj4KCDMkBuFNoiFfkPfJCdSjuP-FI9GS320MrhWFmFnABZxgfkve1sgqfVBRH5UN-nNG-KpC9Sy51lRrjmNscr92qlVVCHq9nUtGZhZ)

* Select the site from the drop-down list. The list shows all existing sites of your own network
* Click on “Add” new adunit and choose a name accordingly. You can use e.g. Panorama\_all, if you have received the same SSP IDs for all Panorama adunits that are implemented on your page. Or you can separate between different Panorama adunits \(e.g. use Panorama1, Panorama2,...\) if you have received different SSP IDs for those adunits. 
* “Bound Adunits” \(from your NW\) to the newly created Adunit in Connect: select the adunits from the drop-down list on the right side accordingly.

![](https://lh4.googleusercontent.com/Z6-L_Zs0gHNYGzGvJ7kSPGuVe3roX6XZ6fWAyRD5Kvt0qlW4zpor9TskycNqJ8LyG7wEOXxoBvLmbiyg2U3pMS6cQxtZvIxklYtUKeJmJBEIUuBEnCivfKypqdy282YNKGBRYqLW)

* Add the sizes / size template that this adunit allows. The templates created at the start can be accessed by hovering the top right corner of the "sizes" card.

![](https://lh3.googleusercontent.com/t2AwPX8BjNKnqJXiXY1075qMenfJDDdo-8Qwwa1eN67Xs_EZJRGGd6e7fg_q3MT3wzBV2neKWkkNA607-Zz8qJw26F2iLjlS13DaRLA07UqZric5kDSZE4fIFE-jirTjqGHksrFN)

* Choose the bidder with its IDs.

![](https://lh3.googleusercontent.com/FD9kDCeNjdLTiYGCmsALz6xKK2SAcBO9wKbnEeuQBHVQtCnIifwrLRivtA2LB09jfKRxiF5y6jhU3D8wdYeteIn0lRgIsuFZA9RR2nnC89eg84nEeKbbkB6ZT_XPNQwBJLCWTqgh)

{% hint style="info" %}
Note: It might be possible that you have relationships with SSPs via different partners which means that you e.g. get 2 different mapped IDs for Pubmatic for the same Adnuntius adunit. In that case we recommend using the “alias” function in the upper right corner:![](https://lh4.googleusercontent.com/gtOGcaCaUD9FDjf37deRTu9sPMGVAW1liDrCOGtKL2fSMH9yzt3uSCnr0bNe8iEVTGstdq4ElCP3AvFX1x0D1H8xGgtRWWF2XlgG0wBlRDnbccRHwl7tim2HA5X6WsxoQLlmyCNU)

Once an “alias” has been created it can immediately be used in the bidder config.
{% endhint %}

* Save after you did configure your adunit and repeat those steps for all adunits of your page.   

#### \*\*\*\*

#### **3.2 For GAM as primary Adserver**

![](https://lh3.googleusercontent.com/i21mOAc6Qp7I_PUI6_U9WQvz3WP_Up_OI3guMYVlO4oxlMrHgyURJkg5SnGsG3qII12zXNBrfkSwyRA9d4OSmF_mv6AmLi1RUEHSqO4rf7XFcUIRl5LkiCTopZFQfqrxMOk0BQyN)

* Put the ID of your GAM network into the field “Network ID”
* Chose the name\(s\) that you use in GAM / on your pages for your adunit\(s\) and assign the allowed sizes / size templates
* Chose the bidder\(s\) with its IDs \(e.g. Adnuntius\), define an Alias - if required - as defined in 3.1

![](https://lh4.googleusercontent.com/IgKGbR1NOo9S6mInzImurChu-P1SNeCXTUDQF0PX_J9JQulmCsltVwzWZbKD13Qzm1zk8_eitILQUusTGDE0_wDCRt6nUE35FdyI-J4QIGa5RQACvXf57tQokkpDj5Uj7timHny9)



### **Step 4: Publish your configuration** 

After finishing the config steps above you can switch to “Publish” in Connect to deploy your setting to the js files. You can get a Development Tag \(structured, readable\) and a production tag.

![](https://lh4.googleusercontent.com/CN27JjiGvoaWVA7QpWyIIe5Ix9EL1SNQ037Gncb0mQc72iHv7nSc4_9F9ATiFI63c_Wa8srIAodcS09gSyHDpg9w6pQiDR85a733OLJZV_1uStdNEbkWodhEQLmPWqDbtG0kwGpu)

### \*\*\*\*

### **Step 5: Implementation on the page**

#### **5.1 For Adnuntius as primary Adserver** 

The implementation of the Adnuntius ad codes is slightly different to the standard that does not communicate to Connect / is not connected to prebid:

* The prebid.js file needs to be called. You can either use your very own version \(select the SSPs that you use and download here: [http://prebid.org/download.html](http://prebid.org/download.html) and then upload on your server\) or you can use the hosted version of Adnuntius \(it just includes a limited number of SSP adapters, please review with Adnuntius if it fits to your setup\).
* The production tag from connect needs to be called, please use the one that you get in Step 4 for your very own site.
* As this production js already includes our adn.js you do not need to call adn.js separately
* The adcall: to tell our system that it should communicate with Connect it is required that you change the adcall from ...adn.request… to adn.requestAds… for the adunits that you have configured in connect.
* Don’t forget to add the SSP IDs to you ads.txt file accordingly

Website code example \(these IDs are for documentation only, please use your own IDs\):

```html
<html>
<head>
    <script async src="https://tags.adnuntius.com/pb/prebid.js"></script> 
    <script src="https://tags.adnuntius.com/ais/cVBqaVbp7.prod.js" async></script>
</head>
<body>
<div id="adn-000000000002441a" style="display: none"></div>
<script>
   window.adn = window.adn || {}; adn.calls = adn.calls || [];
   adn.calls.push(function() {
      adn.requestAds({ 
         adUnits: [
            { auId: '000000000002441a', auW: '300', auH: '250' }
         ]
      },
      { debug: true }
   );
});
</script>
</body>
</html>
```

#### **5.2 For GAM as primary Adserver**

Assuming that you have already implemented your GAM Tags / Divs on the page you just need to add 2 code snippets to the &lt;head&gt; of the source code**.**

* The prebid.js file needs to be called. You can either use your very own version \(select the SSPs that you use and download here: [http://prebid.org/download.html](http://prebid.org/download.html) and then upload on your server\) or you can use the hosted version of Adnuntius \(it just includes a limited number of SSP adapters, please review with Adnuntius if it fits to your setup\).
* The production tag from connect needs to be called, please use the one that you get in Step 4 for your very own site.

Website code example \(these IDs are for documentation only, please use your own IDs\):

```html
<html>
<head>
    <script async src="https://tags.adnuntius.com/pb/prebid.js"></script> 
    <script async src="https://securepubads.g.doubleclick.net/tag/js/gpt.js"></script>
    <script src="https://tags.adnuntius.com/adnuntius/NxVIO8xy3.prod.js" async></script>
    <script>
      var googletag = googletag || {};
      googletag.cmd = googletag.cmd || [];
    </script>
</head>
<body>
<div id='/19660636/ADN_Publisher'>
    <script>
      googletag.cmd.push(function() { googletag.display('/19660636/ADN_Publisher'); });
    </script>
  </div>
</body>
</html>
```

Once this code is implemented on the page the bidders/SSPs \(e.g. Adnuntius\) will receive bid requests and will be able to bid on GAM’s inventory. To let these bids participate in GAM’s auction you also need to set up prebid line items in GAM. This is described here: [https://docs.prebid.org/adops/step-by-step.html](https://docs.prebid.org/adops/step-by-step.html) 

