# Setup deals in GAM

This guide aims to show you how to setup your Google Ad Manager (GAM) account to accept deals from Adnuntius Ad Server. In order to follow this guide we assume that you have knowledge in how to do the following:

* Set up a campaign in GAM.
* Understand how GAM targeting works.
* Have setup Prebid line items before.
* Proficient in using Adnuntius.

If you are missing any of the steps above, please follow this guide: [https://docs.prebid.org/adops/step-by-step.html](https://docs.prebid.org/adops/step-by-step.html)

The main difference in setting up GAM for deals is that you won't need to create all those line items for different price buckets. Mainly you only need one line item per deal.&#x20;

### Step 1, Create a line item

Start by creating a line item in GAM wit the start and end dates for when you want the deal to be active. You will need to setup a new custom targeting key. Either you can use the global `hb_deal`, or you can be more specific using `hb_deal_adnuntius` to only have the deal match if it comes from Adnuntius. For the value you will set the expected deal coming from prebid.&#x20;

If you wish to target a line item to a deal coming from Adnuntius with the deal id of `deal_123`, you would setup something like this:

<figure><img src="../.gitbook/assets/image (53).png" alt=""><figcaption></figcaption></figure>

If you want to make sure that this line item is allways prioritised and never can be shown in the regular prebid line items, it's **strongly** advised to set the line item either to a higher priority or sponsorship:

![](<../.gitbook/assets/image (56).png>)

### Step 2, Assign creative.

In order to tell google to select a specific bid from prebid you will need to assign a creative to your targeted line item. Start by creating a new third party creative and paste the text below into the third party code. This is the Prebid Universal Creative (PUC)

```html
<script src = "https://cdn.jsdelivr.net/npm/prebid-universal-creative@latest/dist/creative.js"></script>

<script>
  var ucTagData = {};
  ucTagData.adServerDomain = "";
  ucTagData.pubUrl = "%%PATTERN:url%%";
  ucTagData.targetingMap = %%PATTERN:TARGETINGMAP%%;
  ucTagData.hbPb = "%%PATTERN:hb_pb%%";
  ucTagData.adId = "%%PATTERN:hb_adid%%";
  
  try {
    ucTag.renderAd(document, ucTagData);
  } catch (e) {
    console.log(e);
  }
</script>

```

To note, is the parameters above that starts with `%%PATTERN:` and ends with `%%`, those values will select a bid from Prebid that will match those values that are between the start and the end. Prebid sends these values to the GAM per line item:

![](<../.gitbook/assets/image (54).png>)

As you can see in the values above, it will always send two values for each parameter:

* Prebid global value: `hb_adid`
* And bidder specific value: `hb_adid_adnuntius`

This is created so that you can select specific bidders in your `PATTERN:` in the Prebid Universal Creative.

{% hint style="info" %}
Bidder specific values are always bound to the alias you setup for the bidder. If no alias is defined it will default to the bidder code. Pattern matching will be sent to GAM like this:

```
hb_adid_{BIDDER}
```

Where {ALIAS} will be replaced with the alias you have setup for your bidder. If you use "bidder\_123" as your alias for anuntius, the resulting pattern would look like this:

```
hb_adid_bidder_123
```
{% endhint %}

The `hb_adid` will always be unique for each creative in Prebid, so in order to select that value it has to be matching with this value in the Prebid Universal Creative setup:

```
ucTagData.adId = "%%PATTERN:hb_adid%%";
```

If you are located in Europe, make sure to specify the the technology providers in order to not be blocked by google:

<figure><img src="../.gitbook/assets/image (55).png" alt=""><figcaption></figcaption></figure>

### Step 3, Go live

Now everything should be done and if it's working you will see delivery stats in both google and adnuntius. Make sure that the numbers add upp, and if they are you should be good to go. Good luck!

