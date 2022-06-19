---
description: Here you will see details about how we collect and use user data.
---

# Privacy Details

This page is work in progress; while we are working on it you will find all the information here: [https://docs.google.com/spreadsheets/d/1zXJAlqvrKLZGEIESO4iadutV2g0rr\_1bmKg7IKOfL6s/edit#gid=328667903](https://docs.google.com/spreadsheets/d/1zXJAlqvrKLZGEIESO4iadutV2g0rr\_1bmKg7IKOfL6s/edit#gid=328667903)

## Personal Data Stored in Device Cookies

| Name      | Purpose                                                                                                                                                                                                                          | Expiry                    |
| --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------- |
| usi       | Identify the user across multiple sessions                                                                                                                                                                                       | 30 days                   |
| sessionId | Identify the user session across multiple requests                                                                                                                                                                               | Length of browser session |
| i         | Records a history of advertisements shown to the user                                                                                                                                                                            | 30 days                   |
| r         | Records a history of advertisements shown to the user                                                                                                                                                                            | 30 days                   |
| s         | Records a history of advertisements shown to the user                                                                                                                                                                            | 30 days                   |
| v         | Records a history of advertisements shown to the user                                                                                                                                                                            | 30 days                   |
| c         | Records a history of advertisements shown to the user                                                                                                                                                                            | 30 days                   |
| cnv       | Records the most recent time that a specific advertisement was seen by the user. Used to track conversions e.g. if the user subsequently performs an eligible action, such as purchasing a product, on the advertiser's website. | 30 days                   |
| t         | User retargeting. Records data about the user when they are browsing an advertiser's website, and then uses this data to select advertisements when the user is browsing a publisher's website.                                  | 30 days                   |

**Storage:** Cookies are stored on the user's personal device and are transmitted with each request to the Adnuntius platform, where they are read by the Adnuntius software. The cookie data is not stored or accessible anywhere on the Adnuntius servers. The personal information that is stored on Adnuntius servers is outlined in a separate tab in this file.

{% hint style="info" %}
Please note that Adnuntius offers a privacy-safe ad serving alternative commonly referred to as "cookieless ad serving" (more details here: [https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/cookieless-advertising).](https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/cookieless-advertising\).) If you use the cookieless alternative Adnuntius will not set any of these cookies, and also not set a user ID. For more information, please visit the page linked to above.
{% endhint %}

## Viewing History Stored in Databases

| Personal information                                      | Purpose                                                                                                                                                                                                                                                                                                                                                                                  | Expiry                    |
| --------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------- |
| User Identifier and list of advertisements and Timestamps | To allow control of how many times, per unit time, that an advertisement is shown to an individual ("frequency capping"). For example: show an advertisement no more than twice per week to each unique viewer. This data replicates what is also stored in device cookie storage (see Appendix 1), but is also stored on the Adnuntius servers to allow cross-device frequency capping. | 30 days after last update |

**Storage:** Data is stored on servers controlled by Adnuntius and delivered by sub-processor Hetzner.&#x20;

## Location Targeting

| Data                                                                   | Purpose                                                                                                  | Expiry                                                                                                      | Storage                                                                                                                                                           | Involved Sub-Processors                                                                                                                                                                                |
| ---------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Named locations derived from IP addresses                              | Enable Controller and potentially its customers to target by country, region, city and/or post/zip code. | All information is discarded immediately after looking up and matching the information to a named location. | No location data is stored under this Purpose. The IP addresses are checked against named locations stored on our servers. No data is sent to any external party. | Adnuntius uses Digital Envoy, who supplies us with a file mapping IP addresses to named locations. This file is stored on Adnuntius servers (Hetzner) as described under "Sub-Processors" found below. |
| Longitude and latitude (only processed if actively sent by Controller) | Enable Controller and potentially its customers to target by exact location.                             | All information is discarded immediately after any advertisements are matched to the location.              | No location data is stored under this Purpose.                                                                                                                    | None.                                                                                                                                                                                                  |



## Device Targeting

As the user agent string is sent to Adnuntius the following data is stored:

1. Name, supplier and version of browser (example: Mobile Safari)
2. Family, model, supplier and name of hardware (example: iPad Pro 9.7)
3. Name, supplier and version of platform (example: Apple)
4. Type of device (example: Desktop)
5. Operating system (example: Android)

Details about the data:&#x20;

* **Purpose:** Enable Controller and potentially its customers to target advertisements to the collected information.
* **Expiry:** All information is discarded immediately after looking up and matching the collected information to device information stored on our servers.
* **Storage:** No device data from Data Subjects is stored under this Purpose.
* **Involved sub-processors:** Adnuntius uses 51 Degrees, who supplies us with a file mapping the device information we collect to the details of a device. This file is stored on Adnuntius servers as described under the tab "Sub-Processors" found here.

## Segment Targeting



