# /assets

### GET

A `GET` request can allways be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

You must provide an `id` and/or `creative-id` to the `assets` endpoint when performing `POST` or `GET`

**Example get request of a single asset:**

```text
GET https://api.adnuntius.com/api/v1/asstes/<creative-id>/<id>?context=<context>
```

**Example get request of all the assets for a creative:**

```text
GET https://api.adnuntius.com/api/v1/asstes/<creative-id>?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

### POST

**Example POST object:**

```text
{
    "objectState": "ACTIVE",
    "network": { "id": "winning" },
    "mimeType": "IMAGE_JPEG",
    "fileName": "Panorama.jpg",
    "cdnId": "//assets.adnuntius.com/aO59MDnCKaLBQNA0G0DUCc7nj8wJA0e149OPTkQCww8.jpg",
    "primaryHtmlAsset": false,
    "htmlUrls": {},
    "fileSizeBytes": 71561,
    "width": 980,
    "height": 240,
    "url": "/api/v1/assets/85y1jrfyx3bmpm1h/skqjv5r2w5fjwmx2"
}
```

The earnings account object consists of the following:

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN | State of the object, will dissable or delete the object. |

..... more to document.

