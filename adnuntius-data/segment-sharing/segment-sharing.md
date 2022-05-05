---
description: Describes how to share segments between folders
---

# Segment Sharing

Adnuntius user segments can be shared between different sites. This means, for example, that an advertiser may build a segment based upon their own third-party data and use that segment to target a user on a publisher's site. Segment sharing is designed to work without third-party cookies, and is only allowed when a user has explicitly consented to share their data.

## Requirements

The following two requirements must be met before a segment can be shared.

### User Consent

User consent to shared data is recorded in a consent string. This consent string may be stored in a cookie and automatically sent with each request, or it may be provided as a parameter in the Adnuntius tag.

### Matched User Identifier

Segments are shared when user records in Adnuntius can be matched to the same person. This matching requires a shared user identifier, such as an email address or phone number, is added to both of the user profiles. A common scenario would be when a user has created an account on two different sites.


