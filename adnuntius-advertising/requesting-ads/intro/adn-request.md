# Requesting an Ad

`adn.request` is the most basic way to get an ad on your page. Here's a typical example:

```javascript
    adn.request({ auId: '000000000000042d', auW: 364, auH: 90 });
```

This will do the following:

* ask the Adnuntius ad server for an ad from the ad unit with id `000000000000042d`
* set aside a 364×90 pixels space on the web page even before an ad is received from the Adnuntius ad server
* put the ad content from the Adnuntius ad server into an HTML element with an ID of `adn-000000000000042d`

### **The adn.request Parameter Object**

The table below outlines how to tailor the basic adn.request call.

| Parameter and Basic Description | Things of note |
| :--- | :--- |
| `auId` The ad unit tag id | No ad request is made to the Adnuntius ad server without an auId specified. |
| `auW` and `auH` Ad unit's initial width and height before it receives an ad server response. | Can be anything that works as a CSS value. `10`, `'10px'`, `'10%'`, `'10vh'` etc. are all valid. Can be set to 0 or unspecified if not wanting to reserve space for an ad in the page before one is received from the ad server. |
| `env` Specifies which environment's ad server to use. | Defaults to `production` if unspecified. |
| `protocol` Specifies whether to use `http` or `https` in the ad server request. | Defaults to the protocol the web page is using. |
| `targetId` Specifies which element ID in the page to insert an ad into. | Defaults to `adn-{value-of-auId}`.  Comes most in handy when multiple requests to the same ad unit are made to the ad server from the same page. If the same target ID is used multiple times on the same page, will cycle through the HTML elements that match the ID until an empty one is found in which to put the ad. However, to ensure the requested ad is put into the expected spot on the page, unique IDs must be used in your page. |
| `targetClass` Specifies the class by which to find an element to insert an ad into. | If more than one HTML element matches the CSS class specified, will cycle through the HTML elements until it finds an empty one in which to put the ad. If no empty HTML element is found, will fill the first HTML element found and put the ad there.  If `targetClass` is not specified, will use `adn-{value-of-auId}` or the value specified in `targetId` to find the ID of the element in which to place the ad content. |
| `requestTiming` Specifies when to execute the ad request. | Defaults to `immediate`, which means the ad request will be made immediately. Can also be set to `onReady`, which means the ad request will be made only after the document is loaded and parsed; or `onLoad`, which means the ad request will be made only after the document and related files \(images, scripts, iFrames, stylesheets\) have finished loading. |
| `requestMode` Specifies whether to request an ad immediately or avoid requesting an ad if the target element on the page is not present. | Defaults to requesting an ad immediately as `default`.  When set to `hasTarget`, the ad request will not be made if the target element cannot be found on the page. |
| `display` Defines what the value of the target element's CSS display property will be once an ad is requested. | Defaults to `block`. |
| `container` Defines what kind of container in which to place the ad content from the ad server. | Defaults to `iframe`. Other options is `div`, which displays the ad content directly into the page. |
| `ps` Defines the maximum number of ads that the ad server returns to fill the ad unit, known as the page size. | An integer is expected. If unspecified, will use the page size that the ad unit in Adnuntius specifies. If no page size is specified even there, there is no limit to the number of ads that can be returned to fill out the ad unit. |
| `collapsible` Whether to collapse the space an ad unit takes up if no ad is received from the ad server. | Defaults to `true`. |
| `resizeOnPageLoad` Whether to resize the ad unit to the size of the ad unit content once the ad is received from the ad server and has been loaded. | Defaults to `true`.   By default, the ad unit will resize itself to match the size of the ad unit content as soon as an ad is received AND resize itself again to match the size of the ad unit content once all its content has finished loading. This parameter decides whether the ad unit will resize itself only on load of the ad's content, not when the ad content is initially received. |
| `useCookies` Whether or not to use cookies to track unique users, impression caps and CPA. If not using cookies, user IDs and segments would need to be provided manually on each request. | Defaults to `true`. |
| `floorPrice` Specifies the ad unit floor price to be used, overriding the floor price of the Ad Unit within Adnuntius. | `floorPrice: {amount: 11.12, currency: 'SEK'}` A currency code and an amount must be specified for the floor price to be considered valid. |
| `onImpressionResponse` A function that is called once a response from the ad server has been received. | Must be a function if it is to be called. Function will be called even if no ads have been returned. |
| `onPageLoad` A function that is called once a response from the ad server has been received and all its content has been loaded into the page/iframe. | Must be a function if it is to be called. Function will be called even if no ads have been returned. |
| `onNoMatchedAds` A function that is called if no ads return from the ad server for a particular request. | Must be a function if it is to be called. **Note:** only applies to multi ad requests. See below for more information on multi ad requests. |
| `onVisible` A function that is called whenever an ad is visible in the user's browser. | Must be a function. Can be called multiple times if one ad unit request features multiple ads.  Function is called with a parameter object with the following properties: `adId`, `auId`, `creativeId`, `viewability`, `widgetId` |
| `onViewable` A function that is called whenever an ad is considered viewable \(at least 50% of the ad is shown for at least 1 second\) in the user's browser. | Must be a function. Can be called multiple times if one ad unit request features multiple ads.  Function is called with a parameter object with the following properties: `adId`, `auId`, `creativeId`, `viewability`, `widgetId` |
| `onError` A function that is called whenever an error is returned from the ad server. | Must be a function. Function is called with a parameter object showing the error information. |
| `clearTarget` Whether or not to clear the target HTML element of all content before loading the ad into it. | Must be a boolean. Default is `false`. |
| `functionCalls` An array of details that describe the functions to call in the content of the ads that the ad server has returned.  The ad returned from the ad server must also register the functions that are available to be called. | If `functionCalls: [{name: 'nameOfFunction', args: {dataObj: 'data', dataObj2: 'more data'}}]` is specified in the ad request and `adn.inIframe.registerFunction({name: 'nameOfFunction', func: function(args) { // do something here } });` is specified in the ad, the function defined in `func` will be called with `{dataObj: 'data', dataObj2: 'more data'}` as an argument once the ad is loaded.  If `functionCalls` is specified and no corresponding function to call is found in the ad, the function calls will be ignored. |
| `refresh` Allows for the same ad request to be made multiple times after the returned ad is visible or viewable and with a delay. | Can be set simply as `refresh: 3`, which defaults to making the same ad request 3 seconds after the ad is viewable and doing so only once.  For more fine-grained control, can be set as `refresh: {delay: 3, count: 5, event: 'onVisible'}`, which means the same ad request will be made 3 seconds after the returned ad is visible, and this process will be repeated five times.  `delay` must be an integer that is 0 or greater; `event` can only be `onVisible` otherwise it defaults to `onViewable`; and `count` defaults to 1 if it's not an integer greater than 1. |
| `replacements` Allows for text replacements in your ad to be set in the browser code. | Is set as `replacements: {adnReplaceName: 'George', adnReplaceAge: '15'}`, which will replace any `adnReplaceName` or `adnReplaceAge` string inside the ad with the supplied values.  Can also be set as `replacements: {Name: 'George', Age: '15'}` and will also replace any `adnReplaceName` or `adnReplaceAge` string inside the ad with the supplied values. |

