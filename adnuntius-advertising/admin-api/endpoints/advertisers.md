# /advertisers

## GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/advertisers?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```http
POST https://api.adnuntius.com/api/v1/advertisers?context=<context>
```

```javascript
{
    "id": "ypk7kjy2ldr2bnwr",
    "address": {
        "country": "SE",
        "addressLine1": "Address 1",
        "city": "City",
        "state": "State",
        "postCode": "01234"
    },
    "name": "Adnuntius Advertiser",
    "description": "An advertiser for your network",
    "team": { "id": "defaultsitegroup" },
    "externalReference": "abc123",
    "v1Category": "IAB1",
    "category": "IAB_1",
    "contact": "Mikael",
    "email": "mikael@mail.mail",
    "advertiserUrl": "https://www.homepage.com",
    "phone": "012-345678909"
}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| id | yes | String | Id of the advertiser you would like to update. |
| address |  | Address, JSON | Address of the advertiser, see details below. |
| name | yes | String | Name of advertiser. |
| description |  | String | Short description of advertiser. |
| team | yes | object | Defines what team to assign the advertiser to. |
| externalReference |  | String | Sets an external reference point in order to update external sales tool. |
| v1Category |  | String | IAB version 1 category. |
| category |  | String | IAB version 2 category. |
| contact |  | String | Reference to contact person. |
| email |  | String | Email for contact reference. |
| advertiserUrl |  | String | Advertiser homepage Url. |
| phone |  | String | Phone number to advertiser. |

## Advertiser JSON

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| country |  | String | Id of the advertiser you would like to update. |
| addressLine1 |  | String | Address line 1 |
| addressLine2 |  |  | Address line 2 |
| city |  |  | City for advertiser |
| state |  |  | State for advertiser |
| postcode |  |  | Postcode for advertiser. |

