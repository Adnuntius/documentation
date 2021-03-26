# /coupons

## GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/coupons?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```javascript
{
    "code": "CODE",
    "expiry": "P30D",
    "discountType": "MONETARY",
    "monetaryDiscount": {
        "value": {
            "currency": "USD",
            "amount": 10
        }
    },
    "allProducts": false,
    "products": [ 
        "product_1",
        "product_2"
    ],
    "labels": [
        "MY_LABEL"
    ]
}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| code | Yes | String | The promo code for the coupon. |
| expiry | Yes | String | The expiry period of the coupon. |
| discountType | Yes | `MONETARY`, `PERCENTAGE` | The discount type of the coupon. |
| monetaryDiscount |  | MonetaryDiscount object \(see below\) | The monetary value of the coupon. This is required if discountType is `MONETARY`. |
| percentageDiscount |  | PercentageDiscount object \(see below\) | The percentage value of the coupon. This is required if discountType is `PERCENTAGE`. |
| allProducts | Yes | Boolean | Specify whether the coupon applies to all products. |
| products |  | Array | An array of Products that are eligible for the coupon discount. |
| labels |  | Array | For searching purposes. |

### MonetaryDiscount object

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| value | Yes | Monetary Object \(see below\) | The monetary value of the coupon. |

### Monetary object

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| currency | Yes | String | The currency of the monetary value. |
| amount | Yes | Number | The amount of the monetary value. |

### PercentageDiscount object

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| value | Yes | Number | The percentage value of the coupon. |