#### **Specifying Targeting Criteria via the Parameter Object**

Specifying targeting criteria for the ad request is also done via the parameter object. The table below outlines the options.

| Parameter and Basic Description | Examples and Things to Note |
| :--- | :--- |
| `usi` The universal session identifier used to identify what user session being dealt with, thereby enabling segment targeting and rate limiting. | A string is expected. |
| `siteId` Specifies the site ID to pass onto the segment targeting data source to enable segment targeting. | A string is expected. If unspecified, the network ID of the ad unit's network will be used instead. |
| `userId` Is synonymous with `usi`. | A string is expected. If unspecified, adn.js will look for a cookie value for the key `cX_P` and this will be supplied to the ad server. `cX_P` is a cookie supplied from Cxense. |
| `sessionId` An ID for distinguishing between sessions. | A string is expected. If unspecified, adn.js will look for a cookie value for the key `cX_S` and this will be supplied to the ad server. `cX_S` is a cookie supplied from Cxense. |
| `ctx` The URL from which the request is being made. If specified, is used by the Adnuntius ad server instead of the referer in the HTTP header field. | A string is expected. |
| `kv` Specifies the key-values used for targeting. | `kv: [{key1: ['value1', 'value2']}, {fruit: ['apple']}, {car: ['audi', 'toyota', 'holden']}]` |
| `c` Specifies the categories used for targeting. | `c: ['category1', 'sport/basketball', 'politics']` |
| `latitude` and `longitude` The latitude and longitude used for geospatial targeting. | `latitude: 123.4567` `longitude: 234.4567` |
| `auml` Specifies the ad-unit matching labels used for targeting. | `auml: ['mathing-label1', 'cola-sites']` The ad unit matching labels specified on the ad request supplement the ad unit matching labels that may be specified on the ad unit itself in the Adnuntius system. |
| `segments` Specifies the segments to use for segment targeting. | `segments: ['mysegment1', 'car-drivers']` The segments specified on the ad request supplement whatever segments are associated with the user. |
| `excludedLineItems` Specifies the ids of the line items to exclude from the auction. | `{ excludedLineItems: ['myLineItemId', 'myOtherLineItemId'], adUnits: [{auId: 'myId'}] }`  `excludedLineItems` must be an array. |
| `excludedCreatives` Specifies the ids of the creatives to exclude from the auction. | `{ excludedCreatives: ['myCreativeId', 'myOtherCreativeId'], adUnits: [{auId: 'myId'}] }`  `excludedCreatives` must be an array. |

