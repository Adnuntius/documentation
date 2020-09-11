---
description: Describes the fields available in the profile
---

# Profile Fields

Adnuntius Data holds a _Visitor Profile_ record for each of your users. Each profile provides many fields to store data against.

## Fields

A _partial_ list of the available fields is provided in the table below. See the [Data Types](fields.md#data-types) section for further details about the field data types.

| Field Name | Data Type | Description | Example |
| :--- | :--- | :--- | :--- |
| `firstName` | `Text` | First Name | `"John"` |
| `lastName` | `Text` | Last Name | `"Nguyen"` |
| `title` | `Text` | Title | `"Mr"`, `"Mrs"`, `"Dr"`, `"Captain"`, etc |
| `dateOfBirth` | `Date` | Date of Birth | `"1990-05-01"` |

You can view the **full** list of available fields within the Adnuntius Data admin UI. This list is also available via the Adnuntius API.

## Data Types

The different fields may be one of the following data types:

| Data Type | Description | Example |
| :--- | :--- | :--- |
| `Text` | Text surrounded by double quote \(`"`\) characters | `"This is an example text value"` |
| `Integer` | A whole number than can range from a minimum value of -9,223,372,036,854,775,808 and a maximum value of 9,223,372,036,854,775,807 | 9999 |
| `Date` | A date in YYYY-MM-DD format. Must be surrounded by double quote \(`"`\) characters. | "2019-12-31" |
| `Timestamp` | A timestamp in YYYY-MM-DD HH:MM:SSZ format. Must be surrounded by double quote \(`"`\) characters | "2019-10-20 01:59:59Z" |

## Field Mappings

You can create custom field mappings to provide alternative names for fields.

