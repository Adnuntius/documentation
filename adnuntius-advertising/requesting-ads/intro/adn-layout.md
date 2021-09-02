# Layout Support

adn.js provides many functions to support the design of your creative's layout.

The following functions can each be called from within a layout and provide the described functionality.

<table>
  <thead>
    <tr>
      <th style="text-align:left">Method and Basic Description</th>
      <th style="text-align:left">Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.getResponseCtrId()</code>
        </p>
        <p>Returns the ID of the HTML div that wraps the ad content.</p>
      </td>
      <td style="text-align:left">Returns <code>&apos;responseCtr&apos;</code> and is unlikely to change.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.blockResizeToContent()</code>
        </p>
        <p>Blocks the initial width and height of the ad container from resizing
          itself to fit the content of the served ad.</p>
      </td>
      <td style="text-align:left">Resizing can be blocked on the request side. This also provides the same
        functionality on the layout side.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.isResizeToContent()</code>
        </p>
        <p>Whether or not the ad container&apos;s initial width and height will be
          resized to fit the content of the served ad.</p>
      </td>
      <td style="text-align:left">Returns either <code>true</code> or <code>false</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.getIframeId()</code>
        </p>
        <p>Returns the ID of the Iframe that is containing the ad.</p>
      </td>
      <td style="text-align:left">Returns the ID as a string.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.parentSubscribeEvent(args)</code>
        </p>
        <p>Provides the ability to register a callback that is called each time the
          parent window does a particular event.</p>
        <p>Can also subscribe to the <code>impRegistered</code> event, which is specific
          to adn.js, and occurs once the parent window is informed that an impression
          has occurred.</p>
      </td>
      <td style="text-align:left">
        <p>Below is an example of how to subscribe to the events.</p>
        <p><code>
var iframeId = adn.inIframe.getIframeId();
adn.inIframe.parentSubscribeEvent({ifrId: iframeId, event: 'resize', cb: function(args) {} });
adn.inIframe.parentSubscribeEvent({ifrId: iframeId, event: 'impRegistered', cb: function(args) {} });
          </code></p>
        <p>The args object returned as a parameter in the callback includes the width
          and height of the parent window.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.getAdRequestInfo(args)</code></p>
        <p>Gets information to do with the initial ad request, along with a whole
          bunch of other data.</p>
      </td>
      <td style="text-align:left">
        <p>Below is an example of how to request the info</p>
        <p><code>adn.inIframe.getAdRequestInfo({
  onInfoReceived: function(data) {
  }
          });</code></p>        
        <p>The data returned as a parameter to the callback function includes anything
          that was set on the ad request.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.updateAd(args)</code>
        </p>
        <p>Updates the ad and the container as required.</p>
      </td>
      <td style="text-align:left">
        <p>The best way to explain this is with examples.</p>
        <p><code>
var iframeId = adn.inIframe.getIframeId();
adn.inIframe.updateAd({ifrW: 200, ifrH: 300, ifrId: iframeId, ifrStyle: {border: '10px solid black'}, parentStyle: {padding: '20px'}});
</code></p>
        <p>Here, the ad and its container will resize to 200x300 pixels and apply
          the supplied styles to the iframe itself and the target element in the
          parent document.</p>
        <p><code>
