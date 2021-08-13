# /coupons

## GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/coupons?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

```http
POST https://api.adnuntius.com/api/v1/coupons/<couponId>?context=<context>
```

**Example POST object:**

```javascript
{
    "name": "Coupon Name",
    "description": "Coupon description",
    "code": "CODE",
    "expiry": "P30D",
    "type": "MONETARY",
    "discountMonetary": {
        "currency": "USD",
        "amount": 10
    },
    "products": [ 
        "product_1",
        "product_2"
    ],
    "labels": [
        "MY_LABEL"
    ],
    "couponStatus": "PUBLISHED",
    "validFrom": "2016-01-01T10:20:30Z",
    "validTo": "2016-01-31T10:20:30Z",
    "oneTimeValidity": true,
    "couponEndDateType": "EXPIRY",
    "claimableAts": ["CAMPAIGN_CREATION", "SIGN_UP"]
}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| name | Yes | String | The name of the coupon. |
| description | Yes | String | The description of the coupon. |
| code | Yes | String | The promo code for the coupon. |
| expiry | Yes | String | The expiry period of the coupon. |
| type | Yes | `MONETARY`, `PERCENTAGE` | The discount type of the coupon. |
| discountMonetary |  | DiscountMonetary object \(see below\) | The monetary value of the coupon. This is required if discountType is `MONETARY`. |
| discountPercentage |  | Number | The percentage value of the coupon. This is required if discountType is `PERCENTAGE`. |
| products |  | Array | An array of Products that are eligible for the coupon discount. If no products are selected then the coupon will apply to all products. |
| labels |  | Array | For searching purposes. |
| couponStatus | Yes | `PENDING`, `PUBLISHED`, `STOPPED` | The status of the coupon. Once the coupon is `PUBLISHED` the detail of the coupon cannot be changed. |
| validFrom | Yes | String | An ISO 8601 date and time of when coupon is valid from. |
| validTo | Yes | String | An ISO 8601 date and time of when coupon is valid to. |
| oneTimeValidity | Yes | Boolean | Specify whether the coupon is valid once. If true it is only valid once and cannot be reapplied. |
| couponEndDateType | Yes | `EXPIRY`, `VALID_TO`, `GREATEST_OF_EXPIRY_OR_VALID_TO` | Specify when the coupon can be used until. For `EXPIRY` the coupon must be used before the `expiry` period has ended. For `VALID_TO` the coupon must be used before the `validTo` date. For `GREATEST_OF_EXPIRY_OR_VALID_TO` the coupon must be used before the latest value of `expiry` period has ended or before `validTo` date. |
| claimableAts | Yes | `SIGN_UP`, `CAMPAIGN_CREATION` | Specify where the coupon can be claimed. `SIGN_UP` can be claimed when signing up. `CAMPAIGN_CREATION` can be claimed when creating the campaign.  |

### DiscountMonetary object

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| currency | Yes | String | The currency of the monetary value. |
| amount | Yes | Number | The amount of the monetary value. |

