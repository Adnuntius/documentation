# Send segments Cxense

## Send segments Client side

```markup
<div id="adn-0000000000024420" style="display:none"></div>

<!-- Get user segments, normal use, with async load of cx.js -->
<script type="text/javascript">
    var cX = cX || {}; cX.callQueue = cX.callQueue || [];
    window.adn = window.adn || {}; adn.calls = adn.calls || [];  

    cX.callQueue.push(['invoke', function() {
        var segments = cX.getUserSegmentIds({ persistedQueryId: '9aa05d8e8105aa93dd1c54e82f24e5f0d0120821' });
        console.log(segments)
        adn.calls.push(function() {
            adn.request({
                segments: segments,
                adUnits: [ 
                {auId: '0000000000024420', auW: 0, auH: 0}
            ]});
        });


    }]);
    // Async load of cx.js
    (function(d,s,e,t){e=d.createElement(s);e.type='text/java'+s;e.async='async';
    e.src='http'+('https:'===location.protocol?'s://s':'://')+'cdn.cxense.com/cx.js';
    t=d.getElementsByTagName(s)[0];t.parentNode.insertBefore(e,t);})(document,'script');
    (function(d, s, e, t) { e = d.createElement(s); e.type = 'text/java' + s; e.async = 'async';
    e.src = 'http' + ('https:' === location.protocol ? 's' : '') + '://cdn.adnuntius.com/adn.js';
    t = d.getElementsByTagName(s)[0]; t.parentNode.insertBefore(e, t); })(document, 'script');
</script>
```

