# /earningsaccounts

## GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/earningsaccounts?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "Default Earningsaccount",
    "description": "earningsaccount",
    "labels": [
        "Label1",
        "Label2"
    ],
    "address": {
        "addressLine1": "Address 1",
        "addressLine2": "Address 2",
        "city": "City",
        "state": "State",
        "postCode": "Postcode",
        "country": "SE"
    },
    "revenueShare": 10,
}
```

The earnings account object consists of the following:

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |
| name | Yes | String | The name of the site group |
| description |  | String | A desccription of the group |
| labels |  | Array | For searching purposes. |
| addressline1 |  | String | Address line 1 to the acount owner |
| addressline2 |  | String | Address line 2 to the acount owner |
| city |  | String | City of the acount owner |
| state |  | String | State of the acount owner |
| postCode |  | String | Postcode of the acount owner |
| country |  | String | Country of the acount owner |
| Revenue Share |  | Number | If you share revenue across a network this can be used to calculate network owner share |

