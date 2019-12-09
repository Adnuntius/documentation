# The Four Kinds of Impressions

We collect statistics on four kinds of impressions: standard impressions, rendered impressions, visible impressions and viewable impressions.

Here's what they mean:

### Impressions

An impression is counted as soon as an ad is returned by the ad server. This means that if your ad has collected 100 impressions, there's no guarantee that the ad has ever travelled from the Adnuntius ad server all the way to a user's browser and been seen or even rendered on a web page.

How can you be sure that your ad has even been rendered on a web page? By looking at rendered impressions.

### Rendered Impressions

Rendered impressions count how many times an ad has travelled from the Adnuntius ad server to the user's browser and been rendered on a web page. Each time an ad is rendered into a page, a signal is sent to the Adnuntius system from which we register a rendered impression for the ad.

But even though an ad might be rendered on a web page, that doesn't mean it can be seen, especially if the ad has been rendered down at the bottom of the page.

How can you be sure that an ad could have been seen by the end user? By looking at visible impressions.

### Visible Impressions

Visible impressions count how many times an ad appears in a user's viewport. A viewport is the visible area of any web page. As soon as 1% of an ad's area is within the user's viewport, a signal is sent to the Adnuntius system from which we register a visible impression for the ad.

But even though an ad might be counted as visible, that doesn't mean the end user even noticed that the ad appeared -- the end user could have closed their browser as soon as the ad was visible, for instance.

How can you be sure an ad was visible and there's a reasonable chance it was seen by the end user? By looking at viewable impressions.

### Viewable Impressions

Viewable impressions count how many times at least 50% of an ad's area appears in a user's viewport for one second or more. A viewport is the visible area of any web page, and the viewable impression definition comes straight from the Interactive Advertising Bureau \(IAB\) guidelines. As soon as the viewable impression criteria are met, a signal is sent to the Adnuntius system from which we register a viewable impression for the ad.

With viewable impressions, you can be sure that enough of an ad's area has been within the end user's viewport for long enough that it could have been noticed. Viewable impressions are your best bet that an ad is delivering its message to the end user.

## The Technical Details Behind Impression Statistics

### Impressions

Of the four kinds of impressions, standard impressions are the most robustly measured. This is because the count is made as soon as the the Adnuntius system decides which ad to show, so no other processes or systems can interfere with the statistics gathering. After Adnuntius receives the ad request, the impression count is made before the ad leaves the Adnuntius system, thereby ensuring that the impression count is always the least likely to be mistaken.

### Rendered Impressions

Rendered impressions are generated via an Iframe that works much like a tracking pixel. Every ad that Adnuntius returns comes with an invisible Iframe that has an identifying URL that calls the Adnuntius system. Once Adnuntius receives the request from the Iframe URL, the ad's rendered impression count increments.

It is possible, however, that some rendered impressions are missed for reasons that are beyond the control of Adnuntius. These reasons include:

the user's browser blocks or interferes with the Iframe request; add-ons or extensions installed on the user's browser block or interfere with the Iframe request; there's a problem with how the ad content is rendered into the page and the Iframe is not created properly; a network problem emerges which means the Iframe request never reaches the Adnuntius system. Despite these points, rendered impressions are rarely missed. The most likely reason for any significant mismatch between impressions and rendered impressions is that the ad in its entirety is not being correctly rendered into the page or there is a very large latency between Adnuntius sending an ad and the ad being received by the browser.

### Visible and Viewable Impressions

The techniques for counting visible and viewable impressions are very similar. In both cases, some JavaScript code executed in the user's browser monitors the position of the ads in relation to the viewport. Once visible or viewable impression criteria are met, the JavaScript code shoots off an AJAX request to the Adnuntius system to register the visible or viewable impression.

Much like rendered impressions, there are reasons beyond Adnuntius' control for why visible or viewable impressions might be missed. In addition to the reasons already mentioned in the rendered impressions section above, visible or viewable impressions could be missed because:

* the end user's browser is over ten years old and cannot execute the JavaScript that monitors the ad's position on the page or that sends an AJAX request off to the Adnuntius system;
* the end user's browser has turned off the execution of any JavaScript;
* there is other non-Adnuntius JavaScript code in the web page that produces a significant error that blocks all execution of JavaScript code.

  Despite these points, visible and viewable impressions work very well with only a minimal percentage ever being missed. If the visible and viewable impression numbers are significantly lower than the rendered impressions, the most obvious explanation is the most likely: the ad has been rendered in a spot on the web page that the end user is unlikely to see.

