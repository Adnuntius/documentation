# /creativesets

## GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the API documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/creativesets?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```http
POST https://api.adnuntius.com/api/v1/creativesets/<id>?context=<context>
```

You can also add a targeting object in the post payload to narrow down your result to specific sites or publishers. Read more about targeting objects [here](../targeting-object.md).

```
{
	"id": "<CREATIVE-SET-ID>",
	"renderOption": null,
	"startDate": "2024-12-10T23:00:00.000Z",
	"endDate": "2024-12-12T23:00:00.000Z",
	"userState": "APPROVED",
	"name": "tests",
	"billingCurrency": "NOK",
}
```



<table><thead><tr><th width="159">Parameter</th><th width="133">Required</th><th>Restrictions</th><th width="228">Description</th></tr></thead><tbody><tr><td>id</td><td>yes</td><td>String</td><td>An identifier that is used to reference the creative set.</td></tr><tr><td>renderOption</td><td>no</td><td>null | 'div' | 'iframe' </td><td>A url encoded string of your search sentence.</td></tr><tr><td>startDate</td><td>yes</td><td>UTC Date String</td><td>A date string for when you want the creative set to go live, example: "2024-12-10T23:00:00.000Z"</td></tr><tr><td>endDate</td><td>no</td><td>UTC Date String</td><td>A date string for when you want the creative set to end, example: "2024-12-12T23:00:00.000Z"</td></tr><tr><td>userState</td><td>yes</td><td>'APPROVED' | 'INCOMPLETE' | 'PAUSED' </td><td>Approved will go live, the other two will pause the creative set from delivering.</td></tr><tr><td>name</td><td>yes</td><td>String</td><td>A name for the creative set.</td></tr><tr><td>billingCurrency</td><td>yes</td><td>String of currencu eg: 'NOK'</td><td>The currency you want the billing to be in. Will have to be a currency that's setup in the network</td></tr></tbody></table>

