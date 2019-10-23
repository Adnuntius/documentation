
## Retrieving user segments in browser

The example below shows how you would read a user's segments, in folder `00000000000aaaaa`, using the javascript API.

```javascript
<script type="text/javascript" src="https://cdn.adnuntius.com/adn.js" async></script>
<script>
    adn.getSegments('00000000000aaaaa', {
        onResponse: function(data) {
            // segments come as data
        }
    });
</script>
````
