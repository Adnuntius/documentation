---
description: How to integrate Adnuntius Impact into Google Ad Manager.
---

# Adnuntius Impact

To make sure that Adnuntius Impact formats can be bought through Prebid and rendered correctly in GAM we have provided a couple of scripts that will help. First if you haven't already, setup your GAM account to render prebid ads. Follow this tutorial if you haven't:

{% embed url="https://docs.prebid.org/adops/step-by-step.html" %}

Once that's done you will have a somewhat good understanding on how to setup a prebid line item. That's when you should create a creative for adnuntius impact format.

Create a new third party creative and paste this into the creative script:

```html
<script src="https://tags.adnuntius.com/aim.js"></script>
<script>
  aim.renderImpact({
    url: '%%PATTERN:url%%', 
    adId: '%%PATTERN:hb_adid%%',
    size: '%%PATTERN:hb_size%%'
  })
</script>
```

This will create a safeframe iframe around the prebid ad and tell the parent script through `postMessage` to resize the parent iframe. That means that you will have to add a script on your parent page to listen on the message. Either you can add our dedicated script:

```html
<script src="https://tags.adnuntius.com/aim.js" async></script>
```

Or if you don't trust external scripts you can just add the snippet below that will let you understand how our script works.

```javascript
window.addEventListener('message', function (event) {
  document.querySelectorAll('iframe').forEach(iframe => {
    var win = iframe.contentWindow || iframe.contentDocument.defaultView;
    if (win === event.source && event.data.adnType) {
      var size = event.data.adSize
      iframe.style.width = '100%'
      iframe.style.height = size + 'vh'
      iframe.parentNode.style.width = '100%'
      iframe.parentNode.style.height = size + 'vh'
    }
  });
}, false);
```

Basically it just listens to the message from the Google ad and makes the iframe 100% widht and 100vh in height.&#x20;

Once all of this is done it's recommended to just allow the google ad to be triggered once the sizes are either 1x1px or 1920x1080px ad sizes. The reason would be to not trigger full screen ads on all of the prebid requests.
