# Render Key Values in ad

In Adnuntius Ad Server you can setup a render template to print the key value you send with the request. In order to do so you will have to be an admin user and have access to Layouts under **Design -> Layouts.** When you edit your layout, you can add a placeholder in the HTML field to the left, that looks like this:

```
{{kvs.<KEY>.[0]}}
```

All key values that are sent with the request are Arrays in the Render layout, that's why you would need the `[0]` at the end of the tag. You will also need to replace the `<KEY>` with the key that yo send with the request.&#x20;

### **Example**

A very simple render template would look like this:

```
<a rel="nofollow" target="_top" href="{{{urls.destination.url}}}" >
  <img loading="lazy" src="{{{assets.Image.cdnId}}}" style="width: {{creativeWidth}}px; height: {{creativeHeight}}px;"/>
</a>
```

It's basically just an image that you can click on. Now let's say that on the requesting page, we have an article that have news about a specific location. You can in that case put the location as a key into the render template, like this:

```
<a rel="nofollow" target="_top" href="{{{urls.destination.url}}}" >
  <p>Buy it in your store in {{kvs.city.[0]}}</p>
  <img loading="lazy" src="{{{assets.Image.cdnId}}}" style="width: {{creativeWidth}}px; height: {{creativeHeight}}px;"/>
</a>
```

in order to make it appear, you will have to send this with yout ad request:

```
<div id="adn-<AUID>" style="display:none"></div>
<script src="https://cdn.adnuntius.com/adn.js" async></script>
<script>
  window.adn = window.adn || {}; 
  adn.calls = adn.calls || []; 
	adn.calls.push(function () {
    adn.request({
      network: '<NETWORK>', 
      adUnits: [{ auId: '<AUID>', auW: 0, auH: 0, kv: { city: 'Stockholm' } }] 
    }); 
  });
</script>
```

The important part to add above is this piece of code:

```
kv: { city: 'Stockholm' }
```

You can then in the adserver target that specifc key value or any other parameter to make that information show up in your ad.
