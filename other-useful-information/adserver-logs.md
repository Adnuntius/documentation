---
description: This page describes the Adnuntius Ad Server Log format. Obtaining access to logs is a premium feature; please contact Adnuntius if you would like this to be enabled for your account
---
# Ad Server Logs

Ad Server logs can be downloaded via an SFTP server or pushed to cloud storage. 

Example log data can be found [here](https://api.adnuntius.com/rawlogs/). 

The logs are in a JSON format, with each line having the format described below.

| Field Name | Data Type | Description |
| --- | --- | ---
| `eventTime` | Timestamp | An ISO 8601 date string (`yyyy-MM-ddTHH:mm:ss.sss`) |
| `eventId` | String | The identifier for the original ad server request. Can be used to match clicks to impressions etc |
| `ipAddress` | String | The IP address where the ad request originated from
| `referrer` | String | The HTTP `Referer` header of the ad request |
| `userAgentString` | String | The `User-Agent` header of the ad request |
| `segments` | Collection[ObjectId] | User segments that apply to the ad request
| `keyValues` | Map[String, Collection[String]] | Key Values that apply to the ad request e.g. `{"interests":["sport", "music"]}`
| `keywords` | Collection[String] | Keywords that apply to the ad request e.g `["news", "business", "australia"]`
| `categories` | Collection[String] | Categories that apply to the ad request
| `iabCategory` | String | An IAB Category for the Advertiser e.g. `IAB_3_1_3_8` |
| `cost` | MonetaryAmount | The cost for this event |
| `deviceProperties` | Map[String, String] |
| `location` | Location | The detected location 
| `consents` | Collection[Consent] | The user consents provided to Adnuntius with this request.
| `latitude` | Float | The detected latitutde
| `longitude` | Float | The detected longitude
| `pseudoUserId` | String | An anonymised user identifier. It cannot be used to track individual users. See below for further details.
| `adUnit` | ObjectId | The Adnuntius Ad Unit that received this ad request
| `lineItem` | ObjectId | The Adnuntius Line Item that won the auction
| `creative` | ObjectId | The Adnuntius Creative that won the auction
| `advertiser` | ObjectId | The Adnuntius Creative that won the auction
| `team` | ObjectId | The Adnuntius Team of the auction winning Line Item

## Object Identifiers

References to Adnuntius objects in the logs are desribed using an `ObjectId`, which has the following fields:

| Field Name | Data Type | Description |
| --- | --- | ---
| `id` | String | The Adnuntius object ID
| `name` | String | The object name

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
| --- | --- 
| currency | String |
| amount | Number |

Example:

```
{ 
  "curreny": "EUR",
  "amount": 10.0
}
```

## Locations

The location is reported using the following properites:

- `CONTINENT`
- `COUNTRY`
- `REGION`
- `CITY`
- `POSTCODE`

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


| Name | Description |
| --- | --- |
| `PROFILE` | Consent to use personal data to build a user profile
| `COUNTS` | Consent to meaure ad performance - counting number of times user viewed, clicked ads etc
| `TARGETING` | Consent to use personal data to target advertising 
