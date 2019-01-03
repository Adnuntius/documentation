# Header bidding implementation

This guide expects you to know how to create orders and line items. If you dont? Make sure that you check out these getting started guides:



Firstly you will have to place the followin script in your header:

```markup
<script async src="prebid_imp.js"></script>
<script async src="https://cdn.adnuntius.com/adn.js"></script>

<script type="text/javascript">

    var adUnits = [{
    code: 'adn-00000000000328c8',
    sizes: [[320, 250],[300, 250]],
    bids: [
            {
                bidder: 'improvedigital',
                params: {
                    placementId:1226800
                }
            }
        ]
    }];

    // ======== DO NOT EDIT BELOW THIS LINE =========== //
    window.adn = window.adn || {};
    adn.calls = adn.calls || [];
    
    var adnRequestInfo = {adUnits: [{auId: '00000000000328c8', auW: 300, auH: 250}]}

    adn.calls.push(function() {
      adn.chbRequest(adUnits, adnRequestInfo, {
        debug: true
      })
    });  
  
</script>

```

{% hint style="info" %}
You will have to download the according prebid script for your system from prebid.org: [http://prebid.org/download.html](http://prebid.org/download.html)

Additionally tou will have to change the variable `adUnits` to the corresponding SSP that you try to connect using the prebid documentation.
{% endhint %}

Once that is done you will have to add prebid as an _external demand source_ in the ad server, name and description can be of your choosing:

Go to: **Amin -&gt; Ext. Demand S. -&gt; New**

![](../.gitbook/assets/image%20%282%29.png)

By it's own the external demand source does not know what ad units it should deliver to, so you will need to replicate the sizes that you have setup in your SSP in order for Adnuntius to make the correct calls.

Go to: **Inventory -&gt; External Ad units -&gt; new**

![](../.gitbook/assets/image%20%281%29.png)

Give the new _external ad unit_ a proper name and select the external demand source that you just created. You also have to define the type of creatives that you wish to display. You are also asked to define the sizes that you have setup in your SSP.

You have now allowed Adnuntis to send requests to your SSP, great job! But you still have to guide the external ad units to your ad server adunits. You do this via Line items. Your line item can be connected to an order called "Prebid - order" or something similar so that you can find them easily if you have many Line items. Like this:

![](../.gitbook/assets/image%20%283%29.png)



