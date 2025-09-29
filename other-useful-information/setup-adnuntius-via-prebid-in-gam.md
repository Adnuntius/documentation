# Setup Adnuntius via prebid in GAM

This documents explains step by step how to start up with Prebid, how to add Adnuntius as a bidder and finally get it working in Google Ad Manager.

## 1. Download Prebid

First you will have to download prebid from Prebid.org.

<figure><img src="../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>

Click on the top-right button to get to the page where you can select what SSPs you want to access in Prebid. It's recommended not to select all of the bidders because this will result in a very large file. Only select the ones you want to work with.

<figure><img src="../.gitbook/assets/image (1) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

After that, click the download button at the bottom and your browser will download a javascript file that you can host on your webpage.

## 2. Generate the Prebid request

Next step is to create the code that will actually make the request to Prebid. First you will have to set up the ad units that will bind your Google ad units to Prebid. Add something similar to this on your page:

```html
<script>
  var div_1_sizes = [
    [300, 250],
    [300, 600]
  ];
  
  
  var adUnits = [
    {
      code: '/19968336/header-bid-tag-0',
      mediaTypes: {
        banner: {
          sizes: div_1_sizes
        }
      },
      bids: [{
        bidder: 'adnuntius',
        params: {
          auId: '2df34b'
        }
      }]
    },
  ];
</script>
```

This is the script for creating one ad unit request to Prebid. Most important thing for setting things up for Google, is that the `code` matches up with the ad-tag that you have generated from google.

After that, you will need to add this to your page:

```html
<script>
  var PREBID_TIMEOUT = 1000;
  var FAILSAFE_TIMEOUT = 3000;

  var googletag = googletag || {};
  googletag.cmd = googletag.cmd || [];
  googletag.cmd.push(function() {
    googletag.pubads().disableInitialLoad();
  });

  var pbjs = pbjs || {};
  pbjs.que = pbjs.que || [];

  pbjs.que.push(function() {
    pbjs.addAdUnits(adUnits);
    pbjs.requestBids({
      bidsBackHandler: initAdserver,
      timeout: PREBID_TIMEOUT
    });
  });

  function initAdserver() {
    if (pbjs.initAdserverSet) return;
    pbjs.initAdserverSet = true;
    googletag.cmd.push(function() {
      pbjs.que.push(function() {
        pbjs.setTargetingForGPTAsync();
        googletag.pubads().refresh();
      });
    });
  }
  // in case PBJS doesn't load
  setTimeout(function() {
    initAdserver();
  }, FAILSAFE_TIMEOUT);
</script>
```



The code above will make sure that google does not request any ads before Prebid has returned all the winning ads. This is the line in the code above that makes it happen:

```js
googletag.pubads().disableInitialLoad();
```

Once prebid has returned with ads, it runs the function: `initAdserver` that will continue with the request an pass all Prebid winning bids as key value targeting into google. After this part of the code you just request your google ads with `enableSingleRequest`.

A full code example that will return a prebid ad from adnuntius looks like this:

```html
<html>

<head>
  <link rel="icon" type="image/png" href="/favicon.png">
  <script async src="//www.googletagservices.com/tag/js/gpt.js"></script>
  <script async src="//adnun.net/prebid.js"></script>
  <script>
    var div_1_sizes = [
      [728, 90],
      [970, 250]
    ];

    var adUnits = [
      {
        code: '/19968336/header-bid-tag-1',
        mediaTypes: {
          banner: {
            sizes: div_1_sizes
          }
        },
        bids: [{
          bidder: 'adnuntius',
          params: {
            auId: '2df34b'
          }
        }]
      }
    ];


    var PREBID_TIMEOUT = 1000;
    var FAILSAFE_TIMEOUT = 3000;

    var googletag = googletag || {};
    googletag.cmd = googletag.cmd || [];
    googletag.cmd.push(function () {
      googletag.pubads().disableInitialLoad();
    });

    var pbjs = pbjs || {};
    pbjs.que = pbjs.que || [];

    pbjs.que.push(function () {
      pbjs.addAdUnits(adUnits);
      pbjs.requestBids({
        bidsBackHandler: initAdserver,
        timeout: PREBID_TIMEOUT
      });
    });

    function initAdserver() {
      if (pbjs.initAdserverSet) return;
      pbjs.initAdserverSet = true;
      googletag.cmd.push(function () {
        pbjs.que.push(function () {
          pbjs.setTargetingForGPTAsync();
          googletag.pubads().refresh();
        });
      });
    }
    // in case PBJS doesn't load
    setTimeout(function () {
      initAdserver();
    }, FAILSAFE_TIMEOUT);

    googletag.cmd.push(function () {
      googletag.defineSlot('/19968336/header-bid-tag-1', div_1_sizes, 'div-1').addService(googletag.pubads());
      googletag.pubads().enableSingleRequest();
      googletag.enableServices();
    });

  </script>

</head>

<body>

  <div id='div-1'>
    <script type='text/javascript'>
      googletag.cmd.push(function () {
        googletag.display('div-1');
      });

    </script>
  </div>

</body>

</html>
```

If done correctly, the above code should show an ad that looks like this:

<figure><img src="../.gitbook/assets/image (2) (1).png" alt=""><figcaption></figcaption></figure>

This example makes sure to load the ad in google, but it's not your google. Next we will have to set it up in google.

## 3. Google Setup

The prebid documentation is very good, so I recommend following these steps: https://docs.prebid.org/adops/step-by-step.html

Be sure to use the Banner/Outstream/AMP creative when you place your creatives in google: https://docs.prebid.org/adops/gam-creative-banner-sbs.html

In your case you should select the code that is under the "**Send Top Price Bid Configuration**" It looks like this:

```html
<script src = "https://cdn.jsdelivr.net/npm/prebid-universal-creative@latest/dist/%%PATTERN:hb_format%%.js"></script>
<script>
  var ucTagData = {};
  ucTagData.adServerDomain = "";
  ucTagData.pubUrl = "%%PATTERN:url%%";
  ucTagData.targetingMap = %%PATTERN:TARGETINGMAP%%;
  ucTagData.hbPb = "%%PATTERN:hb_pb%%";

  try {
    ucTag.renderAd(document, ucTagData);
  } catch (e) {
    console.log(e);
  }
</script>
```

this creative is the one that will select the winning line item from prebid. if the prebid line item in google is the one that won the internal auction in google.

Once you have completed these steps, just change the google-tag in the example code and your should be good to go.
