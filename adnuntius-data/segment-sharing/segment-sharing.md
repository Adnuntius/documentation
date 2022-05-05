---
description: Describes how to share segments between folders
---

# Segment Sharing

Adnuntius user segments can be shared between different sites. This means, for example, that an advertiser may build a segment based upon their own third-party data and use that segment to target a user on a publisher's site. Segment sharing is designed to work without third-party cookies, and is only allowed when a user has explicitly consented to share their data.

## Requirements

The following two requirements must be met before a segment can be shared:

### User Consent

User consent to shared data is recorded in a consent string. This consent string may be stored in a cookie and automatically sent with each request, or it may be provided as a parameter in the Adnuntius tag.

### Matched User Identifier

Segments are shared when user records in Adnuntius can be matched to the same person. This matching requires a shared user identifier, such as an email address or phone number, is added to both of the user profiles. A common scenario would be when a user has created an account on two different sites.

## Consent String Format

The consent string has a very simple format: it is the folder tags appended together with a `g` character delimiting each folder.

An example string, recording that a user consents to share data with folder `2fe5a` and `ee765` would be:

```
2fe5agee765
```

Any leading `0`s can be ignored, so a consent string for folder `00000000000023fd4` and `000000000000ab3c7` could be written as either:

```
00000000000023fd4g000000000000ab3c7
```

or

```
23fd4gab3c7
```

The consent string can be stored in a cookie named `adnconsent` and this will automatically be use in all requests via the Adnuntius tag. Otherwise, the consent string can be provided in the Adnuntius tag using the `adnConsent` parameter.


