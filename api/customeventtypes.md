# /customeventtypes

### GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```text
GET https://api.adnuntius.com/api/v1/contextserviceconnections?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

### POST

**Example POST object:**

```text
POST https://api.adnuntius.com/api/v1/contextserviceconnections/<id>?context=<context>
```

```text
{

    "objectState": "ACTIVE",
    "description": "Antal gånger någon klickat på blad 1.",
    "name": "Veckans priser - Blad 1",
    "valueType": "number",
}
```

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |
| description |  | String | A desccription of the group |
| name | Yes | String | The name of the object |
| valueType | yes | number, milliseconds, seconds, money \(String\) | What value type the event in question should be, described below. |

#### Value type

* **number** Will be an integer value.
* **milliseconds** Time in milliseconds.
* **seconds** Time in seconds.
* **money** Will be converted into money of the selected currency.

