---
description: Serving Adnuntius ads in an iOS application
---

# iOS SDK

The iOS SDK is written in Swift and renders ads in an `AdnuntiusAdWebView`, a `WKWebView` subclass that runs the Adnuntius JavaScript tag. Source, issues and the full integration guide are on GitHub: [ios\_sdk](https://github.com/Adnuntius/ios_sdk) and its [wiki](https://github.com/Adnuntius/ios_sdk/wiki).

## Adding the SDK

Add the package in Xcode with Swift Package Manager, using `https://github.com/Adnuntius/ios_sdk` as the repository and `AdnuntiusSDK` as the library product. Pin the version you want rather than tracking the branch.

The package declares support for iOS 9 and later.

## Requesting an ad

Place an `AdnuntiusAdWebView` in your view, then load an ad unit into it:

```swift
let adRequest = AdRequest("000000000006f450")
adView.loadAd(adRequest, self)
```

`AdRequest` carries the same parameters as a web ad request, including key values, width and height, category, cookie usage, user and session ids, a consent string and live preview. See [Requesting an Ad](../intro/adn-request.md) for what those parameters mean.

## Visible and viewable events

The SDK generates visible and viewable events itself, using the native geometry of the web view. By default they are delayed until the ad is on screen. In a `UIScrollView` or `UITableView`, call `updateView` as the view scrolls so that the events fire at the right moment. The wiki page _Visible and Viewable Event Handling_ has the details, and _Ads Rendering Offscreen_ covers views built before they are shown.

## Versions

Current release 1.10.3 (September 2022). Version numbers are `major.minor.patch`, releases happen as needed, and breaking changes are described in the GitHub release notes. Pin an exact version.

Working examples live in [ios\_sdk\_examples](https://github.com/Adnuntius/ios_sdk_examples).