## **Multi adn.request Calls**

Multi `adn.request` calls allow for the Adnuntius ad server to be asked for multiple ad units' worth of ads in one request. This makes deduplication much more effective, meaning for instance, that the same line item or creative doesn't appear on the same web page multiple times in different locations.

Here's a typical example of a multi ad request:

```javascript
    adn.request({ adUnits: [
        {auId: '0000000000000806', auW: 728, auH: 90},
        {auId: '0000000000000807', auW: 100, auH: 20},
        {auId: '0000000000000808', auW: 40, auH: 40}
    ]});
```

This will do the following:

* ask the Adnuntius ad server for ads to fulfil the three ad units in the `adUnits` array
* set aside space on the web page for each of the ad units even before an ad is received from the Adnuntius ad server
* put the ad content from the Adnuntius ad server into the appropriate HTML elements for each of the ad units

### **requestParams on Multi adn.request Calls**

Multi ad requests also allow for two special modes of loading ads onto your page:

* **Lazy Request:** A request for your ad unit will be made only after the user's viewport is within a particular range of the ad unit
* **Lazy Load:** One request will be made for all your ad units, but the ad itself will only be loaded into the page content after the user's viewport is within a particular range of the ad unit

These modes of loading ads can be specified via the `requestParams` parameter. A typical example is below:

```javascript
    adn.request({ requestParams: {proximity: 50, load: 'lazy'}, adUnits: [
        {auId: '0000000000000806', auW: 728, auH: 90, requestParams: {proximity: 100, load: 'lazy'}},
        {auId: '0000000000000807', auW: 100, auH: 20, requestParams: {load: 'direct'}},
        {auId: '0000000000000808', auW: 40, auH: 40, requestParams: {load: 'lazyRequest'}0,
        {auId: '0000000000000809', auW: 230, auH: 140}
    ]});
```

Along with the standard behaviour, the request above will do the following:

