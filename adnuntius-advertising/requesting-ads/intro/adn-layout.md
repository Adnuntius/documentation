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
        <p>The args object returned as a parameter in the callback includes the width
          and height of the parent window.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.inIframe.getAdRequestInfo(args)</code>
        </p>
        <p>Gets information to do with the initial ad request, along with a whole
          bunch of other data.</p>
      </td>
      <td style="text-align:left">
        <p>Below is an example of how to request the info</p>
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
        <p>Here, the ad and its container will resize to 200x300 pixels and apply
          the supplied styles to the iframe itself and the target element in the
          parent document.</p>
        <p>Here, whenever the mouse hovers over <code>eventElement</code>, the ad
          will resize itself to be 100% in width and 1000 pixels in height and the
          callback called.</p>
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
  </tbody>
</table>