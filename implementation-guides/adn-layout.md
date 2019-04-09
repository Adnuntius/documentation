# Layout support in adn.js

<p>adn.js provides many functions to support the design of your creative's layout.</p>
<p>The following functions can each be called from within a layout and provide the described functionality.</p>
<table class="table table-condensed table-bordered">
  <thead>
  <tr>
    <th>Method and Basic Description</th>
    <th>Notes</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td><p><code>adn.inIframe.getResponseCtrId()</code></p>
      <p>Returns the ID of the HTML div that wraps the ad content.</p>
    </td>
    <td>
      Returns <code>'responseCtr'</code> and is unlikely to change.
    </td>
  </tr>
  <tr>
    <td><p><code>adn.inIframe.blockResizeToContent()</code></p>
      <p>Blocks the initial width and height of the ad container from resizing itself to fit the content of the served ad.</p></td>
    <td>
      Resizing can be blocked on the request side. This also provides the same functionality on the layout side.
    </td>
  </tr>
  <tr>
    <td><p><code>adn.inIframe.isResizeToContent()</code></p>
      <p>Whether or not the ad container's initial width and height will be resized to fit the content of the served ad.</p></td>
    <td>
      Returns either <code>true</code> or <code>false</code>.
    </td>
  </tr>
  <tr>
    <td><p><code>adn.inIframe.getIframeId()</code></p><p>Returns the ID of the Iframe that is containing the ad.</p></td>
    <td>
      Returns the ID as a string.
    </td>
  </tr>
  <tr>
    <td>
      <p><code>adn.inIframe.parentSubscribeEvent(args)</code></p>
      <p>Provides the ability to register a callback that is called each time the parent window does a particular event.<p><p>Can also subscribe to
        the
        <code>impRegistered</code> event, which is specific to adn.js, and occurs once the parent window is informed that an impression has occurred.
      </p></td>
    <td>
      <p>Below is an example of how to subscribe to the events.</p>
      <pre>var iframeId = adn.inIframe.getIframeId();
adn.inIframe.parentSubscribeEvent({ifrId: iframeId, event: 'resize', cb: function(args) {} });
adn.inIframe.parentSubscribeEvent({ifrId: iframeId, event: 'impRegistered', cb: function(args) {} });</pre>
      The args object returned as a parameter in the callback includes the width and height of the parent window.
    </td>
  </tr>
  <tr>
    <td>
      <p><code>adn.inIframe.getAdRequestInfo(args)</code></p>
      <p>Gets information to do with the initial ad request, along with a whole bunch of other data.</p></td>
    <td>
      <p>Below is an example of how to request the info</p>
      <pre>adn.inIframe.getAdRequestInfo({
  onInfoReceived: function(data) {
  }
});</pre>
      The data returned as a parameter to the callback function includes anything that was set on the ad request.
    </td>
  </tr>
  <tr>
    <td>
      <p><code>adn.inIframe.updateAd(args)</code></p>
      <p>Updates the ad and the container as required.</p></td>
    <td>
      The best way to explain this is with examples.
      <pre>var iframeId = adn.inIframe.getIframeId();
adn.inIframe.updateAd({ifrW: 200, ifrH: 300, ifrId: iframeId,
  ifrStyle: {border: '10px solid black'}, parentStyle: {padding: '20px'}});</pre>
      Here, the ad and its container will resize to 200x300 pixels and apply the supplied styles to the iframe itself and the target element in the parent document.
      <hr>
      <pre>var iframeId = adn.inIframe.getIframeId();
var eventElement = document.getElementById("myId");
adn.inIframe.updateAd({ifrId: iframeId, ifrW: '100%', ifrH: 1000,
  el: eventElement, event: 'mouseover', cb: function() {// do stuff here} });</pre>
      Here, whenever the mouse hovers over
      <code>eventElement</code>, the ad will resize itself to be 100% in width and 1000 pixels in height and the callback called.
      <hr>
      <pre>var iframeId = adn.inIframe.getIframeId();
var closeLink = document.getElementById("closeLink");
adn.inIframe.updateAd({ifrId: iframeId, ifrW: '100%', ifrH: '100%',
  parentStyle: {display: 'block'},
  ifrStyle: {display: 'block', top: 0, left: 0, backgroundColor: bgColor}, stack: 'absolute',
  el: window, event: 'load', cb: function() {});
adn.inIframe.updateAd({ifrId: iframeId, ifrW: 0, ifrH: 0,
  parentStyle: {display: 'none'}, el: closeLink, event: 'click', cb: onClickCallback});</pre>
      Here, when the ad is loaded inside the iframe, the ad's size will be adjusted accordingly, as will styles updated for the iframe's container and the iframe itself.
      In addition, the iframe will be set to absolute positioning via the <code>stack</code> setting. Then,
      when the `closeLink` element is clicked, the ad will disappear. Another possible value for <code>stack</code> is
      <code>relative</code>, which means
      the iframe will be positioned absolutely relative to the target element in the parent document. Setting
      <code>stack</code> to any other value will render everything
      as statically positioned.
    </td>
  </tr>
  <tr>
    <td>
      <p><code>adn.inIframe.registerFunction(args)</code></p>
      <p>Registers a function that can be called from the ad request.</p></td>
    <td>
      <p>If <code>functionCalls: [{name: 'nameOfFunction', args: {dataObj: 'data', dataObj2: 'more data'}}]</code> is specified in the ad request and
        <code>adn.inIframe.registerFunction({name: 'nameOfFunction', func: function(args) { // do something here } });</code>
        is specified in the ad, the function defined in <code>func</code> will be called with
        <code>{dataObj: 'data', dataObj2: 'more data'}</code> as an argument once the ad is loaded.</p>
      If <code>functionCalls</code> is specified and no corresponding function to call is found in the ad, the function calls will be ignored.
    </td>
  </tr>
  </tbody>
</table>
