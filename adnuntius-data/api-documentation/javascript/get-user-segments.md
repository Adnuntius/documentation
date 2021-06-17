# Get user segments

The example below shows how you would read a user's segments, in folder `00000000000aaaaa`, using the javascript API.

```javascript
<script src="https://cdn.adnuntius.com/adn.js" async></script>
<script>
    window.adn = window.adn || {};
    adn.calls = adn.calls || [];
    adn.calls.push(function () {
        adn.getSegments('00000000000aaaaa', {
            onResponse: function(data) {
                // Do something with segments from data
                // Example response looks like this:
                //
                // { 
                //      expiryEpochMillis: 1630918773608,
                //      segments: ["segmentId1", "segmentId2"]
                // }
            }
        });
    });
</script>
```

