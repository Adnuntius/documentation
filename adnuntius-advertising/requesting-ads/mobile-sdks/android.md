---
description: Serving Adnuntius ads in an Android application
---

# Android SDK

The Android SDK is written in Java and renders ads in an `AdnuntiusAdWebView`, a web view that runs the Adnuntius JavaScript tag. Source, issues and the full integration guide are on GitHub: [android\_sdk](https://github.com/Adnuntius/android_sdk) and its [wiki](https://github.com/Adnuntius/android_sdk/wiki).

## Adding the SDK

The SDK is published to Maven Central. Add it to your module's dependencies:

```groovy
dependencies {
    implementation 'com.adnuntius.android:sdk:1.7.3'
}
```

Snapshot builds are published to `https://oss.sonatype.org/content/repositories/snapshots/`; add that repository only if you deliberately want one.

The SDK requires Android 6.0 (API 23) or later.

## Requesting an ad

Put an `AdnuntiusAdWebView` in your layout and load an ad unit into it:

```java
AdRequest request = new AdRequest("000000000006f450")
        .noCookies()
        .addKeyValue("version", "4.3");

adView.loadAd(request, false, new LoadAdHandler() {
    // onAdResponse, onNoAdResponse, onFailure, onLayoutCloseView
});
```

`AdRequest` carries the same parameters as a web ad request, including key values, width and height, user and session ids, a consent string and live preview. See [Requesting an Ad](../intro/adn-request.md) for what those parameters mean.

## Visible and viewable events

The SDK generates visible and viewable events itself, using the native geometry of the web view. By default they are delayed until the ad is on screen. In a `RecyclerView` or any other scrolling container, call `updateView` as the view scrolls so that the events fire at the right moment. The wiki page _Visible and Viewable Event Handling_ has the details, and _Ads Rendering Offscreen_ covers views built before they are shown.