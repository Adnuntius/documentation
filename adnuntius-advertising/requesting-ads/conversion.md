# Recording Conversions

When you create Adnuntius Line Items that use a Cost Per Action \(CPA\) price model, costs are recorded whenever a user performs a configured action. Adnuntius must be notified of the user action using a Conversion Tag, which can be either a pixel or javascript.

## Usage

You must specify an Adnuntius Custom Event that will be used to track conversions. In the examples below you should replace `<event-id>` with the specific identifier for your chosen custom event.

Conversions can be automatically attributed to a line-item under the following circumstances:

* The creative includes a click URL to the advertiser's domain
* The conversion is recorded from the advertiser's domain

In this scenario, Adnuntius will attribute the conversion to the _most recently_ delivered impression that directed the user to the advertiser's domain. The user does not need to have actually clicked on the advertisement.

Alternatively, the request can _explicitly include the line-item_ that should receive the conversion.

### Pixel Request

Note: Pixels require third-party cookies to function correctly, which may be blocked by the user's privacy settings.

The most simple pixel tag is shown below. This pixel will automatically record the conversion to the most recent impression coming from a CPA line-item for the advertiser.

```markup
<img src="https://delivery.adnuntius.com/pixelc.gif?eventType=<event-id>">
```

For example, if the pixel was included on a page hosted at `https://exampleadvertiser.com`, then the conversion would be recorded against a line-item that included a click URL to `https://exampleadvertiser.com`.

You can also hardcode the advertiser domain into the pixel, as shown in the example below:

```markup
<img src="https://delivery.adnuntius.com/pixelc.gif?eventType=<event-id>&adSource=exampleadvertiser.com">
```

If you want to record the conversion against a specific line-item, then you can hardcode this into the pixel tag like so:

```markup
<img src="https://delivery.adnuntius.com/pixelc.gif?eventType=<event-id>&network=<network-id>&adSource=<line-item-id>">
```

### Javascript request

Note: Javascript conversions work best when third-party cookies are enabled, but they can also work if the advertisement and the conversion both occur on the same page domain.

The most simple javascript conversion is shown below. This will automatically record the conversion to the most recent impression coming from a CPA line-item for the advertiser.

```javascript
window.adn = window.adn || {}; adn.calls = adn.calls || [];
adn.calls.push(function() {
   adn.regConversion({eventType: '<event-id>'});
});
```

For example, if the javascript was included on a page hosted at `https://exampleadvertiser.com`, then the conversion would be recorded against a line-item that included a click URL to `https://exampleadvertiser.com`.

You can also hardcode the advertiser domain into the conversion, as shown in the example below:

```javascript
window.adn = window.adn || {}; adn.calls = adn.calls || [];
adn.calls.push(function() {
   adn.regConversion({eventType: '<event-id>', adSource: 'example.com'});
});
```

If you want to record the conversion against a specific line-item, then you can hardcode this like so:

```javascript
window.adn = window.adn || {}; adn.calls = adn.calls || [];
adn.calls.push(function() {
   adn.regConversion({eventType: '<event-id>', network: '<network-id>', adSource: '<line-item-id>'});
});
```

