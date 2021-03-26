# /coupons

## GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api
documentation.

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
    {
        "id": "product_1"
    },
    {
        "id": "product_2"
    }
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
| discountType | Yes | MONETARY, PERCENTAGE | The discount type of the coupon. |
| monetaryDiscount |  | monetaryDiscount object | The monetary value of the coupon. This is required if discountType is MONETARY. |
| percentageDiscount |  | percentageDiscount object | The percentage value of the coupon. This is required if discountType is PERCENTAGE. |
| allProducts | Yes | Boolean | Specify whether the coupon applies to all products. |
| products |  | Array | An object with a Key `id` for the id of the product to be bound to the coupon. |
| labels |  | Array | For searching purposes. |

### monetaryDiscount object

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| value | yes | monetary Object | The monetary value of the coupon. |

### monetary object

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| currency | yes | String | The currency of the monetary value. |
| amount | yes | Number | The amount of the monetary value. |

### percentageDiscount object

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| value | yes | Number | The percentage value of the coupon. |
