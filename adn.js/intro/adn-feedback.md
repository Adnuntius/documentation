# Logging Options

There are two ways to enable logging from adn.js: in your browser's development console and inside your ad unit on screen.

Here are the available options:

## Console Logging

* `all`: show all possible messages, including debugging information
* `warnings`: show all errors and warnings \(the default option\)
* `error`: show all errors
* `silent`: show nothing in the console from adn.js

## In Screen Logging

* `inAdUnit`: show debug information inside your ad units
* `silent`: show no messages inside your ad units \(the default option\)

These logging modes can be triggered two ways: via the URL and via code.

Just add the following to the end of the URL to trigger specific logging methods in the page: `?console=all&inScreen=inAdUnit`

Alternatively, place this code just under your `body` tag or anywhere preceding your ad requests to ensure the settings are set before any important stuff happens:

```text

window.adn = window.adn || {};
adn.calls = adn.calls || [];
adn.calls.push(function() {
    adn.setFeedbackOptions({console: 'silent', inScreen: 'inAdUnit'})
});
```

**Added extra:** you can also trigger showing debug information inside your ad units by adding `?adnDebug123` to the page's URL.

