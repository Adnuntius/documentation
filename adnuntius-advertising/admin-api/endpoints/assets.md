# /assets

## GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

You must provide an `id` and/or `creative-id` to the `assets` endpoint when performing `POST` or `GET`

**Example get request of a single asset:**

```http
GET https://api.adnuntius.com/api/v1/assets/<creative-id>/<id>?context=<context>
```

**Example get request of all the assets for a creative:**

```http
GET https://api.adnuntius.com/api/v1/assets/<creative-id>?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

## POST

**Example POST object:**

```javascript
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

**Example node.js code for uploading a file**

```javascript
const fs = require("fs");
const fetch = require("node-fetch");
const FormData = require("form-data");

const form = new FormData();
const filePath = "./myFile.png";
form.append("file", fs.createReadStream(filePath));

const authToken = "9CDNoBusJV3vGXepiktJVjWZGUNWtfkZ3U5BhFBs3OYAAAAQFHzejjdwnRL7sH62vTe7yCZV5UmlsecgKtFtj6CL4paSQxWQKMtCikjxe7Px1hwubifTXymqXLUv10Z2ZXzLrE2MSEDdI9mpGaQ-ES6M326UFXgJKbzQkzPGA4p1sVDxDkVXE0g4deIee2_89Kn70Q";
const creativeId = "sdnkrn7wcdnbpyy5"; // must be the creative ID of an existing creative
const assetId = "my_asset"; // new asset ID
const networkId = "myNetworkId";
fetch('https://api.adnuntius.com/api/v1/assets/' + creativeId + '/' + assetId + '?context=' + networkId + '&auth_token=' + auth, {
  method: 'POST',
  body: form
});
```

The earnings account object consists of the following:

| Name | Required | Restriction | Description |
| :--- | :--- | :--- | :--- |
| objectState |  | ACTIVE, INACTIVE, HIDDEN | State of the object, will disable or delete the object. |

..... more to document.

