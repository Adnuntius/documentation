# Layout Support

adn.js provides many functions to support the design of your creative's layout.

The following functions can each be called from within a layout and provide the described functionality.

## adn.inIframe.getResponseCtrId\(\)

Returns the ID of the HTML div that wraps the ad content. Is currently `responseCtr` and is unlikely to change.

## adn.inIframe.blockResizeToContent\(\)

Blocks the initial width and height of the ad container from resizing itself to fit the content of the served ad.

Resizing can be blocked on the request side. This also provides the same functionality on the layout side.

## adn.inIframe.isResizeToContent\(\)

Whether or not the ad container's initial width and height will be resized to fit the content of the served ad. Returns either `true` or `false`.

## adn.inIframe.getIframeId\(\)

Returns the ID of the Iframe that is containing the ad as a string.

## adn.inIframe.parentSubscribeEvent\(args\)

Provides the ability to register a callback that is called each time the parent window does a particular event. Can also subscribe to the `impRegistered` event, which is specific to adn.js, and occurs once the parent window is informed that an impression has occurred.

Below is an example of how to subscribe to the events.

```text
var iframeId = adn.inIframe.getIframeId();
adn.inIframe.parentSubscribeEvent({ifrId: iframeId, event: 'resize', cb: function(args) {} });
adn.inIframe.parentSubscribeEvent({ifrId: iframeId, event: 'impRegistered', cb: function(args) {} });
```

The args object returned as a parameter in the callback includes the width and height of the parent window.

## adn.inIframe.getAdRequestInfo\(args\)

Gets information to do with the initial ad request, along with a whole bunch of other data.

Below is an example of how to request the info:

```text
adn.inIframe.getAdRequestInfo({
  onInfoReceived: function(data) {
  }
});
```

The data returned as a parameter to the callback function includes anything that was set on the ad request.

## adn.inIframe.updateAd\(args\)

Updates the ad and the ad's container as required.

The best way to explain this is with examples.

```text
var iframeId = adn.inIframe.getIframeId();
adn.inIframe.updateAd({ifrW: 200, ifrH: 300, ifrId: iframeId, ifrStyle: {border: '10px solid black'}, parentStyle: {padding: '20px'}});
```

Here, the ad and its container will resize to 200x300 pixels and apply the supplied styles to the iframe itself and the target element in the parent document.

```text
var iframeId = adn.inIframe.getIframeId();
var eventElement = document.getElementById("myId");
adn.inIframe.updateAd({ifrId: iframeId, ifrW: '100%', ifrH: 1000, el: eventElement, event: 'mouseover', cb: function() {// do stuff here} });
```

Here, whenever the mouse hovers over `eventElement`, the ad will resize itself to be 100% in width and 1000 pixels in height and the callback called.

```text
var iframeId = adn.inIframe.getIframeId();
var closeLink = document.getElementById("closeLink");
adn.inIframe.updateAd({ifrId: iframeId, ifrW: '100%', ifrH: '100%',  parentStyle: {display: 'block'},  ifrStyle: {display: 'block', top: 0, left: 0, backgroundColor: bgColor}, stack: 'absolute', el: window, event: 'load', cb: function() {});
adn.inIframe.updateAd({ifrId: iframeId, ifrW: 0, ifrH: 0, parentStyle: {display: 'none'}, el: closeLink, event: 'click', cb: onClickCallback});
```

Here, when the ad is loaded inside the iframe, the ad's size will be adjusted accordingly, as will styles updated for the iframe's container and the iframe itself. In addition, the iframe will be set to absolute positioning via the `stack` setting. Then, when the `closeLink` element is clicked, the ad will disappear. Another possible value for `stack` is `relative`, which means the iframe will be positioned absolutely relative to the target element in the parent document. Setting `stack` to any other value will render everything as statically positioned.

## adn.inIframe.registerFunction\(args\)

Registers a function that can be called from the ad request or the publisher's page more generally.

