---
description: Serving Adnuntius ads inside native iOS and Android applications
---

# Mobile SDKs

Adnuntius publishes an official SDK for each mobile platform:

* [Android SDK](android.md) — Java, distributed through Maven Central
* [iOS SDK](ios.md) — Swift, distributed through Swift Package Manager

Both SDKs place a web view in your app's view hierarchy and render the ad with the [Adnuntius JavaScript tag](../intro/) and a [layout](../../admin-ui/design/layouts.md). Everything the JavaScript tag can render therefore works in an app, and an ad is built, targeted and reported on in exactly the same way for apps as for the web.

## What the SDKs do

* Request and render display ads, including HTML5 and rich-media layouts.
* Play video inside a banner, using a video layout.
* Report visible and viewable events, with native view geometry passed to the tag. Events are delayed until the ad is actually on screen, and `updateView` keeps the geometry correct in scrolling lists.
* Send [Adnuntius Data](../../../adnuntius-data/overview.md) profile and page data (Android only).
* Preview live ads and log the underlying JavaScript events while you develop.

## What the SDKs do not do

* No native ad rendering. Ads render in a web view, not in native views.
* No native video player and no VAST parsing. To play video in your own player, request [VAST](../vast-2.0.md) over HTTP and hand it to ExoPlayer, AVPlayer or the Google IMA SDK.
* No interstitial, rewarded or native ad formats.
* No Open Measurement (OM SDK) integration, so in-app impressions are not measured by an OM SDK compatible verification vendor. Viewability is measured by the Adnuntius tag itself.
* No mediation adapters for other ad SDKs.

## Versions and support

Version numbers are `major.minor.patch`. New versions are released as needed to fix bugs or to add functionality customers ask for; there is no fixed release train. Breaking changes are described in the release notes on GitHub, so pin an exact version and upgrade deliberately.

| | Android | iOS |
| --- | --- | --- |
| Latest release | 1.7.3 (April 2025) | 1.10.3 (September 2022) |
| Minimum OS | Android 6.0 (API 23) | iOS 9 |
| Source and issues | [android\_sdk](https://github.com/Adnuntius/android_sdk) | [ios\_sdk](https://github.com/Adnuntius/ios_sdk) |
| Integration guide | [Wiki](https://github.com/Adnuntius/android_sdk/wiki) | [Wiki](https://github.com/Adnuntius/ios_sdk/wiki) |
| Examples | [android\_sdk\_examples](https://github.com/Adnuntius/android_sdk_examples) | [ios\_sdk\_examples](https://github.com/Adnuntius/ios_sdk_examples) |

Report bugs as GitHub issues on the relevant repository, or through your usual Adnuntius contact.
