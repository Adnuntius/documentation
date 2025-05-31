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

The entries below describe how to tailor the basic adn.request call.

#### auId

The ad unit tag id. No ad request is made to the Adnuntius ad server without an auId specified.

#### auW and auH

The ad unit's initial width and height before it receives an ad server response. Used to reserve space in the page.

Can be anything that works as a CSS value. `10`, `'10px'`, `'10%'`, `'10vh'` etc. are all valid. Can be set to 0 or unspecified if not wanting to reserve space for an ad in the page before one is received from the ad server.

#### protocol

Specifies whether to use `http` or `https` in the ad server request. Defaults to the protocol the web page is using.

#### targetId

Specifies which element ID in the page to insert an ad into. Defaults to `adn-{value-of-auId}`.

Comes most in handy when multiple requests to the same ad unit are made to the ad server from the same page. If the same target ID is used multiple times on the same page, will cycle through the HTML elements that match the ID until an empty one is found in which to put the ad. However, to ensure the requested ad is put into the expected spot on the page, unique IDs must be used in your page.

#### targetClass

Specifies the class by which to find an element to insert an ad into.

If more than one HTML element matches the CSS class specified, will cycle through the HTML elements until it finds an empty one in which to put the ad. If no empty HTML element is found, will fill the first HTML element found and put the ad there. If `targetClass` is not specified, will use `adn-{value-of-auId}` or the value specified in `targetId` to find the ID of the element in which to place the ad content.

#### requestTiming

Specifies when to execute the ad request. Defaults to `immediate`, which means the ad request will be made immediately. Can also be set to `onReady`, which means the ad request will be made only after the document is loaded and parsed; or `onLoad`, which means the ad request will be made only after the document and related files (images, scripts, iFrames, stylesheets) have finished loading.

#### requestMode

Specifies whether to request an ad immediately or avoid requesting an ad if the target element on the page is not present.

Defaults to requesting an ad immediately as `default`. When set to `hasTarget`, the ad request will not be made if the target element cannot be found on the page.

#### display

Defines what the value of the target element's CSS display property will be once an ad is requested. Defaults to `block`.

#### container

Defines what kind of container in which to place the ad content from the ad server.

Defaults to `iframe`. Other options is `div`, which displays the ad content directly into the page.

#### ps

Short for page size, defines the maximum number of ads that the ad server can return to fill the ad unit.

An integer is expected. If unspecified, will use the page size that the ad unit in Adnuntius specifies. If no page size is specified even there, there is no limit to the number of ads that can be returned to fill out the ad unit.

#### collapsible

Whether to collapse the space an ad unit takes up if no ad is received from the ad server. Defaults to `true`.

#### resizeOnPageLoad

Whether to resize the ad unit to the size of the ad unit content once the ad is received from the ad server and has been loaded. Defaults to `true`.

By default, the ad unit will resize itself to match the size of the ad unit content as soon as an ad is received AND resize itself again to match the size of the ad unit content once all its content has finished loading. This parameter decides whether the ad unit will resize itself only on load of the ad's content, not when the ad content is initially received.

#### useCookies

Whether or not to use cookies to track unique users, impression caps and CPA. If not using cookies, user IDs and segments would need to be provided manually on each request. Defaults to `true`.

#### floorPrice

Specifies the ad unit floor price to be used, overriding the floor price of the Ad Unit within Adnuntius.

Specified as: `floorPrice: {amount: 11.12, currency: 'SEK'}`. A currency code and an amount must be specified for the floor price to be considered valid.

#### onResponse

A function that is called once a response from the ad server has been received. Must be a function if it is to be called. Function will be called even if no ads have been returned.

#### onAllResponses

A function that is called once a response from the ad server has been received across all ad units in the request. Must be a function if it is to be called. Function will be called even if no ads have been returned.

#### onImpressionResponse

A function that is called once a response from the ad server has been received. Must be a function if it is to be called. Must be a function if it is to be called. Function will only be called if an ad has been returned.

#### onPageLoad

A function that is called once a response from the ad server has been received and all its content has been loaded into the page/iframe. Must be a function if it is to be called. Function will be called even if no ads have been returned.

#### onNoMatchedAds

A function that is called if no ads return from the ad server for a particular request. Must be a function if it is to be called. **Note:** only applies to multi ad requests. See below for more information on multi ad requests.

#### onVisible

A function that is called whenever an ad is visible in the user's browser. Must be a function. Can be called multiple times if one ad unit request features multiple ads. A parameter object is passed into the onVisible function with the following properties: `adId`, `auId`, `creativeId`, `viewability`, `widgetId`

#### onViewable

