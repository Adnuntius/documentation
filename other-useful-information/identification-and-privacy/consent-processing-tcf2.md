---
description: >-
  This page describes how Adnuntius uses the IAB Europe Transparency & Consent Framework version 2.0 (TCF2) to check for
  permission to use personal data
---

# TCF2 Processing

## **1 How Adnuntius Determines if GDPR Applies**

**1.1 The “gdpr” ad tag parameter.**

The Adnuntius ad tag can include a [GDPR parameter](../../adnuntius-advertising/requesting-ads/intro/adn-request.md#gdpr), which can be set to one of the following:

* `gdpr: 1`, which means that GDPR does apply
* `gdpr: 0`, which means that GDPR does NOT apply

If this flag is present, then it takes precedence over all other checks described in this document.

**1.2 The network setting.**

Each network has a flag to indicate if user consent is required to use personal data. Network Administrators can enable or disable this flag on the [Network Settings](https://admin.adnuntius.com/admin/network) page in the admin user interface (please see “Consent to Use Personal Data”).

If the network does NOT require consent, then no further checks are necessary.

**1.3 The geolocation.**

Adnuntius uses each ad request’s IP address to detect the originating country. If the request comes from one of the member countries of the European Economic Area, then GDPR applies.

## 2 What Happens when GDPR is Applied

If GDPR applies, then Adnuntius attempts to read a TCF2 string from the “euconsent-v2” cookie on the user’s device.

**2.1 If there is no TCF2 string.**

Without a TCF2 string the user has not provided any explicit consent but has also not opted out of any data processing performed under a legitimate concern basis. This can occur for example when a publisher has no consent tool installed on their pages.

In this scenario, Adnuntius relies upon legitimate interest for the purposes of:

* Selecting basic ads (purpose 2)
* Measuring ad performance (purpose 7)

Note: without a TCF2 string, Adnuntius cannot obtain consent to store and/or access information on a device (purpose 1).

**2.2 If there is a TCF2 string.**

Adnuntius will read the string to determine the purposes that user has consented to have their data used for.

Adnuntius will also check if the user has opted out of selecting basic ads (purpose 2) or measuring ad performance (purpose 7).

If the user has provided consent for a purpose, or if they have not opted out of a legitimate interest purpose, then Adnuntius has permission to use personal data for that purpose.

For example, if the user has not consented to, but has also not opted out of purpose 2 and/or purpose 7, then Adnuntius will allow the use of personal data for those purposes.

## 3 The Adnuntius Features that Require Permission to Use Personal Data

**3.1 Unique User Counting.**

This feature requires permission to measure ad performance (purpose 7).

Without consent from the user, or if a legitimate interest is not established, each request from the user will be counted in the statistics as if it were from a new person.

This feature will also be impacted if there is no consent to store and access information on the user’s device (purpose 1). When this consent is provided Adnuntius can store a cookie on the user’s device to hold a unique user identifier, or can read information from the device to create a unique fingerprint. If Adnuntius cannot create and store a user identifier, then unique user counting will only work when such an identifier is provided explicitly with the ad tag.

**3.2 Frequency capping.**

This feature requires permission to select basic ads (purpose 2) in order to control the frequency of ads shown to a user.

Without consent from the user, or if a legitimate interest is not established, frequency capping will not apply to the user’s requests.

This feature will also be impacted if there is no consent to store and access information on the user’s device (purpose 1). When this consent is provided Adnuntius can store capping information in a cookie on the user’s device, which provides more responsive capping than storing this information on the server. Furthermore, server-side user capping requires a consistent user identifier to be provided for each of the user’s requests, which may not be possible without the ability to read and write the identifier to the user’s device. Device Targeting

**3.3 Device targeting.**

This feature requires permission to select basic ads (purpose 2).

Without consent from the user, or if a legitimate interest is not established, device targeted advertisements will not match against the user’s requests.

**3.4 Location Targeting.**

This feature requires permission to select basic ads (purpose 2).

Without consent from the user, or if a legitimate interest is not established, location targeted advertisements will not match against the user’s requests.

**3.5 IP Address Targeting.**

This feature requires permission to select basic ads (purpose 2).

Without consent from the user, or if a legitimate interest is not established, IP address targeted advertisements will not match against the user’s requests.

**3.6 Contextual (Keyword, Category) Targeting.**

This feature requires permission to select basic ads (purpose 2).

Without this consent from the user, or if a legitimate interest is not established, contextually targeted advertisements will not match against the user’s requests.

**3.7 Segment Targeting.**

This feature requires permission to select personalised ads (purpose 4).

Without consent from the user, segment targeted advertisements will not match against the user’s requests.

**3.8 Viewability.**

This feature requires permission to measure ad performance (purpose 7).

Without consent from the user, or if a legitimate interest is not established, ad viewability and visibility statistics from the user will not be counted.

Note: requests without this permission will be recorded in stats as “immeasurable”. This means that viewability and visibility percentages can still be estimated, as they will be based only upon ad requests from users that have provided the required consent.

**3.9 Conversions and Custom Events.**

This feature requires permission to measure ad performance (purpose 7).

Without consent from the user, or if a legitimate interest is not established, Adnuntius is not able to measure how ads were delivered to and interacted with by the user.

**3.10 User Fingerprinting.**

This feature requires consent to store and access information on the user’s device (purpose 1). When this consent is provided Adnuntius can read information from the device, such as the IP address and user agent string, to create a unique fingerprint.

**3.11 Retargeting.**

This feature requires consent to store and access information on the user’s device (purpose 1) and to select personalised ads (purpose 4). When this consent is provided Adnuntius can store information in a cookie on a user’s device, and then use that information to select an advertisement.

**3.12 Counting Ad Views and Clicks in a User’s Profile.**

This feature requires consent to create a personalised ads profile (purpose 3).

Without this consent from the user, click and impression data cannot be used within Adnuntius Data to build a profile of the user’s behaviour.

## 4 What is Possible without ANY Permission to Use Personal Data?

Adnuntius can still provide very basic ad serving and measurement. The following targeting is allowed:

* Ad Unit
* Ad Unit Matching Label
* Site
* Site Group
* Day Part
* Date
* Ad Unit
* Viewability
* Domain Name
* Key Value

The following ad measurement is allowed:

* Impressions
* Rendered Impressions
* Clicks
