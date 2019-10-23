---
description: Describes the fields available in the profile
---

# Adnuntius Data profile fields

Adnuntius Data holds a *Visitor Profile* record for each of your users. Each profile provides many fields to store data against.

## Fields

You can view all of the fields available to you within the Adnuntius Data admin UI. The list of fields is also available via the Adnuntius API.

The different fields may be one of the following data types:

| Data Type | Description | Example |
| :--- | :--- | :--- |
| `Text` | Text surrounded by double quote (`"`) characters | `"This is an example text value"` |
| `Integer` | A whole number than can range from a minimum value of -9,223,372,036,854,775,808 and a maximum value of 9,223,372,036,854,775,807 | 9999 |
| `Date` | A date in YYYY-MM-DD format. Must be surrounded by double quote (`"`) characters. | "2019-12-31" |
| `Timestamp` | A timestamp in YYYY-MM-DD HH:MM:SSZ format. Must be surrounded by double quote (`"`) characters | "2019-10-20 01:59:59Z" |

## Field Mappings

You can create custom field mappings to provide alternative names for fields.
