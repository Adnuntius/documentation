# Requesting an Ad

`adn.request` is the most basic way to get an ad on your page. Here's a typical example:

```text
    adn.request({ auId: '000000000000042d', auW: 364, auH: 90 });
```

This will do the following:

* ask the Adnuntius ad server for an ad from the ad unit with id `000000000000042d`
* set aside a 364×90 pixels space on the web page even before an ad is received from the Adnuntius ad server
* put the ad content from the Adnuntius ad server into an HTML element with an ID of `adn-000000000000042d`

### **The adn.request Parameter Object**

The table below outlines how to tailor the basic adn.request call.

<table>
  <thead>
    <tr>
      <th style="text-align:left">Parameter</th>
      <th style="text-align:left">Basic Description</th>
      <th style="text-align:left">Things of note</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><code>auId</code>
      </td>
      <td style="text-align:left">The ad unit id</td>
      <td style="text-align:left">No ad request is made to the Adnuntius ad server without an auId specified.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>auW</code> and <code>auH</code>
      </td>
      <td style="text-align:left">Ad unit&apos;s initial width and height before it receives an ad server
        response.</td>
      <td style="text-align:left">Can be anything that works as a CSS value. <code>10</code>, <code>&apos;10px&apos;</code>, <code>&apos;10%&apos;</code>, <code>&apos;10vh&apos;</code> etc.
        are all valid. Can be set to 0 or unspecified if not wanting to reserve
        space for an ad in the page before one is received from the ad server.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>env</code>
      </td>
      <td style="text-align:left">Specifies which environment&apos;s ad server to use.</td>
      <td style="text-align:left">Defaults to <code>production</code> if unspecified.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>protocol</code>
      </td>
      <td style="text-align:left">Specifies whether to use <code>http</code> or <code>https</code> in the ad
        server request.</td>
      <td style="text-align:left">Defaults to the protocol the web page is using.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>targetId</code>
      </td>
      <td style="text-align:left">Specifies which element ID in the page to insert an ad into.</td>
      <td style="text-align:left">Defaults to <code>adn-{value-of-auId}</code>. Comes most in handy when
        multiple requests to the same ad unit are made to the ad server from the
        same page. If the same target ID is used multiple times on the same page,
        will cycle through the HTML elements that match the ID until an empty one
        is found in which to put the ad. However, to ensure the requested ad is
        put into the expected spot on the page, unique IDs must be used in your
        page.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>targetClass</code>
      </td>
      <td style="text-align:left">Specifies the class by which to find an element to insert an ad into.</td>
      <td
      style="text-align:left">If more than one HTML element matches the CSS class specified, will cycle
        through the HTML elements until it finds an empty one in which to put the
        ad. If no empty HTML element is found, will fill the first HTML element
        found and put the ad there. If <code>targetClass</code> is not specified,
        will use <code>adn-{value-of-auId}</code> or the value specified in <code>targetId</code> to
        find the ID of the element in which to place the ad content.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>display</code>
      </td>
      <td style="text-align:left">Defines what the value of the target element&apos;s CSS display property
        will be once an ad is requested.</td>
      <td style="text-align:left">Defaults to <code>block</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>container</code>
      </td>
      <td style="text-align:left">Defines what kind of container in which to place the ad content from the
        ad server.</td>
      <td style="text-align:left">Defaults to <code>iframe</code>. Other options is <code>div</code>, which
        displays the ad content directly into the page. <b>Note:</b> only applies
        to multi ad requests. See below for more information on multi ad requests. <b>Note:</b> is
        currently an experimental feature and does not collect visibility or viewability
        stats.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>ps</code>
      </td>
      <td style="text-align:left">Defines the maximum number of ads that the ad server returns to fill the
        ad unit, known as the page size.</td>
      <td style="text-align:left">An integer is expected. If unspecified, will use the page size that the
        ad unit in Adnuntius specifies. If no page size is specified even there,
        there is no limit to the number of ads that can be returned to fill out
        the ad unit.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>collapsible</code>
      </td>
      <td style="text-align:left">Whether to collapse the space an ad unit takes up if no ad is received
        from the ad server.</td>
      <td style="text-align:left">Defaults to <code>true</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>resizeOnPageLoad</code>
      </td>
      <td style="text-align:left">Whether to resize the ad unit to the size of the ad unit content once
        the ad is received from the ad server and has been loaded.</td>
      <td style="text-align:left">Defaults to <code>true</code>. By default, the ad unit will resize itself
        to match the size of the ad unit content as soon as an ad is received AND
        resize itself again to match the size of the ad unit content once all its
        content has finished loading. This parameter decides whether the ad unit
        will resize itself only on load of the ad&apos;s content, not when the
        ad content is initially received.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>useCookies</code>
      </td>
      <td style="text-align:left">Whether or not to use cookies to track unique users, impression caps and
        CPA. If not using cookies, user IDs and segments would need to be provided
        manually on each request.</td>
      <td style="text-align:left">Defaults to <code>true</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>floorPrice</code>
      </td>
      <td style="text-align:left">Specifies the ad unit floor price to be used, overriding the floor price
        of the Ad Unit within Adnuntius.</td>
      <td style="text-align:left"><code>floorPrice: {amount: 11.12, currency: &apos;SEK&apos;}</code>
        <br
        />A currency code and an amount must be specified for the floor price to
        be considered valid.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>onImpressionResponse</code>
      </td>
      <td style="text-align:left">A function that is called once a response from the ad server has been
        received.</td>
      <td style="text-align:left">Must be a function if it is to be called. Function will be called even
        if no ads have been returned.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>onPageLoad</code>
      </td>
      <td style="text-align:left">A function that is called once a response from the ad server has been
        received and all its content has been loaded into the page/iframe.</td>
      <td
      style="text-align:left">Must be a function if it is to be called. Function will be called even
        if no ads have been returned.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>onNoMatchedAds</code>
      </td>
      <td style="text-align:left">A function that is called if no ads return from the ad server for a particular
        request.</td>
      <td style="text-align:left">Must be a function if it is to be called. <b>Note:</b> only applies to multi
        ad requests. See below for more information on multi ad requests.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>onVisible</code>
      </td>
      <td style="text-align:left">A function that is called whenever an ad is visible in the user&apos;s
        browser.</td>
      <td style="text-align:left">
        <p>Must be a function. Can be called multiple times if one ad unit request
          features multiple ads.</p>
        <p>Function is called with a parameter object with the following properties: <code>adId</code>, <code>auId</code>, <code>creativeId</code>, <code>viewability</code>, <code>widgetId</code>
        </p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><code>onViewable</code>
      </td>
      <td style="text-align:left">A function that is called whenever an ad is considered viewable (at least
        50% of the ad is shown for at least 1 second) in the user&apos;s browser.</td>
      <td
      style="text-align:left">
        <p>Must be a function. Can be called multiple times if one ad unit request
          features multiple ads.</p>
        <p>Function is called with a parameter object with the following properties: <code>adId</code>, <code>auId</code>, <code>creativeId</code>, <code>viewability</code>, <code>widgetId</code>
        </p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left"><code>onError</code>
      </td>
      <td style="text-align:left">A function that is called whenever an error is returned from the ad server.</td>
      <td
      style="text-align:left">Must be a function. Function is called with a parameter object showing
        the error information.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>clearTarget</code>
      </td>
      <td style="text-align:left">Whether or not to clear the target HTML element of all content before
        loading the ad into it.</td>
      <td style="text-align:left">Must be a boolean. Default is <code>false</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><code>functionCalls</code>
      </td>
      <td style="text-align:left">
        <p>An array of details that describe the functions to call in the content
          of the ads that the ad server has returned.</p>
        <p>The ad returned from the ad server must also register the functions that
          are available to be called.</p>
      </td>
      <td style="text-align:left">
        <p>If <code>functionCalls: [{name: &apos;nameOfFunction&apos;, args: {dataObj: &apos;data&apos;, dataObj2: &apos;more data&apos;}}]</code> is
          specified in the ad request and <code>adn.inIframe.registerFunction({name: &apos;nameOfFunction&apos;, func: function(args) { // do something here } });</code> is
          specified in the ad, the function defined in <code>func</code> will be called
          with <code>{dataObj: &apos;data&apos;, dataObj2: &apos;more data&apos;}</code> as
          an argument once the ad is loaded.</p>
        <p>If <code>functionCalls</code> is specified and no corresponding function
          to call is found in the ad, the function calls will be ignored.</p>
      </td>
      </tr>
  <tr>
    <td><code>refresh</code></td>
    <td>
      <p>Allows for the same ad request to be made multiple times after the returned ad is visible or viewable and with a delay.</p>
    </td>
    <td>
      <p>Can be set simply as <code>refresh: 3</code>, which defaults to making the same ad request 3 seconds after the ad is viewable and doing so only once.</p>
      <p>For more fine-grained control, can be set as <code>refresh: {delay: 3, count: 5, event: 'onVisible'}</code>, which means the same ad request will be made 3 seconds after the returned ad is visible, and this process will be repeated five times.</p>
      <p><code>delay</code> must be an integer that is 0 or greater; <code>event</code> can only be <code>onVisible</code> otherwise it defaults to <code>onViewable</code>; and <code>count</code> defaults to 1 if it's not an integer greater than 1.</p>
    </td>
  </tr>
  <tr>
    <td><code>replacements</code></td>
    <td>
      <p>Allows for text replacements in your ad to be set in the browser code.</p>
    </td>
    <td>
      <p>Is set as <code>replacements: {adnReplaceName: 'George', adnReplaceAge: '15'}</code>, which will replace any <code>adnReplaceName</code> or <code>adnReplaceAge</code> string inside the ad with the supplied values.</p>
      <p>Can also be set as <code>replacements: {Name: 'George', Age: '15'}</code> and will also replace any <code>adnReplaceName</code> or <code>adnReplaceAge</code> string inside the ad with the supplied values.</p>
    </td>
  </tr>
  </tbody>
</table>## **Multi adn.request Calls**

Multi `adn.request` calls allow for the Adnuntius ad server to be asked for multiple ad units' worth of ads in one request. This makes deduplication much more effective, meaning for instance, that the same line item or creative doesn't appear on the same web page multiple times in different locations.

Here's a typical example of a multi ad request:

```text
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

```text
    adn.request({ requestParams: {proximity: 50, load: 'lazy'}, adUnits: [
        {auId: '0000000000000806', auW: 728, auH: 90, requestParams: {proximity: 100, load: 'lazy'},
        {auId: '0000000000000807', auW: 100, auH: 20, requestParams: {load: 'direct'},
        {auId: '0000000000000808', auW: 40, auH: 40, requestParams: {load: 'lazyRequest'},
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
* **Parameters specified on either parent or ad unit:** `requestParams`, `siteId`, `floorPrice`, `resizeOnPageLoad`, `onImpressionResponse`, `onPageLoad`, `onNoMatchedAds`, `onVisible`, `onViewable`, `clearTarget`, `functionCalls`, `replacements`, `kv`, `c`
* **Parameters specified on the ad unit only:** those not listed above

## **Previewing an Ad**

If you just want to preview a creative in your system, you can do so in either of the following two ways:

 \#\#\#\# Requesting a Preview of a Specific Creative

```text
adn.request({
    networkId: 'myNetworkId',
    creatives: [{
        creativeId: 'myCreativeId',
        targetId: 'targetDivId',
        creativeWidth: 500, creativeHeight: 500
    }],
});
```

 \#\#\#\# Requesting a Preview of Creative Data in a Specific Layout

```text
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

 \#\#\#\# Requesting Ads in JSON format for a Single Ad Unit

```text
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

 \#\#\#\# Requesting Ads in JSON format for Multiple Ad Units

```text
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

```text
    {
        responseJSON: {justAnExampleKey: 'justAnExampleValue'},
        responseCode: 200,
        responseText: '{"justAnExampleKey": "justAnExampleValue"}'
    }
```

For failed ad server responses, the data passed into the listener functions will be in this form:

```text
    {
        errorText: 'Likely error in service',
        responseCode: 501,
        responseText: '{"bad": "allBad"}'
    }
```

