---
description: >-
  This page describes the Adnuntius Ad Server Log format. Obtaining access to
  logs is a premium feature; please contact Adnuntius if you would like this to
  be enabled for your account
---

# Ad Server Logs

Ad Server logs can be downloaded via an SFTP server or [pushed to cloud storage](../adnuntius-data/user-interface-guide/admin/data-exports.md). An example of log data can be found [here](https://api.adnuntius.com/rawlogs/). The logs are in a JSON format, with each line having the format described below.

| Field Name         | Data Type                         | Description                                                                                                |
| ------------------ | --------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| `eventTime`        | Timestamp                         | An ISO 8601 date string (`yyyy-MM-ddTHH:mm:ss.sss`)                                                        |
| `eventId`          | String                            | The identifier for the original ad server request. Can be used to match clicks to impressions etc          |
| `referrer`         | String                            | The HTTP `Referer` header of the ad request                                                                |
| `userAgentString`  | String                            | The `User-Agent` header of the ad request                                                                  |
| `segments`         | Collection\[ObjectId]             | User segments that apply to the ad request                                                                 |
| `keyValues`        | Map\[String, Collection\[String]] | Key Values that apply to the ad request e.g. `{"interests":["sport", "music"]}`                            |
| `keywords`         | Collection\[String]               | Keywords that apply to the ad request e.g `["news", "business", "australia"]`                              |
| `categories`       | Collection\[String]               | Categories that apply to the ad request                                                                    |
| `iabCategory`      | String                            | An IAB Category for the Advertiser e.g. `IAB_3_1_3_8`                                                      |
| `cost`             | MonetaryAmount                    | The cost for this event                                                                                    |
| `deviceProperties` | Map\[String, String]              |                                                                                                            |
| `location`         | Location                          | The detected location                                                                                      |
| `consents`         | Collection\[Consent]              | The user consents provided to Adnuntius with this request.                                                 |
| `latitude`         | Float                             | The detected latitutde                                                                                     |
| `longitude`        | Float                             | The detected longitude                                                                                     |
| `pseudoUserId`     | String                            | An anonymised user identifier. It cannot be used to track individual users. See below for further details. |
| `adUnit`           | ObjectId                          | The Adnuntius Ad Unit that received this ad request                                                        |
| `lineItem`         | ObjectId                          | The Adnuntius Line Item that won the auction                                                               |
| `creative`         | ObjectId                          | The Adnuntius Creative that won the auction                                                                |
| `advertiser`       | ObjectId                          | The Adnuntius Creative that won the auction                                                                |
| `team`             | ObjectId                          | The Adnuntius Team of the auction winning Line Item                                                        |

{% hint style="info" %}
You can also read more about log data and see an example of a single data record here: [https://adnuntius.com/blog/adnuntius-brings-the-big-data](https://adnuntius.com/blog/adnuntius-brings-the-big-data)
{% endhint %}

## Object Identifiers

References to Adnuntius objects in the logs are desribed using an `ObjectId`, which has the following fields:

| Field Name | Data Type | Description             |
| ---------- | --------- | ----------------------- |
| `id`       | String    | The Adnuntius object ID |
| `name`     | String    | The object name         |

Example:

```
{ 
  "id": "s8734kjhw98",
  "name": "July Line Item"
}
```

## Monetary Amounts

Costs are described using a `MonetaryAmount` object.

| Field Name | Data Type |
| ---------- | --------- |
| currency   | String    |
| amount     | Number    |

Example:

```
{ 
  "curreny": "EUR",
  "amount": 10.0
}
```

## Locations

The location is reported using the following properites:

* `CONTINENT`
* `COUNTRY`
* `REGION`
* `CITY`
* `POSTCODE`

Example:

```
{
  "CONTINENT": "Oceania",
  "COUNTRY": "Australia"
  "REGION": "Victoria",
  "CITY": "Melbourne",
  "POSTCODE": "3000",
}
```

## Consent

One of the following values:

| Name        | Description                                                                              |
| ----------- | ---------------------------------------------------------------------------------------- |
| `TCF_PURPOSE_1` | IAB Europe Transparency & Consent Framework Purpose 1 - Store and/or access information on a device |
| `TCF_PURPOSE_2` | IAB Europe Transparency & Consent Framework Purpose 2 - Select basic ads |
| `TCF_PURPOSE_3` | IAB Europe Transparency & Consent Framework Purpose 3 - Create a personalised ads profile |
| `TCF_PURPOSE_4` | IAB Europe Transparency & Consent Framework Purpose 4 - Select personalised ads |
| `TCF_PURPOSE_5` | IAB Europe Transparency & Consent Framework Purpose 5 - Create a personalised content profile |
| `TCF_PURPOSE_6` | IAB Europe Transparency & Consent Framework Purpose 6 - Select personalised content |
| `TCF_PURPOSE_7` | IAB Europe Transparency & Consent Framework Purpose 7 - Measure ad performance |
| `TCF_PURPOSE_8` | IAB Europe Transparency & Consent Framework Purpose 8 - Measure content performance |
| `TCF_PURPOSE_9` | IAB Europe Transparency & Consent Framework Purpose 9 - Apply market research to generate audience insights |
| `TCF_PURPOSE_10` | IAB Europe Transparency & Consent Framework Purpose 10 - Develop and improve products |

More information can be found [here](https://iabeurope.eu/iab-europe-transparency-consent-framework-policies/#Appendix_A_Purposes_and_Features_Definitions).

## User Identifiers

The logs include "pseudo" user identifiers that have been anonymised so that they no longer uniquely identify a single user. The same user _will_ always be assigned the same identifier, but that same identifier can and will also be assigned to _multiple other users_ as well. The identifiers can be used with a probabilistic cardinality estimation method, such as the popular [HyperLogLog](https://en.wikipedia.org/wiki/HyperLogLog) algorithm, to estimate the number of unique users that viewed an advertisement without knowing precisely the number of times that each individual user viewed the ad.
