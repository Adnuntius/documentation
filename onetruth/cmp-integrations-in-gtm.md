# CMP Integrations in GTM

The CMP will generate a list of purposes that a user has consented to in `localstorage` .

![](../.gitbook/assets/image%20%2815%29.png)

This can then be used by any tag manager to be read and used for loading tags. If a user has given no consent and default behavior is set to "off", then there will be no purposes present in the value.

In GTM you can setup a custom trigger to only fire if a specific word is present in local storage. This is how you do it:

### Setting up custom trigger

In GTM you will have to perform the following steps:

1. Create a custom variable
2. Assign a trigger to the variable
3. Assign a tag to that trigger

#### Create a variable

Natively GTM cannot read the local storage, so you will have to set the variable via a javascript function.

Create a new variable:

![](../.gitbook/assets/image%20%2820%29.png)

Select type JavaScript Variable:

![](../.gitbook/assets/image%20%282%29.png)

Paste the following script into the code field that appears:

```javascript
function() {
  var consent = localStorage.getItem('ot_userConsent');
  return consent;
}
```

![](../.gitbook/assets/image%20%2814%29.png)

Give the variable a proper name and hit save.

#### Assign a trigger

in order to actually trigger something when a consent is given you will have to add a trigger. Go into the triggers section of the UI and create a new trigger:

![](../.gitbook/assets/image%20%2819%29.png)

Select Page View as your trigger type:

![](../.gitbook/assets/image%20%2811%29.png)

Be sure to check that it only should trigger on some pageviews:

![](../.gitbook/assets/image%20%289%29.png)

And the condition to trigger the page view is when our newly created variable `consent` contains a text string of **analytics.**

**Assign a tag**

Last but not least you will have to set assign a tag to that trigger. Start that by adding a new trigger in GTM:

![](../.gitbook/assets/image%20%288%29.png)

For the purpose of this tutorial I've opted to add just a small tag that will say hello in the console, but for your uses you will paste whatever tag you wish to be fired once you have accepted "analytics" purpose in this case.

![](../.gitbook/assets/image%20%2822%29.png)

Once you have Saved your tag and published the workspace you will be able to see your tag being fired if you have consented to analytics.