var iframeId = adn.inIframe.getIframeId();
var eventElement = document.getElementById("myId");
adn.inIframe.updateAd({ifrId: iframeId, ifrW: '100%', ifrH: 1000, el: eventElement, event: 'mouseover', cb: function() {// do stuff here} });
</code></p>
        <p>Here, whenever the mouse hovers over <code>eventElement</code>, the ad
          will resize itself to be 100% in width and 1000 pixels in height and the
          callback called.</p>
        <p><code>
var iframeId = adn.inIframe.getIframeId();
var closeLink = document.getElementById("closeLink");
adn.inIframe.updateAd({ifrId: iframeId, ifrW: '100%', ifrH: '100%',  parentStyle: {display: 'block'},  ifrStyle: {display: 'block', top: 0, left: 0, backgroundColor: bgColor}, stack: 'absolute', el: window, event: 'load', cb: function() {});
adn.inIframe.updateAd({ifrId: iframeId, ifrW: 0, ifrH: 0, parentStyle: {display: 'none'}, el: closeLink, event: 'click', cb: onClickCallback});
          </code></p>
        <p>Here, when the ad is loaded inside the iframe, the ad&apos;s size will
          be adjusted accordingly, as will styles updated for the iframe&apos;s container
          and the iframe itself. In addition, the iframe will be set to absolute
          positioning via the <code>stack</code> setting. Then, when the `closeLink`
          element is clicked, the ad will disappear. Another possible value for <code>stack</code> is <code>relative</code>,
          which means the iframe will be positioned absolutely relative to the target
          element in the parent document. Setting <code>stack</code> to any other value
          will render everything as statically positioned.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.registerFunction(args)</code>
        </p>
        <p>Registers a function that can be called from the ad request.</p>
      </td>
      <td style="text-align:left">If <code>functionCalls: [{name: &apos;nameOfFunction&apos;, args: {dataObj: &apos;data&apos;, dataObj2: &apos;more data&apos;}}]</code> is
        specified in the ad request and <code>adn.inIframe.registerFunction({name: &apos;nameOfFunction&apos;, func: function(args) { // do something here } });</code> is
        specified in the ad, the function defined in <code>func</code> will be called
        with <code>{dataObj: &apos;data&apos;, dataObj2: &apos;more data&apos;}</code> as
        an argument once the ad is loaded. If <code>functionCalls</code> is specified
        and no corresponding function to call is found in the ad, the function
        calls will be ignored.</td>
    </tr>

  <tr>
    <td style="text-align: left">
      <code>adn.inIframe.callParentFunction(funcName, args)</code>
      Calls a function in the parent page whose name is <code>funcName</code> and passes in the optional data in <code>args</code>.
    </td>
    <td>If <code>functions: [{name: 'nameOfFunction', func: function(adRequestData, dataFromAd) { /* do something */ } }]</code> is specified in the ad request and
      <code>adn.inIframe.callParentFunction('nameOfFunction', {text: 'data to pass to parent'})</code>
      is specified in the ad, the function defined in <code>func</code> will be called with the ad request data as the first argument and  <code>{text: 'data to pass to parent'}</code> as
      the second argument.
    </td>
  </tr>
    
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.sendCustomEvent(args)</code>
        </p>
        <p>Sends custom events to Adnuntius for tracking user interactions or other
          actions not tracked by the standard statistics.</p>
      </td>
      <td style="text-align:left">Including the following code in your Layout <code>adn.inIframe.sendCustomEvent(&apos;{{adId}}&apos;, {events:[{customType: &apos;custom_event_id&apos;}, {customType: &apos;another_custom_event_id&apos;}]});</code> will
        send two custom events to Adnuntius for the specified event ids.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.intersectionCallback(adId, config)</code>
        </p>
        <p>Whenever the ad denoted by the <code>adId</code> is within the viewport
          according to the criteria set within <code>config</code>, the callback function
          at <code>config.callback</code> will be called.</p>
      </td>
      <td style="text-align:left">
        <p>The best way to explain this is via examples. If the following code is
          placed within a layout or creative: <code>adn.inIframe.intersectionCallback(&apos;{{adId}}&apos;, {callback: function(data) { /* this will get called */ } });</code>
        </p>
        <p>The above code will call the callback function whenever 50% of the ad
          defined by <code>adId</code> has been within the viewport.</p>
        <p>The following example demonstrates the variety of options available: <code>adn.inIframe.intersectionCallback(&apos;{{adId}}&apos;, {id: &apos;myId&apos;, maxTime: 2000, threshold: 75, callback: function(data) { /* this will get called */ } });</code>
        </p>
        <p>The above code will call the callback function whenever 75% of the ad
          defined by <code>adId</code> has been within the viewport for more than 2000
          milliseconds.</p>
        <p>If 75% of the ad defined by <code>adId</code> has been within the viewport
          for less than 2000 milliseconds <em>and</em> the user is done with the page
          either by browsing elsewhere or closing the window, the callback function
          will also be called.</p>
        <p>The <code>id</code> in the config is used to distinguish between multiple
          calls to <code>intersectionCallback</code> for the same <code>adId</code>.</p>
        <p>The <code>data</code> that is returned as an argument to the callback function
          includes the following:</p>
        <ul>
          <li><code>adId</code>: same as the <code>adId</code> passed in</li>
          <li><code>id</code>: same as the <code>id</code> passed in otherwise a random
            string</li>
          <li><code>timeIntersect</code>: length of time in milliseconds that the ad
            is in the viewport</li>
          <li><code>criteriaMet</code>: boolean describing whether the intersection
            criteria have been met for the specified length of time</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.recordInScreen(adId, customEventId, config)</code>
        </p>
        <p>Whenever the ad denoted by the <code>adId</code> is within the viewport
          according to the criteria set within <code>config</code>, the custom event
          denoted by <code>customEventId</code> will be triggered with the time the
          ad is within the viewport sent through.</p>
      </td>
      <td style="text-align:left">
        <p>The best way to explain this is via examples. If the following code is
          placed within a layout or creative: <code>adn.inIframe.recordInScreen(&apos;{{adId}}&apos;, &apos;custom-event-id-as-defined-within-adnuntius&apos;);</code>
        </p>
        <p>The above code will register the custom event when 50% of the ad defined
          by <code>adId</code> has been within the viewport for longer than 2000 milliseconds.
          If 50% of the ad defined by <code>adId</code> has been within the viewport
          for less than 2000 milliseconds <em>and</em> the user is done with the page
          either by browsing elsewhere or closing the window, the custom event will
          also be registered with the lesser time specified.</p>
        <p>The following example demonstrates the variety of options available: <code>adn.inIframe.recordInScreen(&apos;{{adId}}&apos;, &apos;custom-event-id-as-defined-within-adnuntius&apos;, {maxTime: 5000, threshold: 75});</code>
        </p>
        <p>The above code will register the custom event whenever 75% of the ad defined
          by <code>adId</code> has been within the viewport for more than 5000 milliseconds.</p>
        <p>If 75% of the ad defined by <code>adId</code> has been within the viewport
          for less than 5000 milliseconds <em>and</em> the user is done with the page
          either by browsing elsewhere or closing the window, the custom event will
          also be registered with the lesser time specified.</p>
      </td>
    </tr>
  </tbody>
</table>