A function that is called whenever an ad is considered viewable (at least 50% of the ad is shown for at least 1 second) in the user's browser. Must be a function. Can be called multiple times if one ad unit request features multiple ads. A parameter object is passed into the onVisible function with the following properties: `adId`, `auId`, `creativeId`, `viewability`, `widgetId`

#### onError

A function that is called whenever an error is returned from the ad server. Must be a function. Function is called with a parameter object showing the error information.

#### clearTarget

Whether or not to clear the target HTML element of all content before loading the ad into it. Must be a boolean. Default is `false`.

#### functionCalls and adn.callChildFunctions()

`functionCalls` is an array of details that describe the functions to call in the content of the ads that the ad server has returned as soon as the ad content is loaded into the page. The ad returned from the ad server must also register the functions that are available to be called.

`adn.callChildFunctions(dataObj)` is a separate function call to achieve the same end that is more flexible and can used to call a function in the ad content at any time.

If the following is specified in the ad request:

```
functionCalls: [{name: 'nameOfFunction', args: {dataObj: 'data', dataObj2: 'more data'}}]
```

and specified in the ad is the following:

```
adn.inIframe.registerFunction({name: 'nameOfFunction', func: function(args) { // do something here } });
```

the function defined in `func` will be called with `{dataObj: 'data', dataObj2: 'more data'}` as an argument once the ad is loaded. If `functionCalls` is specified and no corresponding function to call is found in the ad, the function calls will be ignored.

Alternatively, the publisher's page can use `adn.callChildFunction({name: 'functionName', args: {data: 'data'}, auId: 'example-au-id'})` to call functions within the ad content. `auId`, `targetClass` or `targetId` can be specified to determine in which ad content to find the function. If no value is provided for `auId`, `targetClass` or `targetId`, then the function will be called if found in any ad content on the page.

#### functions

An array of details that describe the functions that ads returned from the ad server can call.

If `functions: [{name: 'nameOfFunction', func: function(adRequestData, dataFromAd) { /* do something */ } }]` is specified in the ad request and `adn.inIframe.callParentFunction('nameOfFunction', {text: 'data to pass to parent'})` is specified in the ad, the function defined in `func` will be called with the ad request data as the first argument and `{text: 'data to pass to parent'}` as the second argument.

#### refresh

Allows for the same ad request to be made multiple times after the returned ad is visible or viewable and with a delay. Can be set simply as `refresh: 3`, which defaults to making the same ad request 3 seconds after the ad is viewable and doing so only once.

For more fine-grained control, can be set as `refresh: {delay: 3, count: 5, event: 'onVisible'}`, which means the same ad request will be made 3 seconds after the returned ad is visible, and this process will be repeated five times. `delay` must be an integer that is 0 or greater; `event` can only be `onVisible` otherwise it defaults to `onViewable`; and `count` defaults to 1 if it's not an integer greater than 1.

#### replacements

Allows for text replacements in your ad to be set in the browser code.

Is set as `replacements: {adnReplaceName: 'George', adnReplaceAge: '15'}`, which will replace any `adnReplaceName` or `adnReplaceAge` string inside the ad with the supplied values. Can also be set as `replacements: {Name: 'George', Age: '15'}` and will also replace any `adnReplaceName` or `adnReplaceAge` string inside the ad with the supplied values.

### **Specifying Targeting Criteria via the Parameter Object**

Specifying targeting criteria for the ad request is also done via the parameter object.

#### usi

The universal session identifier used to identify what user session being dealt with, thereby enabling segment targeting and rate limiting. A string is expected.

#### siteId

Specifies the site ID to pass onto the segment targeting data source to enable segment targeting. A string is expected. If unspecified, the network ID of the ad unit's network will be used instead.

#### userId

Is synonymous with `usi`. A string is expected. If unspecified, adn.js will look for a cookie value for the key `cX_P` and this will be supplied to the ad server. `cX_P` is a cookie supplied from Cxense.

#### sessionId

An ID for distinguishing between sessions. A string is expected. If unspecified, adn.js will look for a cookie value for the key `cX_S` and this will be supplied to the ad server. `cX_S` is a cookie supplied from Cxense.

#### consentString

IAB GDPR consent string. A string is expected. Can be the Adnuntius consent string or another vendor's. Value is passed into creatives also.

#### gdpr

A GDPR flag. 0 or 1 is expected, either as a string or integer. Is a flag to signal when GDPR is applicable. Value is passed into creatives also.

#### ctx

The URL from which the request is being made. If specified, is used by the Adnuntius ad server instead of the referer in the HTTP header field. A string is expected.

#### kv

Specifies the key-values used for targeting. An example:

