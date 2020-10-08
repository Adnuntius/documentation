---
description: 'Variables, triggers and tags.'
---

# Variables, Triggers and Tags

## Variables

A variable is a named placeholder for a value that will change, such as a product name, a price value, or a date. You can add any number of variables. To a computer programmer, a variable is a symbol in code that can be used to represent a value that will change. A variable in Adnuntius Connect performs that same function, and these variables are used in both triggers and tags.

* Variables in triggers are used to define filters that specify when a particular tag should fire. For example, you can fire the trigger “pageview” when a URL variable is “adnuntius.com/adserver.html” 
* Variables in tags are used to capture dynamic values. For example, you can capture and apply the product purchased and its price to a conversion tag.

To create a variable, go to Variables and click “Create new”. Give the variable a name and click Create. Next click on your newly created variable and choose one of these sources: cookies, localStorage, or Data. 

![Example variable.](../../.gitbook/assets/image%20%2830%29.png)

## Triggers

A trigger listens for certain events, such as page loads, clicks or form submissions. When an event is detected that matches the trigger definition, any tags that reference that trigger will fire. In other words, tags fire in response to events, and in Adnuntius Connect a trigger listens to your web page for certain types of events like form submissions, button clicks, or page views. The trigger tells the tag to fire when the specified event is detected. Every tag must have at least one trigger in order to fire.

To create a trigger, go to Triggers and click “Add trigger”. Give your trigger a name and then click to save it. Then click your newly created trigger.

Select trigger type by choosing between pageview, click or form submission. Then add one or more conditions for firing the trigger.

* You can choose to have all conditions met before firing the trigger \(And\), or any of them \(Or\). 
* For each condition, first choose Source, and select between Data, Browser and Element. 
* For each condition, then choose Criteria, and select between URL, Domain and any of the variables you have created. 
* For each condition select an operator: Contains, Equals, Greater than, or Less than. Finally write the value of your condition.

![Example trigger.](../../.gitbook/assets/image%20%2833%29.png)

## Tags

A tag is a code provided by analytics, marketing and other vendors, that sends data to a system such as Adnuntius Data or Google Analytics. Tags generally support vendors to help you integrate their products into your websites or mobile apps. Adnuntius Connect makes it easy to add tags to your website without having to access your projects, and to make each tag subject to users’ consent before they are fired and start collecting user information.

To create a tag, go to Tags and click “Create new”. Give your tag a name and click “Create”. Next, click on your newly created tag.

Add one or more triggers. In the dropdown list you will find all triggers you have created, and you need to choose one or more of these triggers. These triggers will then determine when to fire your new tag.

Next, choose tag type. You can choose between the following.

* Adnuntius ad call. To make an ad request to Adnuntius Advertising. 
* Javascript tag: When choosing this you can paste in any javascript code in the field appearing below. 
* HTML tag: When choosing this you can paste in any HTML code in the field appearing below. 
* Pixel: When choosing this you can paste in any pixel tag in the field appearing below. 
* Google: If you use Google ad units on your page you can simply type in the ad unit’s ID numbers \(for example, 123456, 234567, 345678 and so on\). You can fire multiple Google ad tags at the same time by adding more than one ad unit ID number.

![Example tag.](../../.gitbook/assets/image%20%2832%29.png)

