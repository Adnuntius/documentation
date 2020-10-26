# Privacy GTM integration

In order to have your tags fired correctly, due to purposes that have been selected, you will have to set up your Google Tag Manager \(GTM\) Accordingly:

1. **Create a custom variable in GTM.**
2. **Create triggers on that variable.**
3. **Use that trigger on affected tags.**

### 1. Create custom variable in GTM

Go to the variables section in GTM and select new:

![](../../.gitbook/assets/image%20%2835%29.png)

Choose the variable type of Custom Javascript:

![](../../.gitbook/assets/image%20%2841%29.png)

Paste the followin codesnippet in the code box that appears:

```javascript
function() {
	var purposes = localStorage.getItem('adn-consent');
    purposes = JSON.parse(purposes).purposes
	return purposes;
}
```

Give the variable a name and save it.

### 2. Create a trigger

In order to get the tags to fire correctly you will have to choose a trigger for it. Switch to the triggers section and create a new:

![](../../.gitbook/assets/image%20%2834%29.png)

In this example we want a page view trigger to fire only if you have accepted all purposes or purpose 1 and 10. So in the "new triggers window" select "Page View":

![](../../.gitbook/assets/image%20%2836%29.png)

Click on "Some Page Views" and select the variable name that you created in the previous step:

![](../../.gitbook/assets/image%20%2839%29.png)

Add the number for the purpose you would like to use:

![](../../.gitbook/assets/image%20%2838%29.png)

Then add The purposes you would like to use for a trigger so that you have a similar setup of triggers:

![](../../.gitbook/assets/image%20%2837%29.png)

### 3. Use the trigger on affected tags

Go to the tags section and then either create a new tag or click on a trigger already there.  Select the trigger you need to be set in order to fire that tag. If the tag is allowed for multiple purposes then just ad it to the tag:

![](../../.gitbook/assets/image%20%2842%29.png)

if it should only trigger on one purpose, just add that one.









