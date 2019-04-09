# Enabling adn.js logging

<p>There are two ways to enable logging from adn.js: in your browser's development console and inside your ad unit on screen.</p>
<p>Here are the available options:</p>
<div class="row">
  <div class="col-md-6">
    <h4>Console Logging</h4>
    <ul>
      <li><code>all</code>: show all possible messages, including debugging information</li>
      <li><code>warnings</code>: show all errors and warnings (the default option)</li>
      <li><code>error</code>: show all errors</li>
      <li><code>silent</code>: show nothing in the console from adn.js</li>
    </ul>
  </div>
  <div class="col-md-6">
    <h4>In Screen Logging</h4>
    <ul>
      <li><code>inAdUnit</code>: show debug information inside your ad units</li>
      <li><code>silent</code>: show no messages inside your ad units (the default option)</li>
    </ul>
  </div>
</div>
<p>These logging modes can be triggered two ways: via the URL and via code.</p>
<p>Just add the following to the end of the URL to trigger specific logging methods in the page: <code>?console=all&inScreen=inAdUnit</code></p>
<p>Alternatively, place this code just under your <code>body</code> tag or anywhere preceding your ad requests to ensure the settings are set before any important stuff happens:</p>
<pre>
window.adn = window.adn || {};
adn.calls = adn.calls || [];
adn.calls.push(function() {
    adn.setFeedbackOptions({console: 'silent', inScreen: 'inAdUnit'})
});
</pre>
<p><strong>Added extra:</strong> you can also trigger showing debug information inside your ad units by adding <code>?adnDebug123</code> to the page's URL.</p>