If `functionCalls: [{name: 'nameOfFunction', args: {dataObj: 'data', dataObj2: 'more data'}}]` is specified in the ad request and `adn.inIframe.registerFunction({name: 'nameOfFunction', func: function(args) { // do something here } });` is specified in the ad, the function defined in `func` will be called with `{dataObj: 'data', dataObj2: 'more data'}` as an argument once the ad is loaded. If `functionCalls` is specified and no corresponding function to call is found in the ad, the function calls will be ignored.

Alternatively, the publisher's page can call the functions defined by `registerFunction` by calling `adn.callChildFunction({name: 'functionName', args: {data: 'data'}, auId: 'example-au-id'})`.

## adn.inIframe.callParentFunction\(funcName, args\)

Calls a function specified in the ad request whose name is `funcName` and passes in the optional data in `args`.

If `functions: [{name: 'nameOfFunction', func: function(adRequestData, dataFromAd) { /* do something */ } }]` is specified in the ad request and `adn.inIframe.callParentFunction('nameOfFunction', {text: 'data to pass to parent'});` is specified in the ad, the function defined in `func` will be called with the ad request data as the first argument and `{text: 'data to pass to parent'}` as the second argument.

## adn.inIframe.sendCustomEvent\(args\)

Sends custom events to Adnuntius for tracking user interactions or other actions not tracked by the standard statistics.

Including the following code in your Layout `adn.inIframe.sendCustomEvent('{{adId}}', {events:[{customType: 'custom_event_id'}, {customType: 'another_custom_event_id'}]});` will send two custom events to Adnuntius for the specified event ids.

## adn.inIframe.intersectionCallback\(adId, config\)

Whenever the ad denoted by the `adId` is within the viewport according to the criteria set within `config`, the callback function at `config.callback` will be called.

The best way to explain this is via examples. If the following code is placed within a layout or creative:

```text
adn.inIframe.intersectionCallback('{{adId}}', {callback: function(data) { /* this will get called */ } });
```

The above code will call the callback function whenever 50% of the ad defined by `adId` has been within the viewport.

The following example demonstrates the variety of options available:

```text
adn.inIframe.intersectionCallback('{{adId}}', {id: 'myId', maxTime: 2000, threshold: 75, callback: function(data) { /* this will get called */ } });
```

The above code will call the callback function whenever 75% of the ad defined by `adId` has been within the viewport for more than 2000 milliseconds.

If 75% of the ad defined by `adId` has been within the viewport for less than 2000 milliseconds _and_ the user is done with the page either by browsing elsewhere or closing the window, the callback function will also be called.

The `id` in the config is used to distinguish between multiple calls to `intersectionCallback` for the same `adId`.

The `data` that is returned as an argument to the callback function includes the following:

* `adId`: same as the `adId` passed in
* `id`: same as the `id` passed in otherwise a random string
* `timeIntersect`: length of time in milliseconds that the ad is in the viewport
* `criteriaMet`: boolean describing whether the intersection criteria have been met for the specified length of time

## adn.inIframe.recordInScreen\(adId, customEventId, config\)

Whenever the ad denoted by the `adId` is within the viewport according to the criteria set within `config`, the custom event denoted by `customEventId` will be triggered with the time the ad is within the viewport sent through.

The best way to explain this is via examples. If the following code is placed within a layout or creative:

```text
adn.inIframe.recordInScreen('{{adId}}', 'custom-event-id-as-defined-within-adnuntius');
```

The above code will register the custom event when 50% of the ad defined by `adId` has been within the viewport for longer than 2 minutes (120,000 milliseconds). If 50% of the ad defined by `adId` has been within the viewport for less than 2 minutes _and_ the user is done with the page either by browsing elsewhere or closing the window, the custom event will also be registered with the lesser time specified.

The following example demonstrates the variety of options available:

```text
adn.inIframe.recordInScreen('{{adId}}', 'custom-event-id-as-defined-within-adnuntius', {maxTime: 5000, threshold: 75});
```

The above code will register the custom event whenever 75% of the ad defined by `adId` has been within the viewport for more than 5000 milliseconds.

If 75% of the ad defined by `adId` has been within the viewport for less than 5000 milliseconds _and_ the user is done with the page either by browsing elsewhere or closing the window, the custom event will also be registered with the lesser time specified.

