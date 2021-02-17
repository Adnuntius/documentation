# Publish

Once you have created your privacy consent box, prebid setup, tags or other elements you want to publish, go to Publish to create tags or to update your existing ones.

**GDPR popup.** First, choose whether the script should launch the privacy consent box to users who have not yet made their choices. Once enabled you can make the following choices:

* Add CSS: once enabled you can add your own CSS in order to style the box as you wish. You can also determine to position the box as: 
  * An overlay, which is a box that will hover over the page while obscuring the content underneath.
  * A message box, which is a box in the lower left corner hovering over the page. 
  * A list. 
* Remove default CSS, meaning that the page’s default CSS file will be overridden by the CSS you add here.

![Publish.](https://lh5.googleusercontent.com/AbepUjkPztN4USZkd3kGicx9V4EOEs812045X-qke3pXgLU1C7ygkxwjxP9mubqhD-7YcxhSZW2_fetLgTAkb9CQcp8-ZIk15wL1dcJFkRqj9hIXaoxPuK_Ls5tYpIAFwJk2vl7K)

**Enable geo positioning.** If you select this option Adnuntius Connect will trigger a pop-up box that asks users to share their exact location. Please see below for a screenshot of an example location box. Once you collect this information you can for example send longitude and latitude to Adnuntius Advertising in order to facilitate hyper-local ad targeting.

![Example geo positioning box.](https://lh3.googleusercontent.com/wAEp8noyXjw96qu0yPlfr1eANQsWAMW4sQGIeJV-PWwpmmSi8HkT1V09ndo72_0vt2vIJhArW_NeD2-4urgJvWOrlscND_koRgw4Hyu28ZVVQpM0S4AsoPkAVuoEKIrEDhnPnbKG)

Next you can choose to deploy to your production environment, your development environment, or both. If you have already deployed the tag to an environment, simply click to save your changes and then hit “Publish”. Now your changes are live; you do not have to redeploy any code.

If you have not yet deployed your tag to product or development, you will need to do so. Below is an example tag, so you know what it looks like.

```html
<script src="https://tags.adnuntius.com/adnuntius/BUBM8LURA.dev.js" async></script>
```

This tag must be placed anywhere in the header of your page, and must run on all pages.

