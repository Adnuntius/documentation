# /devices

## GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/devices?context=<context>
```

```javascript
{
    "results": [
        {
            "properties": [
                {
                    "param": "targetedBrands",
                    "value": "UNKNOWN",
                    "example": "targetedBrands=UNKNOWN"
                },
                {
                    "param": "targetedBrands",
                    "value": "DESKTOP",
                    "example": "targetedBrands=DESKTOP"
                },
                {
                    "param": "targetedBrands",
                    "value": "APPLE",
                    "example": "targetedBrands=APPLE"
                },
                {
                    "param": "targetedBrands",
                    "value": "NOKIA",
                    "example": "targetedBrands=NOKIA"
                },
                {
                    "param": "targetedBrands",
                    "value": "HTC",
                    "example": "targetedBrands=HTC"
                },
                {
                    "param": "targetedBrands",
                    "value": "SAMSUNG",
                    "example": "targetedBrands=SAMSUNG"
                },
                {
                    "param": "targetedBrands",
                    "value": "SONY_ERICSSON",
                    "example": "targetedBrands=SONY_ERICSSON"
                },
                {
                    "param": "targetedBrands",
                    "value": "LG",
                    "example": "targetedBrands=LG"
                },
                {
                    "param": "targetedBrands",
                    "value": "MOTOROLA",
                    "example": "targetedBrands=MOTOROLA"
                },
                {
                    "param": "targetedBrands",
                    "value": "RIM",
                    "example": "targetedBrands=RIM"
                },
                {
                    "param": "targetedBrands",
                    "value": "HUAWEI",
                    "example": "targetedBrands=HUAWEI"
                },
                {
                    "param": "targetedBrands",
                    "value": "ZTE",
                    "example": "targetedBrands=ZTE"
                },
                {
                    "param": "targetedBrands",
                    "value": "ASUS",
                    "example": "targetedBrands=ASUS"
                },
                {
                    "param": "targetedBrands",
                    "value": "PANASONIC",
                    "example": "targetedBrands=PANASONIC"
                },
                {
                    "param": "targetedBrands",
                    "value": "FUJITSU",
                    "example": "targetedBrands=FUJITSU"
                },
                {
                    "param": "targetedBrands",
                    "value": "SHARP",
                    "example": "targetedBrands=SHARP"
                },
                {
                    "param": "targetedBrands",
                    "value": "NEC",
                    "example": "targetedBrands=NEC"
                },
                {
                    "param": "targetedBrands",
                    "value": "KYOCERA",
                    "example": "targetedBrands=KYOCERA"
                },
                {
                    "param": "targetedBrands",
                    "value": "ACER",
                    "example": "targetedBrands=ACER"
                }
            ],
            "group": "targetedBrands"
        },
        {
            "properties": [
                {
                    "param": "targetedOSes",
                    "value": "UNKNOWN",
                    "example": "targetedOSes=UNKNOWN"
                },
                {
                    "param": "targetedOSes",
                    "value": "WINDOWS_PHONE",
                    "example": "targetedOSes=WINDOWS_PHONE"
                },
                {
                    "param": "targetedOSes",
                    "value": "WINDOWS",
                    "example": "targetedOSes=WINDOWS"
                },
                {
                    "param": "targetedOSes",
                    "value": "MACINTOSH",
                    "example": "targetedOSes=MACINTOSH"
                },
                {
                    "param": "targetedOSes",
                    "value": "IOS",
                    "example": "targetedOSes=IOS"
                },
                {
                    "param": "targetedOSes",
                    "value": "ANDROID",
                    "example": "targetedOSes=ANDROID"
                },
                {
                    "param": "targetedOSes",
                    "value": "LINUX",
                    "example": "targetedOSes=LINUX"
                },
                {
                    "param": "targetedOSes",
                    "value": "SUNOS",
                    "example": "targetedOSes=SUNOS"
                },
                {
                    "param": "targetedOSes",
                    "value": "BSD",
                    "example": "targetedOSes=BSD"
                },
                {
                    "param": "targetedOSes",
                    "value": "SYMBIAN",
                    "example": "targetedOSes=SYMBIAN"
                },
                {
                    "param": "targetedOSes",
                    "value": "BLACKBERRY",
                    "example": "targetedOSes=BLACKBERRY"
                }
            ],
            "group": "targetedOSes"
        },
        {
            "properties": [
                {
                    "param": "targetedDeviceTypes",
                    "value": "DESKTOP",
                    "example": "targetedDeviceTypes=DESKTOP"
                },
                {
                    "param": "targetedDeviceTypes",
                    "value": "TABLET",
                    "example": "targetedDeviceTypes=TABLET"
                },
                {
                    "param": "targetedDeviceTypes",
                    "value": "MOBILE",
                    "example": "targetedDeviceTypes=MOBILE"
                }
            ],
            "group": "targetedDeviceTypes"
        }
    ],
    "totalCount": 3
}
```

