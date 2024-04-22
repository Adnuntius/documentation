---
description: Here you will see details about how we collect, store and use user data.
---

# Data Collection and Usage

## Personal Data Stored in Device Cookies

All information is declared under [https://delivery.adnuntius.com/.well-known/deviceStorage.json](https://delivery.adnuntius.com/.well-known/deviceStorage.json). The table below is provided for easier reading.

<table data-full-width="false"><thead><tr><th width="160">Name</th><th width="94">Type</th><th width="323">Purpose</th><th>Expiry</th></tr></thead><tbody><tr><td>usi</td><td>Cookie</td><td>Identify the user across multiple sessions (TCF: 1, 2, 4, 7)</td><td>30 days</td></tr><tr><td>sessionId</td><td>Cookie</td><td>Identify the user session across multiple requests (TCF: 1, 2, 4, 7)</td><td>Length of browser session</td></tr><tr><td>i</td><td>Cookie</td><td>Records a history of advertisements shown to the user (TCF: 1, 2)</td><td>30 days</td></tr><tr><td>c</td><td>Cookie</td><td>Records a history of advertisements shown to the user (TCF: 1, 2)</td><td>30 days</td></tr><tr><td>v</td><td>Cookie</td><td>Records a history of advertisements shown to the user (TCF: 1, 2)</td><td>30 days</td></tr><tr><td>s</td><td>Cookie</td><td>Records a history of advertisements shown to the user (TCF: 1, 2)</td><td>30 days</td></tr><tr><td>r</td><td>Cookie</td><td>Records a history of advertisements shown to the user (TCF: 1, 2)</td><td>30 days</td></tr><tr><td>t</td><td>Cookie</td><td>User retargeting. Records data about the user when they are browsing an advertiser's website, and then uses this data to select advertisements when the user is browsing a publisher's website. (TCF: 1, 4)</td><td>30 days</td></tr><tr><td>cnv</td><td>Cookie</td><td>Records the most recent time that a specific advertisement was seen by the user. Used to track conversions e.g. if the user subsequently performs an eligible action, such as purchasing a product, on the advertiser's website. (TCF: 1, 4)</td><td>30 days</td></tr><tr><td>consent</td><td>Cookie</td><td>(*Deprecated*) Replaced by IAB TCF string and no longer read or written</td><td>No expiry</td></tr><tr><td>noCookies</td><td>Cookie</td><td>Records user cookie preference specified here: http://delivery.adnuntius.com/consent (TCF: 1)</td><td>No expiry</td></tr><tr><td>doNotTrack</td><td>Cookie</td><td>Records user tracking preference specified here: http://data.adnuntius.com/consent (TCF: 5)</td><td>No expiry</td></tr><tr><td>adn.metaData</td><td>Web</td><td>Stores the cookie data detailed above in the browser web storage (TCF: 1, 2, 4, 7)</td><td>Null</td></tr></tbody></table>

All objects above with Type "Cookie" use the following domains: delivery.adnuntius.com, europe.delivery.adnuntius.com, ads.adnuntius.delivery, limited.delivery.adnuntius.com, and limited.europe.delivery.adnuntius.com.

**Storage:** Cookies are stored on the user's personal device and are transmitted with each request to the Adnuntius platform, where they are read by the Adnuntius software. The cookie data is not stored or accessible anywhere on the Adnuntius servers. The personal information that is stored on Adnuntius servers is outlined in a separate tab in this file.

{% hint style="info" %}
Please note that Adnuntius offers a privacy-safe ad serving alternative commonly referred to as "cookieless ad serving" (more details here: [https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/cookieless-advertising](https://docs.adnuntius.com/adnuntius-advertising/requesting-ads/cookieless-advertising) If you use the cookieless alternative Adnuntius will not set any of these cookies, and also not set a user ID. For more information, please visit the page linked to above.
{% endhint %}

## Viewing History Stored in Databases

**Personal information:** User Identifier and list of advertisements and Timestamps

**Purpose:** To allow control of how many times, per unit time, that an advertisement is shown to an individual ("frequency capping"). For example: show an advertisement no more than twice per week to each unique viewer. This data replicates what is also stored in device cookie storage, but is also stored on the Adnuntius servers to allow cross-device frequency capping.

**Expiry:** 30 days after last update.

**Storage:** Data is stored on servers controlled by Adnuntius and delivered by sub-processor Hetzner.

## Location Targeting

### **Named locations derived from IP addresses**

**Purpose**: Enable Controller and potentially its customers to target by country, region, city and/or post/zip code.

**Expiry**: All information is discarded immediately after looking up and matching the information to a named location.

**Storage**: No location data is stored under this Purpose. The IP addresses are checked against named locations stored on our servers. No data is sent to any external party.

**Involved sub-processors**: Adnuntius uses Digital Envoy, who supplies us with a file mapping IP addresses to named locations. This file is stored on Adnuntius servers (Hetzner) as described under "Sub-Processors" found below.

### **Longitude and latitude**

**Please note**: this data is only processed if actively sent by the Controller.

**Purpose**: Enable Controller and potentially its customers to target by exact location.

**Expiry**: All information is discarded immediately after any advertisements are matched to the location.

**Storage**: No location data is stored under this Purpose.

**Involved sub-processors**: None.

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

### **User identifier and list of pages viewed.**

* **Details:** page domain-name (NOT the full URL); content categories of the page; content keywords of the page; device type used to view the page; user location (country and region) when viewing the page.
* **How data is sent** - javascript API: [https://docs.adnuntius.com/adnuntius-data/api-documentation/javascript/page-views](https://docs.adnuntius.com/adnuntius-data/api-documentation/javascript/page-views). HTTP API: [https://docs.adnuntius.com/adnuntius-data/api-documentation/http/http-page-view](https://docs.adnuntius.com/adnuntius-data/api-documentation/http/http-page-view).
* **Purpose:** Enable Controller to build segments (Data Subjects grouped by their common behavior and/or characteristics) based on their consumption of pages on Controller's Properties.
* **Expiry:** 30 days.
* **Storage:** Data is stored on servers controlled by Adnuntius and its sub-processors.
* **Involved sub-processors:** Adnuntius uses providers of data centers to store data. Please see "Sub-Processors" below for more information.

### **Profile fields**

* **Details:** firstName, lastName, title, dateOfBirth, age, gender, status, language, description, company, website, rank, level, type, emailPrivate, emailWork, phone, mobilePhone, addressLine1, addressLine2, state, city, areaCode, zipCode, postCode, region, country, educationName, educationType, educationDegree, educationSchool, educationField, educationStartYear, educationEndYear, skills, facebook, instagram, snapchat, twitter, avatar, transactions, lastLogin, logins, products, favouriteTopics, personalInterests.
* **How data is sent** - javascript API: [https://docs.adnuntius.com/adnuntius-data/api-documentation/javascript/profile-updates](https://docs.adnuntius.com/adnuntius-data/api-documentation/javascript/profile-updates). HTTP AIP: [https://docs.adnuntius.com/adnuntius-data/api-documentation/http/http-profile](https://docs.adnuntius.com/adnuntius-data/api-documentation/http/http-profile).
* **Purpose:** Enable Controller to build segments (Data Subjects grouped by their common behavior and/or characteristics) based on their characteristics.
* **Expiry:** 180 days.
* **Storage:** Data is stored on servers controlled by Adnuntius and its sub-processors.
* **Involved sub-processors:** Adnuntius uses providers of data centers to store data. Please see "Sub-Processors" below for more information.

### **Segments pre-built by Controller before sent to Adnuntius**

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

To see what data is recorded, [please see this page](../adserver-logs.md). Some rules apply to these data:

* User agent strings are Recorded if Network Config is set to "No Consent Required". They are not recorded if Network Config is set to "Consent Required".
* Latitude and longitude are recorded only if consent is provided.
* Other data is always recorded as long as raw data is enabled.

**Storage:** All data is stored in Hetzner's data centers (see "Sub-Processors" for more information) in Germany and Finland. Snapshots of Adnuntius data are periodically saved to Amazon Simple Storage Service (AWS S3)'s Frankfurt data center. All data is encrypted with AES prior to leaving the Germany and Finland data centers, is transmitted via a secured channel, and is stored in its encrypted form in a private S3 bucket.

## Login and Changes

<table><thead><tr><th width="206.8517221866826">Data</th><th>Purpose</th></tr></thead><tbody><tr><td>Email address and name associated with a user account</td><td>The email address provides a unique login identifier for users managing their Adnuntius account using the administration user interface (UI) or application programming interface (API). The email address is also used for password reset and other communications with the user as required. The name is used throughout the UI, and there are no requirements or validations on the data used in this field.</td></tr><tr><td>All changes made by a user account</td><td>Customers expect to see who have made which changes to campaigns and other objects in Adnuntius. We therefore need to store when a change was performed, by who, and what change occured.</td></tr><tr><td>Last login and password change</td><td>Control who have visited the portal and made certain changes, and to provide support to people who need to change their passwords.</td></tr></tbody></table>

**Expiry:** No expiry.

**Storage:** Data is stored on servers controlled by Adnuntius and its sub-processors.

**Involved sub-processors:** Adnuntius uses providers of data centers to store data. Please see "Sub-Processors" below for more information.

## Context Matching

**Purpose**: enable Controller and potentially its customers to target ads to the content of a page. The content of a page may include keywords on the page, the categories of the page, or the overall understanding of a page's text (including title, ingress and body texts) using large language models such as for instance GPT or BERT.

**Data**: no user data is involved, as no information is stored to a cookie or any other user identifier. The information is rather stored to the specific page, so that when any user visits the page the advertisement can be matched to the page's content, not to any user information.

**Storage**: Data is stored on servers controlled by Adnuntius and its sub-processors.

**Involved sub-processors**: Adnuntius uses providers of data centers to store data. Please see the tab "Sub-Processors" here for more information.

## Responsibles

Data Protection Officer, and responsible on behalf of the Processor:

Stian Remaad, CEO Adnuntius | Email: stian@adnuntius.com

## Sub-Processors

### Hetzner Online GmbH

**Contact information:** Industriestrasse 25, 91710 Gunzenhausen, Germany - info@hetzner.com - +49 (0)9831 505-0

**Sub-Processor's role:** Hetzner is Adnuntius' supplier of servers in Europe, and stores data about all users tracked by any of the tracking mechanisms specified in this document.

**Locations of servers:** Germany and Finland.

**Data processing agreement:** [https://drive.google.com/file/d/0B0QhCoSpD01kMWo0ZFdVN0ZKTUx3bTd1NGNQWnlIbkJhdEpz/view?usp=sharing\&resourcekey=0-ea\_4a8qjdN4XULwQQDrBeg](https://drive.google.com/file/d/0B0QhCoSpD01kMWo0ZFdVN0ZKTUx3bTd1NGNQWnlIbkJhdEpz/view?usp=sharing\&resourcekey=0-ea\_4a8qjdN4XULwQQDrBeg)

**Basis for transfer:** EU standard clauses.

### MaxMind

**Contact information:** [https://www.maxmind.com/en/company/contact-us](https://www.maxmind.com/en/company/contact-us)

**Sub-Processor's role:** Maxmind provides Adnuntius with location targeting technology, enabling Adnuntius to translate an IP address to a named location. Maxmind provides files that are stored on our databases, and no data is as such transferred to Maxmind.

**Locations of servers:** Germany and Finland.

**Data processing agreement:** No data is sent to nor processed by the supplier.

### Amazon Web Services

**Contact information:** [https://pages.awscloud.com/compliance-contact-us.html](https://pages.awscloud.com/compliance-contact-us.html)

**Sub-Processor's role:** Snapshots of Adnuntius data are periodically saved to Amazon Simple Storage Service (AWS S3)'s Frankfurt data center. All data is encrypted with AES prior to leaving the Hetzner data centers (Germany and Finland) and sent to this Frankfurt data center, is transmitted via a secured channel, and is stored in its encrypted form in a private S3 bucket.

**Locations of servers:** Germany

**Data processing agreement:** [https://d1.awsstatic.com/legal/aws-gdpr/AWS\_GDPR\_DPA.pdf](https://d1.awsstatic.com/legal/aws-gdpr/AWS\_GDPR\_DPA.pdf)

**Basis for transfer:** EU standard clauses.

### Adnuntius Australia PTY LTD

**Contact information:** Antonios Sarhanis; antonios@adnuntius.com; +61 416 173 732

**Sub-Processor's role:** Adnuntius Australia is a company fully owned by Adnuntius AS, and is the company where several of our developers are employed. These developers need to access databases to develop functionality, and the purpose of the attached agreement is to ensure transparency in how our developers located outside of EU may access personal information.

**Locations of servers:** Not applicable.

**Data processing agreement:** [https://drive.google.com/file/d/1e3V4odfkl2Syc1bngFZddjBQJ7lMCXj8/view?usp=sharing](https://drive.google.com/file/d/1e3V4odfkl2Syc1bngFZddjBQJ7lMCXj8/view?usp=sharing)

**Basis for transfer:** EU standard clauses.

### Leaseweb Asia Pacific

**Contact information:** privacy@leaseweb.com; 11 Collyer Quay, The Arcade #16-02 049317, Singapore

**Sub-Processor's role:** Leaseweb is Adnuntius' supplier of servers in Asia, and stores data about all users in Asia tracked by any of the tracking mechanisms specified in this document.

**Locations of servers:** Singapore

**Data processing agreement:** [https://www.leaseweb.com/sites/default/files/Legal/LSW\_APAC\_ENG\_v2020.1%20Privacy%20Statement\_0.pdf](https://www.leaseweb.com/sites/default/files/Legal/LSW\_APAC\_ENG\_v2020.1%20Privacy%20Statement\_0.pdf)

### Paypal

**Contact information:** [https://www.paypal.com/va/webapps/mpp/ua/privacy-full#2](https://www.paypal.com/va/webapps/mpp/ua/privacy-full#2)

**Sub-Processor's role:** Our customers who use Adnuntius Self-Service may use a payment service provider to charge self-service advertisers. PayPal is one of the options available.

**Locations of servers:** Please see [PayPal's privacy policy](https://www.paypal.com/va/webapps/mpp/ua/privacy-full).

**Data processing agreement:** [https://www.paypal.com/us/webapps/mpp/ua/data-protection](https://www.paypal.com/us/webapps/mpp/ua/data-protection)

**Basis for transfer:** EU standard clauses.

### Cloudflare

**Contact information:** 101 Townsend Street San Francisco, CA 94107, USA; Emily Hancock, Data Protection Officer, legal@cloudflare.com

**Sub-Processor's role:** Cloudflare terminates prebid requests at the edge, decrypts it, and tunnels it to our adservers for a fast ad response.

**Locations of servers:** Worldwide points of presence. For EU companies: to ensure that only European servers are used, just send the GDPR ad tag parameter with the ad request as[ explained here](https://docs.adnuntius.com/other-useful-information/identification-and-privacy/consent-processing-tcf2#id-1-how-adnuntius-determines-if-gdpr-applies).&#x20;

**Data processing agreement:** [https://www.cloudflare.com/en-au/cloudflare-customer-dpa/](https://www.cloudflare.com/en-au/cloudflare-customer-dpa/)

**Basis for transfer:** EU standard clauses.

### CDN77

**Contact information:** DataCamp Limited, 207 Regent Street, London, UK; compliance@cdn77.com

**Sub-Processor's role:** CDN77 stores creative assets for fast worldwide ad delivery. CDN77 does not handle any data subject information and is as such not subject to privacy legislation.

**Locations of servers:** Worldwide points of presence.

**Data processing agreement:** [https://client.cdn77.com/files/cdn77-gdpr-dpa.pdf](https://client.cdn77.com/files/cdn77-gdpr-dpa.pdf)

## **Security Measures**

Please visit [https://adnuntius.com/security-measures](https://adnuntius.com/security-measures). Password is granted on request to support@adnuntius.com.