* for `0000000000000806`, be part of the initial ad request to the ad server, but only show the ad and start downloading its assets when the ad unit within the web page is within 100 pixels of the viewport both vertically and horizontally
* for `0000000000000807`, be part of the initial ad request and show the ad within the appropriate ad unit as soon as the ad information comes from the ad server
* for `0000000000000808`, be part of the initial ad request only if the ad unit within the web page is within 50 pixels of the viewport both vertically and horizontally. If this is not the case, a separate ad request will be sent to the ad server when this becomes so. Then, upon receiving the ad information from the ad server, the ad itself will be displayed immediately.
* for `0000000000000809`, be part of the initial ad request, but only show the ad and start downloading its assets when the ad unit within the web page is within 50 pixels of the viewport both vertically and horizontally.

### **The Other Parameters on Multi adn.request Calls**

On a multi adn.request call, some of the adn.request parameters need to be specified in the parent object, some in the ad units and some can be specified in either location, with the ad unit value overriding the parent value if it has been specified.

Here's how the split runs:

* **Parameters specified on parent:** `method`, `usi`, `segments`, `ctx`, `longitude`, `latitude`, `excludedLineItems`, `excludedCreatives`, `onError`
* **Parameters specified on either parent or ad unit:** `requestParams`, `siteId`, `floorPrice`, `resizeOnPageLoad`, `requestMode`, `onImpressionResponse`, `onPageLoad`, `onNoMatchedAds`, `onVisible`, `onViewable`, `clearTarget`, `functionCalls`, `replacements`, `kv`, `c`
* **Parameters specified on the ad unit only:** those not listed above

## **Previewing an Ad**

If you just want to preview a creative in your system, you can do so in either of the following two ways:

#### Requesting a Preview of a Specific Creative

```javascript
adn.request({
    networkId: 'myNetworkId',
    creatives: [{
        creativeId: 'myCreativeId',
        targetId: 'targetDivId',
        creativeWidth: 500, creativeHeight: 500
    }],
});
```

#### Requesting a Preview of Creative Data in a Specific Layout

```javascript
adn.request({
    networkId: 'myNetworkId',
    creatives: [{
        creativeData: {
            creativeWidth: 67, creativeHeight: 67,
            constraintsToText: {heading: 'My Heading'}, layoutId: "dev_network_expandable_leaderboard_layout_2"
        },
        targetId: 'targetDivId'
    }],
});
```

&lt;/div&gt;

## **Getting the Ad Information in JSON Format: adn.requestData**

If you need the ad data in JSON format, you can do so using adn.requestData like so:

#### Requesting Ads in JSON format for a Single Ad Unit

```javascript
var listeners = {
    onSuccess: function(data) {
        // do something with the data
    },
    onError: function(data) {
        // do something with the error
    },
    onResponse: function(data) {
        // do something with all json responses
    }
};
adn.requestData({
   auId: '000000000000041d', kv: [{'myKey': ['myValue1', 'myValue2']} ]
   onSuccess: listeners.onSuccess,
   onError: listeners.onError,
   onResponse: listeners.onResponse
});
```

#### Requesting Ads in JSON format for Multiple Ad Units

```javascript
var listeners = {
    onSuccess: function(data) {
        // do something with the data
    },
    onError: function(data) {
        // do something with the error
    },
    onResponse: function(data) {
        // do something with all json responses
    }
};
adn.requestData({
   adUnits: [{auId: '000000000000041d', kv: [{'myKey': ['myValue1', 'myValue2']}] }, {auId: '000000000000041c'}],
   onSuccess: listeners.onSuccess,
   onError: listeners.onError,
   onResponse: listeners.onResponse
});
```

&lt;/div&gt;

This request works just like all the others except that the response from the ad server will be formatted as JSON and passed as a parameter into the listener functions.

For successful ad server responses, the data passed into the listener functions will be in this form:

```javascript
    {
        responseJSON: {justAnExampleKey: 'justAnExampleValue'},
        responseCode: 200,
        responseText: '{"justAnExampleKey": "justAnExampleValue"}'
    }
```

For failed ad server responses, the data passed into the listener functions will be in this form:

```javascript
    {
        errorText: 'Likely error in service',
        responseCode: 501,
        responseText: '{"bad": "allBad"}'
    }
```

