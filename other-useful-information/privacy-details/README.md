---
description: Here you will see details about how we collect and use user data.
---

# Privacy Details

This page is work in progress; while we are working on it you will find all the information here: [https://docs.google.com/spreadsheets/d/1zXJAlqvrKLZGEIESO4iadutV2g0rr\_1bmKg7IKOfL6s/edit?usp=sharing](https://docs.google.com/spreadsheets/d/1zXJAlqvrKLZGEIESO4iadutV2g0rr\_1bmKg7IKOfL6s/edit?usp=sharing)

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
Please note that Adnuntius offers a privacy-safe ad serving alternative commonly referred to as "cookieless ad serving" (more details here: [https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/cookieless-advertising](https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/cookieless-advertising) If you use the cookieless alternative Adnuntius will not set any of these cookies, and also not set a user ID. For more information, please visit the page linked to above.
{% endhint %}

## Viewing History Stored in Databases

**Personal information:** User Identifier and list of advertisements and Timestamps

**Purpose:** To allow control of how many times, per unit time, that an advertisement is shown to an individual ("frequency capping"). For example: show an advertisement no more than twice per week to each unique viewer. This data replicates what is also stored in device cookie storage, but is also stored on the Adnuntius servers to allow cross-device frequency capping.

**Expiry:** 30 days after last update.

**Storage:** Data is stored on servers controlled by Adnuntius and delivered by sub-processor Hetzner.&#x20;

## Location Targeting

**Data: Named locations derived from IP addresses**

* Purpose: Enable Controller and potentially its customers to target by country, region, city and/or post/zip code.
* Expiry: All information is discarded immediately after looking up and matching the information to a named location.
* Storage: No location data is stored under this Purpose. The IP addresses are checked against named locations stored on our servers. No data is sent to any external party.
* Involved sub-processors: Adnuntius uses Digital Envoy, who supplies us with a file mapping IP addresses to named locations. This file is stored on Adnuntius servers (Hetzner) as described under "Sub-Processors" found below.

**Data: Longitude and latitude (only processed if actively sent by Controller)**

* Purpose: Enable Controller and potentially its customers to target by exact location.
* Expiry: All information is discarded immediately after any advertisements are matched to the location.
* Storage: No location data is stored under this Purpose.
* Involved sub-processors: None.

## Device Targeting

**Data:** As the user agent string is sent to Adnuntius the following data is stored:

* Name, supplier and version of browser (example: Mobile Safari)
* Family, model, supplier and name of hardware (example: iPad Pro 9.7)
* Name, supplier and version of platform (example: Apple)
* Type of device (example: Desktop)
* Operating system (example: Android)

**Purpose:** Enable Controller and potentially its customers to target advertisements to the collected information.

**Expiry:** All information is discarded immediately after looking up and matching the collected information to device information stored on our servers.

**Storage:** No device data from Data Subjects is stored under this Purpose.

**Involved sub-processors:** Adnuntius uses 51 Degrees, who supplies us with a file mapping the device information we collect to the details of a device. This file is stored on Adnuntius servers as described under the tab "Sub-Processors" found here.

## Segment Targeting

**Data: User identifier and list of pages viewed.**

* **Details:** page domain-name (NOT the full URL); content categories of the page; content keywords of the page; device type used to view the page; user location (country and region) when viewing the page.
* **How data is sent** - javascript API: [https://docs.adnuntius.com/adnuntius-data/api-documentation/javascript/page-views](https://docs.adnuntius.com/adnuntius-data/api-documentation/javascript/page-views). HTTP API: [https://docs.adnuntius.com/adnuntius-data/api-documentation/http/http-page-view](https://docs.adnuntius.com/adnuntius-data/api-documentation/http/http-page-view).
* **Purpose:** Enable Controller to build segments (Data Subjects grouped by their common behavior and/or characteristics) based on their consumption of pages on Controller's Properties.
* **Expiry:** 30 days.
* **Storage:** Data is stored on servers controlled by Adnuntius and its sub-processors.
* **Involved sub-processors:** Adnuntius uses providers of data centers to store data. Please see "Sub-Processors" below for more information.

**Data: Profile fields**

* **Details:** firstName, lastName, title, dateOfBirth, age, gender, status, language, description, company, website, rank, level, type, emailPrivate, emailWork, phone, mobilePhone, addressLine1, addressLine2, state, city, areaCode, zipCode, postCode, region, country, educationName, educationType, educationDegree, educationSchool, educationField, educationStartYear, educationEndYear, skills, facebook, instagram, snapchat, twitter, avatar, transactions, lastLogin, logins, products, favouriteTopics, personalInterests.
* **How data is sent** - javascript API: [https://docs.adnuntius.com/adnuntius-data/api-documentation/javascript/profile-updates](https://docs.adnuntius.com/adnuntius-data/api-documentation/javascript/profile-updates). HTTP AIP: [https://docs.adnuntius.com/adnuntius-data/api-documentation/http/http-profile](https://docs.adnuntius.com/adnuntius-data/api-documentation/http/http-profile).
* **Purpose:** Enable Controller to build segments (Data Subjects grouped by their common behavior and/or characteristics) based on their characteristics.
* **Expiry:** 180 days.
* **Storage:** Data is stored on servers controlled by Adnuntius and its sub-processors.
* **Involved sub-processors:** Adnuntius uses providers of data centers to store data. Please see "Sub-Processors" below for more information.

**Data: Segments pre-built by Controller before sent to Adnuntius**

* **Details:** User identifiers, segment identifiers and segment names and descriptions, as they are all defined by Controller.
* **How data is sent:** [https://docs.adnuntius.com/adnuntius-advertising/admin-api/endpoints/segmentsupload](https://docs.adnuntius.com/adnuntius-advertising/admin-api/endpoints/segmentsupload), [https://docs.adnuntius.com/adnuntius-advertising/admin-api/endpoints/segmentsusersupload](https://docs.adnuntius.com/adnuntius-advertising/admin-api/endpoints/segmentsusersupload)
* **Purpose:** Enable Controller to activate segments built using other data platforms.
* **Expiry:** 30 days after last update.
* **Storage:** Data is stored on servers controlled by Adnuntius and its sub-processors.
* **Involved sub-processors:** Adnuntius uses providers of data centers to store data. Please see "Sub-Processors" below for more information.

## CRM Matching

The following description is an example to support better understanding of how CRM matching is performed by Adnuntius. The example uses the scenario where a publisher ("Publisher") and an advertiser ("Sporting Goods Store") wish to engage in CRM matching (in this example using email addresses to match IDs) so that Sporting Goods Store can target ads for slalom boots to Data Subjects who have previously purchased slalom skis from Sporting Goods Store.

| Step                                                                                                                                                                                                                                                                                                | Details                                                                                                                                                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1: Publisher sends email addresses and any other data as wanted to Adnuntius in accordance with tab 3.4 in this document, along with Publisher's Folder ID (always required in order for the data to be safely stored in a cleanroom available to Publisher alone).                                 | A Folder ID is an identifier unique to Publisher and only available to them. More information: [https://docs.adnuntius.com/adnuntius-data/user-interface-guide/segmentation/folders](https://docs.adnuntius.com/adnuntius-data/user-interface-guide/segmentation/folders) |
| 2: Sporting Goods Store sends email addresses and the relevant purchase information in accordance with section 3.4 in this document, along with Sporting Goods Store's Folder ID (always required in order for the data to be safely stored in a cleanroom available to Sporting Good Store alone). |                                                                                                                                                                                                                                                                           |
| 3: Sporting Goods Store sends its Folder ID to Publisher in an email or similar. The Folder ID can be found here: [https://admin.adnuntius.com/folders](https://admin.adnuntius.com/folders)                                                                                                        | The common user identifier is used to identify a Data Subject across domains, and the Folder ID is to confirm that such cross-domain identification is authorized by Controller.                                                                                          |
| 4: Publisher implements the Folder ID in its consent tool (CMP) to ensure that only users who consent will be matched.                                                                                                                                                                              | When a request for an ad is sent from Publisher then Sporting Goods Store's segment identifier (a unique identifier for the segment created) is sent with the ad request, so that ads can match the request.                                                              |
| 5: When steps 1-4 are set up and an ad request is sent from Publisher's pages to Adnuntius, any Segment ID that the user belongs to will be sent along with the ad request so that Sporting Goods Store's ads can be targeted. No user data is shared between the parties.                          |                                                                                                                                                                                                                                                                           |

**Expiry:** The connection between Publisher and Sporting Goods Store remains in place until Sporting Goods Store removes the Folder ID from the data sent to Adnuntius.

## Reporting

### **Standard reporting**

**Data:** Please see [https://docs.adnuntius.com/adnuntius-advertising/admin-ui/reports/the-statistics-defined](https://docs.adnuntius.com/adnuntius-advertising/admin-ui/reports/the-statistics-defined) for information about which metrics are stored.

**Purpose:** Enable Controller and potentially its customers to obtain insights about campaigns' performance.

**Expiry:** No expiry.

**Storage:** Data is stored on servers controlled by Adnuntius and its sub-processors.

**Involved sub-processors:** Adnuntius uses providers of data centers to store data. Please see the tab "Sub-Processors" here for more information.

### Raw data

Adnuntius offers its customers to transfer raw data to its own databases. If customers choose to do so, then Adnuntius will hold on to user data for 24 hours before it is permanently deleted from our servers. Customers will in that time period have the opportunity to access the database and transfer the data to their own servers.

* User agent strings as explained below are Recorded if Network Config is set to "No Consent Required". They are not recorded if Network Config is set to "Consent Required".
* Latitude and longitude are recorded only if consent is provided.&#x20;
* Other data is always recorded.&#x20;

**Storage:** All data is stored in Hetzner's data centers (see "Sub-Processors" for more information) in Germany and Finland. Snapshots of Adnuntius data are periodically saved to Amazon Simple Storage Service (AWS S3)'s Frankfurt data center. All data is encrypted with AES prior to leaving the Germany and Finland data centers, is transmitted via a secured channel, and is stored in its encrypted form in a private S3 bucket.

| Data stored and made available                                                             | Example values                                                                                                               |
| ------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| Time Of The Event                                                                          | 2019-07-08T22:18:51.766Z                                                                                                     |
| Referrer Url                                                                               | https://www.adnuntius.com                                                                                                    |
| User Agent String                                                                          | Mozilla/5.0 (Linux; Android 6.0.1; SM-N910C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.89 Mobile Safari/537.36 |
| Behavioral Segment From Any Data Fed To Adnuntius From Third Party Data Sources            | Interested in reading about cars                                                                                             |
| Key Values (Custom Data Points Sent To Adnuntius By Our Customer With A Request For An Ad) | cars, business, finance                                                                                                      |
| Site                                                                                       | [adnuntius.com](http://adnuntius.com/)                                                                                       |
| Keywords (Words From Article Texts That Users Are Reading)                                 | audi, sedan, luxury car                                                                                                      |
| Pageclass (Frontpage Or Article)                                                           | article                                                                                                                      |
| Language Of The Site                                                                       | en                                                                                                                           |
| Ad Units                                                                                   | 52e2e0ca-f63e-4147-ad10-078fb30407e3, "Adnuntius example ad unit"                                                            |
| Line Items (Campaigns)                                                                     | p1xcxcf5p0366tdb, "Adnuntius example campaign"                                                                               |
| Creatives                                                                                  | 53cf9jggyn7fh513, "Adnuntius example creative 1000x300"                                                                      |
| Advertisers                                                                                | tdshgfv5h6q827hx, "Coco Cola"                                                                                                |
| Iab Category                                                                               | food and drink                                                                                                               |
| Currency And Cost Of Impression                                                            | "USD", 0.05                                                                                                                  |
| Device: Hardware Vendor                                                                    | Samsung                                                                                                                      |
| Device: Hardware Name                                                                      | Galaxy Note 4                                                                                                                |
| Device: Platform Vendor                                                                    | Google                                                                                                                       |
| Device: Hardware Model                                                                     | SM-N910C                                                                                                                     |
| Device: Browser Version                                                                    | NA                                                                                                                           |
| Device: Hardware Family                                                                    | Galaxy Note 4                                                                                                                |
| Device: Platform Version                                                                   | 6.0.1                                                                                                                        |
| Device: Browser Name                                                                       | Chrome Mobile                                                                                                                |
| Device: Platform Name                                                                      | Android                                                                                                                      |
| Device: Browser Vendor                                                                     | Google                                                                                                                       |
| User location: Postcode                                                                    | 78539                                                                                                                        |
| User location: Country                                                                     | United States                                                                                                                |
| User location: Continent                                                                   | North America                                                                                                                |
| User location: Region                                                                      | Texas                                                                                                                        |
| User location: City                                                                        | Edinburg                                                                                                                     |
| User location: Latitude                                                                    | 26,30417                                                                                                                     |
| User location: Longitude                                                                   | −98,1639                                                                                                                     |

## Login

**Expiry:** No expiry.

**Storage:** Data is stored on servers controlled by Adnuntius and its sub-processors.

**Involved sub-processors:** Adnuntius uses providers of data centers to store data. Please see "Sub-Processors" below for more information.

| Data                                                  | Purpose                                                                                                                                                                                                                                                                                                                                                                                                         |
| ----------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Email address and name associated with a user account | The email address provides a unique login identifier for users managing their Adnuntius account using the administration user interface (UI) or application programming interface (API). The email address is also used for password reset and other communications with the user as required. The name is used throughout the UI, and there are no requirements or validations on the data used in this field. |
| All changes made by a user account                    | Customers expect to see who have made which changes to campaigns and other objects in Adnuntius. We therefore need to store when a change was performed, by who, and what change occured.                                                                                                                                                                                                                       |
| Last login and password change                        | Control who have visited the portal and made certain changes, and to provide support to people who need to change their passwords.                                                                                                                                                                                                                                                                              |

Responsibles

