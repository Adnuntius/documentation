---
description: >-
  Adnuntius supports multiple methods of identifying users, both with and
  without 3rd party cookies. Here you will find an overview that explains how.
---

# User Identification

User identification is an important part of advertising, and conscious usage of methods is important not least because of privacy legislation and concerns, but also to provide a better service to ad buyers. Adnuntius delivers a comprehensive set of ID methods to ensure that users can be identified with and without cookies, combined with controls that ensures that you respect user privacy in accordance with legislation.&#x20;

This page describes the methods that can be used to either avoid user identification altogether (applies with cookieless ad serving), or to identify them with various data.

{% hint style="info" %}
The list below only lists the consent required to create the user identifier. Further consent may be required to use that data, e.g. to select personalised advertisements.
{% endhint %}

## **1 External User Identifier**

**What it is:** An external user identifier can be supplied with the ad request. This will always take precedence over any other user identification method.

**Required consent (TCF2):** None; as a customer you will be able to choose whether or not to send such an external identifier.

**How to enable/disable it:** The publisher controls this by explicitly including the user identifier in the ad tags on their page.

**Used for:** Frequency capping, user segment lookup, and unique user counts.

**More information:** [https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/intro/adn-request#userid ](https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/intro/adn-request#userid)

## 2 Third Party Cookies

**What it is:** Third-party cookies are used to tag and identify users across different publisher domains. Note: third party cookies can be blocked by browser privacy settings, and this is increasingly the default setting in many popular browsers such as Firefox and Safari.

**Required consent (TCF2):** Purpose 1.

**How to enable/disable it:** Enabled by default. Can be disabled using the Adnuntius cookieless settings: _adn.useCookies(false)_

**Used for:** Frequency capping, re-targeting, conversion tracking and unique user counts.&#x20;

**More information:** [https://docs.adnuntius.com/other-useful-information/privacy-details#personal-data-stored-in-device-cookies ](https://docs.adnuntius.com/other-useful-information/privacy-details#personal-data-stored-in-device-cookies)

## 3 Web Storage

**What it is:** Web storage is used to tag and identify users on the same publisher domain.

**Required consent (TCF2):** Purpose 1.

**How to enable/disable it:** Enabled by default. Can be disabled using the Adnuntius cookieless setting: _adn.useLocalStorage(false);_

**Used for:** Frequency capping, re-targeting, conversion tracking and unique user counts.

**More information:** [https://docs.adnuntius.com/other-useful-information/privacy-details#personal-data-stored-in-device-cookies ](https://docs.adnuntius.com/other-useful-information/privacy-details#personal-data-stored-in-device-cookies)

## 4 Fingerprinting

**What it is:** A user “fingerprint” can be generated using identifying information that the browser automatically includes with every ad request, such as the IP address and user agent string. This fingerprint is very effective at distinguishing between requests coming from different locations and devices, but can also provide reasonable accuracy for matching requests from the same user.

**Required consent (TCF2):** Feature 3 (Purpose 1).

**How to enable/disable it:** Disabled by default. Can be enabled via a setting in Adnuntius consent.

**Used for:** Frequency capping and unique user counts.

**More information:** Work in progress, coming soon.

## 5 CRM Matching (Segment Sharing)

Adnuntius also offers CRM matching through Adnuntius Data, though it is not part of ad serving. If a publisher and an advertiser are sharing data, then they will each use a different user id when communicating with the ad server. The matching is done when looking up segments, and relies upon Adnuntius having a user id generated via one of the methods above.

Read more: [https://docs.adnuntius.com/adnuntius-data/segment-sharing](https://docs.adnuntius.com/adnuntius-data/segment-sharing)
