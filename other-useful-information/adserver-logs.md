---
description: THIS PAGE IS UNDER CONSTRUCTION! This page describes how to access Adnuntius Ad Server Logs. This is a premium feature; please contact Adnuntius if you would like this to be enabled for your account
---
# Ad Server Logs

Ad Server logs can be downloaded via an SFTP server or pushed to cloud storage. 

The logs are in a JSON format, with each line having the format described below.

| Field Name | Data Type | Description |
| --- | --- | ---
| `eventTime` | Timestamp | An ISO 8601 date string (`yyyy-MM-ddTHH:mm:ss.sss`) |
| `eventId` | String | The identifier for the original ad server request. Can be used to match clicks to impressions etc |
| `ipAddress` | String |
| `referrer` | String | The HTTP `Referer` header of the original ad request |
| `userAgentString` | String | The `User-Agent` header of the original ad request |
| `segments` | Collection[ObjectId] | User segments that apply to the ad request
| `keyValues` | Map[String, Collection[String]] | Key Values that apply to the ad request
| `keywords` | Collection[String] | Keywords that apply to the ad request
| `categories` | Collection[String] | Categories that apply to the ad request
| `iabCategory` | String | An IAB Category for the Advertiser e.g. `IAB_3_1_3_8` |
| `cost` | MonetaryAmount | The cost for this event |
| `deviceProperties` | Map[String, String] |
| `location` | Map[LocationType, String] | The detected location 
| `consents` | Collection[Consent] | The user consents provided with this request 
| `latitude` | Float |
| `longitude` | Float |
| `pseudoUserId` | String | This 
| `adUnit` | ObjectId |
| `lineItem` | ObjectId |
| `creative` | ObjectId |
| `advertiser` | ObjectId |
| `team` | ObjectId |

## `ObjectId`

| Field Name | Data Type |
| --- | --- 
| `id` | String |
| `name` | String |


## `MonetaryAmount`

| Field Name | Data Type |
| --- | --- 
| currency | String |
| amount | Number |

## `LocationType`

One of the following values:

- `CONTINENT`
- `COUNTRY`
- `REGION`
- `CITY`
- `POSTCODE`
- `LAT_LONG`

## `Consent`

One of the following values:

- `PROFILE`
- `COUNTS`
- `EXTERNAL`
- `TARGETING`


Example log data can be found [here](https://api.adnuntius.com/rawlogs/). 
