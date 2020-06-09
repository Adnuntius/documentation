# Header bidding implementation

This guide expects you to know how to create orders and line items. If you dont? Make sure that you check out this getting started guide:

[https://docs.adnuntius.com/user-interface-guide/inventory](https://docs.adnuntius.com/user-interface-guide/inventory)

Now onto the header bidding. Firstly you will have to place the following script in your header:

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

    window.adn = window.adn || {};
    adn.calls = adn.calls || [];

    // update the auId, auW and auH figures to match the ad units within Adnuntius that you're using
    var adnRequestInfo = {adUnits: [{auId: '00000000000328c8', auW: 300, auH: 250}]}

    adn.calls.push(function() {
      // can use debug:false if you don't want to populate the browser console with data.
      adn.chbRequest(adUnits, adnRequestInfo, {
        debug: true
      })
    });  

</script>
```

{% hint style="info" %}
You will have to download the associated prebid script for your system from prebid.org: [http://prebid.org/download.html](http://prebid.org/download.html)

Additionally you will have to change the variable `adUnits` to the corresponding SSP that you try to connect using the prebid documentation.
{% endhint %}

Once that is done you will have to add prebid as an _external demand source_ in the ad server, name and description can be of your choosing:

Go to: **Admin -&gt; Ext. Demand S. -&gt; New**

![](../.gitbook/assets/image%20%2814%29.png)

By itself the external demand source does not know what ad units it should deliver to, so you will need to replicate the sizes that you have setup in your SSP in order for Adnuntius to make the correct calls.

Go to: **Inventory -&gt; External Ad units -&gt; new**

![](../.gitbook/assets/image%20%285%29.png)

Give the new _external ad unit_ a proper name and select the external demand source that you just created. You also have to define the type of creatives that you wish to display. You are also asked to define the sizes that you have setup in your SSP.

You have now allowed Adnuntis to send requests to your SSP, great job! But you still have to guide the external ad units to your ad server adunits. You do this via Line items. Your line item can be connected to an order called "Prebid - order" or something similar so that you can find them easily if you have many Line items. Like this:

![](../.gitbook/assets/image%20%2823%29.png)

In the line item you will define your goals for the header bidding. Namely start date, end date etc. You can also choose targeting in order to specify an area of your site / network that you wish to show or not show this line item to:

![](../.gitbook/assets/image%20%282%29.png)

The line item is a pretty standard line item but the real magic happens when you enter the creatives:

![](../.gitbook/assets/image%20%2818%29.png)

in the creatives section you will have to set a Name and make sure that you set the creative type to **External.** Once you have done that the layout changes so that you can select the the external demand source that you created and add an external adunit to be shown on this creative. The width and the height of this creative defines:

1. Where the creative will be displayed, so essentially what adunits are able to display it.
2. the max-size of the external ad unit that you added to this creative. If your external adunit has bigger sizes than what you define as width and height in the creative they will not get shown.

Once you are done with this, then just save it all, and the ads might start flowing in, depending on what you have setup in the SSP. Good luck!