```
kv: [{key1: ['value1', 'value2']}, {fruit: ['apple']}, {car: ['audi', 'toyota', 'holden']}]`
```

#### c

Specifies the categories used for targeting. Example: `c: ['category1', 'sport/basketball', 'politics']`

#### latitude and longitude

The latitude and longitude used for geospatial targeting. Example: `latitude: 123.4567`, `longitude: 234.4567`.

#### auml

Specifies the ad-unit matching labels used for targeting. Example: `auml: ['mathing-label1', 'cola-sites']`.

The ad unit matching labels specified on the ad request supplement the ad unit matching labels that may be specified on the ad unit itself in the Adnuntius system.

#### segments

Specifies the segments to use for segment targeting. Example: `segments: ['mysegment1', 'car-drivers']`.

The segments specified on the ad request supplement whatever segments are associated with the user.

#### excludedLineItems

Specifies the ids of the line items to exclude from the auction. Must be an array. Example:

```
{ excludedLineItems: ['myLineItemId', 'myOtherLineItemId'], adUnits: [{auId: 'myId'}] }
```

#### excludedCreatives

Specifies the ids of the creatives to exclude from the auction. Must be an array. Example:

```
{ excludedCreatives: ['myCreativeId', 'myOtherCreativeId'], adUnits: [{auId: 'myId'}] }
```

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
        {auId: '0000000000000808', auW: 40, auH: 40, requestParams: {load: 'lazyRequest'}},
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

* **Parameters specified on parent:** `method`, `usi`, `segments`, `consentString`, `gdpr`, `ctx`, `longitude`, `latitude`, `excludedLineItems`, `excludedCreatives`, `onError`
* **Parameters specified on either parent or ad unit:** `requestParams`, `siteId`, `floorPrice`, `resizeOnPageLoad`, `requestMode`, `onImpressionResponse`, `onPageLoad`, `onNoMatchedAds`, `onVisible`, `onViewable`, `clearTarget`, `functionCalls`, `functions`, `replacements`, `kv`, `c`
* **Parameters specified on the ad unit only:** those not listed above

## **Requesting Ads in Single-Page Applications**

Single-page applications with virtual page transitions require special handling.

Between virtual page transitions, `adn.clearDivs()` or `adn.clearOut()` should be called.

`adn.clearOut()` clears out all the ad request information that has been collected and makes that process start anew. `adn.clearDivs()` does everything that `adn.clearOut()` does and also clears out any ads that appear on the page.

## **Previewing an Ad**

Preview Ad Requests are used to view a _specific_ creative. Preview requests **do not** result in any delivery statistics being recorded in Adnuntius, so are suitable for internal uses such as: reviewing how a creative will appear when rendered by the ad server.

You can always preview any running ads, but it is also possible to make preview requests _before_ a Line Item has gone live. To enable preview, you simply need to move the Line Item into the _Reserved_ state.

#### Requesting a Preview of a Specific Creative

```javascript
adn.preview({
    networkId: 'myNetworkId',
    creatives: [{
        creativeId: 'myCreativeId',
        targetId: 'targetDivId',
        creativeWidth: 500, creativeHeight: 500
    }],
});
```

You can use a preview request to render _custom data_, without even requiring an Adnuntius Creative, using a specific layout.

#### Requesting a Preview of Creative Data in a Specific Layout

```javascript
adn.preview({
    networkId: 'myNetworkId',
    creatives: [{
        creativeData: {
            creativeWidth: 100, creativeHeight: 100,
            constraintsToText: {message: 'My Message'}, layoutId: "my_text_layout"
        },
        targetId: 'targetDivId'
    }],
});
```

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

\</div>

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

## Requesting with segments

In order to specify the source of the segment we have two ways of doing this, either user `userSegments`or `segments` in your ad request.

#### userSegments

```javascript
window.adn = window.adn || {};
adn.calls = adn.calls || [];
adn.calls.push(function () {
    adn.request({
        userSegments: {
            ADNUNTIUS: ['xyz', '123'],
        },
        adUnits: [
            { auId: '00000000000aaaaa', auW: 800, auH: 300 }
        ]
    });
});
```

#### segments

```javascript
window.adn = window.adn || {};
adn.calls = adn.calls || [];
adn.calls.push(function () {
    adn.request({
        segments: ['adnuntius.xyz', 'adnuntius.123'],
        adUnits: [
            { auId: '00000000000aaaaa', auW: 800, auH: 300 }
        ]
    });
});
```

The allowed sources can be found [here](../../admin-api/endpoints/segmentsupload.md) and they are case sensitive. If you use `userSegments` they need to be all caps, if you use `segments` they need to be lower case.
