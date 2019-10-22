# Targeting object

The targeting object is provided as part of the API call when creating [line items](endpoints/lineitems.md) and [creatives](endpoints/creatives.md).
The basic structure of this object is shown below:

```text

{
    "targeting": {
        "deviceTargets": [],
        "adUnitTarget": {},
        "userSegmentTargets": [],
        "dateTarget": {},
        "geospatialTargets": [],
        "keyValueTargets": [],
        "siteTarget": {},
        "adUnitMatchingLabelTargets": [],
        "categoryTargets": [],
        "namedLocationTarget": {},
        "dayPartingTargets": [],
        "retargetingTargets": [],
        "keywordTargets": [],
        "ipAddressTarget": {},
        "siteGroupTarget": {}
    }
}
```

Fields:

| Name | Restriction | Description |
| :--- | :--- | :--- |
| deviceTargets | Array | [deviceTargets](#device-targets) |
| adUnitTarget | Object | [adUnitTarget](#adUnitTarget) |
| userSegmentTargets | Array | [userSegmentTargets](http://docs.adnuntius.com/api/inventory/targeting-object#userSegmentTargets) |
| dateTarget | Object | [dateTarget](http://docs.adnuntius.com/api/inventory/targeting-object#dateTarget) |
| geospatialTargets | Array | [geospatialTargets](http://docs.adnuntius.com/api/inventory/targeting-object#geospatialTargets) |
| keyValueTargets | Array | [keyValueTargets](http://docs.adnuntius.com/api/inventory/targeting-object#keyValueTargets) |
| siteTarget | Object | [siteTarget](http://docs.adnuntius.com/api/inventory/targeting-object#siteTarget) |
| adUnitMatchingLabelTargets | Array | [adUnitMatchingLabelTargets](http://docs.adnuntius.com/api/inventory/targeting-object#adUnitMatchingLabelTargets) |
| categoryTargets | Array | [categoryTargets](http://docs.adnuntius.com/api/inventory/targeting-object#categoryTargets) |
| namedLocationTarget | Object | [namedLocationTarget](http://docs.adnuntius.com/api/inventory/targeting-object#namedLocationTarget) |
| dayPartingTargets | Array | [dayPartingTargets](http://docs.adnuntius.com/api/inventory/targeting-object#dayPartingTargets) |
| retargetingTargets | Array | [retargetingTargets](http://docs.adnuntius.com/api/inventory/targeting-object#retargetingTargets) |
| keywordTargets | Array | [keywordTargets](http://docs.adnuntius.com/api/inventory/targeting-object#keywordTargets) |
| ipAddressTarget | Object | [ipAddressTarget](http://docs.adnuntius.com/api/inventory/targeting-object#ipAddressTarget) |
| siteGroupTarget | Object | [siteGroupTarget](http://docs.adnuntius.com/api/inventory/targeting-object#siteGroupTarget) |

## Device targets

```text
{
"deviceTargets": [
    {
        "targetedBrands": [
                "ACER"
            ],
            "targetedOSes": [
                "ANDROID"
            ],
            "targetedDeviceTypes": [
                "DESKTOP"
            ]
        },
        {
            "targetedBrands": [],
            "targetedOSes": [],
            "targetedDeviceTypes": [
                "MOBILE"
            ]
        }
    ]

}
```

The device targets can be found with it's endpoint [/devices](http://docs.adnuntius.com/api/others/devices).

| Name | Data type | Values |
| :--- | :--- | :--- |
| targetedBrands | String | UNKNOWN, DESKTOP, APPLE, NOKIA, HTC, SAMSUNG, SONY\_ERICSSON, LG, MOTOROLA, RIM, HUAWEI, ZTE, ASUS, PANASONIC, FUJITSU, SHARP, NEC, KYOCERA, ACER |
| targetedOSes | String | UNKNOWN, WINDOWS\_PHONE, WINDOWS, MACINTOSH, IOS, ANDROID, LINUX, SUNOS, BSD, SYMBIAN, BLACKBERRY |
| targetedDeviceTypes | String | DESKTOP, TABLET, MOBILE |



**Ad unit target object**

```text
{
    "adUnitTarget": {
        "adUnits": [
            { "id": "d5f6mxj3jbhytmzg" },
            { "id": "jpbnjqy597pvygbm" }
        ]
    }
}
```

The `id` of the ad units can be found at this endpoint: [/adunits](http://docs.adnuntius.com/api/inventory/adunits).

When posting targeting data only the id of the adunit is required.



**Segment target object**

```text
{
    "userSegmentTargets": [
        {
            "userSegments": [
                { "id": "xxxxxxxxxxxx" }
            ]
        },
        {
            "userSegments": [
                { "id": "xxxxxxxxxxxx" }
            ]
        }
    ]
}
```

The `id` of the segments can be found hereat this endpoint: [/segments](http://docs.adnuntius.com/api/advertising/segments).

When posting targeting data only the id of the adunit is required.



**Date target object**

```text
{
    "dateTarget": {
        "dateRanges": [
                        {
                "first": "2018-01-02T00:00:00",
                "second": "2018-01-10T23:30:00"
            },
            {
                "first": "2018-01-11T00:00:00",
                "second": "2018-01-12T00:00:00"
            },
            {
                "first": "2018-01-11T00:00:00",
                "second": "2018-01-11T23:30:00"
            }
        ],
        "timeZoneSetting": "SYSTEM"
    },
}
```

All dates must be specified as follows: `yyyy-mm-ddThh:mm:ss`.

| Name | Data type | Values |
| :--- | :--- | :--- |
| dateTarget | Object | The date target object. |
| dateRanges | Array | An array containing the range objects. |
| first | String | **Start** of the date range. |
| second | String | **End** of the date range. |



**Date target object**

```text
{
    "geospatialTargets": [
        {
            "definition": {
                "type": "GeometryCollection",
                "geometries": [
                    {
                        "type": "Polygon",
                        "coordinates": [
                            [
                                [
                                    17.9914856,
                                    59.32968705
                                ],
                                [
                                    18.08074951,
                                    59.34999583
                                ],
                                [
                                    18.13568115,
                                    59.30866518
                                ],
                                [
                                    18.08074951,
                                    59.28622753
                                ],
                                [
                                    17.9914856,
                                    59.32968705
                                ]
                            ]
                        ]
                    }
                ]
            }
        },
        {
            "definition": {
                "type": "GeometryCollection",
                "geometries": [
                    {
                        "type": "Polygon",
                        "coordinates": [
                            [
                                [
                                    17.93380737,
                                    59.24100683
                                ],
                                [
                                    17.93380737,
                                    59.27610573
                                ],
                                [
                                    18.06976318,
                                    59.27610573
                                ],
                                [
                                    18.06976318,
                                    59.24100683
                                ],
                                [
                                    17.93380737,
                                    59.24100683
                                ]
                            ]
                        ]
                    }
                ]
            }
        }
    ],
}
```

The polygons follow the format of [GeoJson](https://en.wikipedia.org/wiki/GeoJSON).



**Key value target object**

```text
{
    "keyValueTargets": [
        {
            "entries": {
                "key3": [
                    "value-3"
                ]
            },
            "notEntries": {}
        },
        // OR
        {
            "entries": {
                "key4": [
                    "value-4"
                ]
            },
            "notEntries": {}
        },
        // OR
        {
            "entries": {
                "key": [
                    "value"
                ],
                // AND
                "otherKey": [
                    "othervalue"
                ]
            },
            // AND NOT
            "notEntries": {
                "key2": [
                    "value-2"
                ]
            }
        }
    ]
}
```

* `OR` values are separated byt objects in the initial array.
* `AND` values are separated with **keys** within **entries**
* `AND-NOT`are speccified with `notEntries` as listed above.



**site target object**

```text
{
    "siteTarget": {
        "sites": [
            { "id": "6vjwynnz2ptrvdcc" }
            { "id": "6lk3nvdkaai8a3jn" }
        ]
    }
}
```

The `id` of the sites can be found at this endpoint: [/sites](http://docs.adnuntius.com/api/inventory/sites).

When posting targeting data only the id of the site is required.



**Ad unit matching label target object**

```text
{
    "adUnitMatchingLabelTargets": [
        {
            "matchingLabels": [
                "adunitLabel1"
            ]
        },
        {
            "matchingLabels": [
                "adunitLabel2"
            ]
        }
    ]
}
```

The ad unit matching labels has to be present on the ad unit for the matching label targeting to work.

For matching labels to work you will need to divide the targeting into separate objects as specified above.



**Category target object**

```text
{
    "categoryTargets": [
        {
            "categories": [
                "sport"
            ],
            "notCategories": []
        },
        // OR
        {
            "categories": [
                "color/blue"
            ],
            "notCategories": []
        },
        // OR
        {
            "categories": [
                "color/red/crimson",
                //AND
                "sports"
            ],
            // AND NOT
            "notCategories": [
                "andnot"
            ]
        }
    ]
}
```

* `OR` values are separated byt objects in the initial array.
* `AND` values are added within the array.
* `AND-NOT`are speccified with `notEntries` as listed above.



**Named location target object**

```text
{

    "namedLocationTarget": {
        "locations": [
            { "id": 1172995 },
            { "id": 9373443 }
        ]
    }
}
```

The `id` of the location can be found at this endpoint: [/location](http://docs.adnuntius.com/api/others/location).

When posting targeting data only the id of the location is required.



**Named location target object**

```text
{
    "dayPartingTargets": [
        {
            "daysOfWeek": [
                "TUESDAY",
                "FRIDAY",
                "WEDNESDAY",
                "SATURDAY",
                "MONDAY",
                "THURSDAY",
                "SUNDAY"
            ],
            "hoursOfDay": [
                1,
                19,
                20,
                5,
                21,
                22,
                23
            ],
            "timeZoneSetting": "SYSTEM"
        },
        {
            "daysOfWeek": [
                "TUESDAY",
                "WEDNESDAY",
                "MONDAY",
                "THURSDAY"
            ],
            "hoursOfDay": [
                2,
                3,
                23
            ],
            "timeZoneSetting": "USER"
        }
    ]
}
```

you can add multiple dayparts by adding multiple objects.

The daypart object is divided in these paramters:

| Name | Data type | Values |
| :--- | :--- | :--- |
| daysOfWeek | Array | "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY" |
| hoursOfDay | Array | An array containing numbers 0 for 00:00 - 00:59, 1 for 01:00 - 01:59 etc. up to 23 for 23:00 - 23:59. |
| timeZoneSetting | String | "USER" for user time zone and "SYSTEM" for the system time zone. |



**Retarget object**

```text
{
    "keywordTargets": [
        {
            //AND
            "keywords": [
                "games",
                "gambling"
            ],
            "notKeywords": []
        },
        {
            "keywords": [
                "car"
            ],
            "notKeywords": [
                "ferrari",
                "mazda"
            ]
        },
        {
            "keywords": [
                "sport"
            ],
            "notKeywords": []
        }
    ]
}
```

* `OR` values are separated byt objects in the initial array.
* `AND` values are added within the array.
* `AND-NOT`are speccified with `notEntries` as listed above.



**Retarget object**

```text
{
    "retargetingTargets": [
        {
            "entries": {
                "or-key": [
                    "or-value"
                ]
            },
            "notEntries": {}
        },
        // OR
        {
            "entries": {
                "the-key": [
                    "value"
                ],
                // AND
                "and-key": [
                    "and-value"
                ]
            },
            // AND NOT
            "notEntries": {
                "and-not-key": [
                    "and-not-value"
                ]
            }
        }
    ]
}
```

* `OR` values are separated byt objects in the initial array.
* `AND` values are added within the array.
* `AND-NOT`are speccified with `notEntries` as listed above.



**IP address target object**

```text
{
    "ipAddressTarget": {
        "addresses": [
            "205.112.45.0/24",
            "118.16.78.34"
        ]
    },
}
```

Contains `addresses` which is a comma seperated array of IP values. You can add multiple IP addresses by separating each individual one by a comma. For instance, inputting 118.16.78.34, 205.112.45.0/24 will match any of 118.16.78.34 and 205.112.45.0 through to 205.112.45.255. The IP targets follow the [CIDR](https://en.m.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation.



**site group target object**

```text
{
    "siteGroupTarget": {
        "siteGroups": [
            { "id": "8zh8lh7n81s6l2m7" },
            { "id": "j38bl01t2pbtmzkg" }
        ]
    }
}
```

The `id` of the sites can be found at this endpoint: [/sitegroups](http://docs.adnuntius.com/api/inventory/sitegroups).

When posting targeting data only the id of the site is required.

### Examples

**A `GET` request for a targeting object:**

```text
{
    "targeting": {
        "deviceTargets": [
            {
                "targetedBrands": [
                    "ACER"
                ],
                "targetedOSes": [
                    "ANDROID"
                ],
                "targetedDeviceTypes": [
                    "DESKTOP"
                ]
            },
            {
                "targetedBrands": [],
                "targetedOSes": [],
                "targetedDeviceTypes": [
                    "MOBILE"
                ]
            }
        ],
        "adUnitTarget": {
            "adUnits": [
                {
                    "id": "d5f6mxj3jbhytmzg",
                    "name": "demo.adnuntius.com - 300 x 250",
                    "url": "/api/v1/adunits/d5f6mxj3jbhytmzg"
                },
                {
                    "id": "jpbnjqy597pvygbm",
                    "name": "demo.adnuntius.com - 980x240 - Panorama 02",
                    "url": "/api/v1/adunits/jpbnjqy597pvygbm"
                }
            ]
        },
        "userSegmentTargets": [
            {
                "userSegments": [
                    {
                        "id": "xxxxxxxxxxxx",
                        "name": "Travel",
                        "description": "People interested in travel"
                    }
                ]
            },
            {
                "userSegments": [
                    {
                        "id": "xxxxxxxxxxxx",
                        "name": "culture",
                        "description": "People interested in culture"
                    }
                ]
            }
        ],
        "dateTarget": {
            "dateRanges": [
                            {
                    "first": "2018-01-02T00:00:00",
                    "second": "2018-01-10T23:30:00"
                },
                {
                    "first": "2018-01-11T00:00:00",
                    "second": "2018-01-12T00:00:00"
                },
                {
                    "first": "2018-01-11T00:00:00",
                    "second": "2018-01-11T23:30:00"
                }
            ],
            "timeZoneSetting": "SYSTEM"
        },
        "geospatialTargets": [
            {
                "definition": {
                    "type": "GeometryCollection",
                    "geometries": [
                        {
                            "type": "Polygon",
                            "coordinates": [
                                [
                                    [
                                        17.9914856,
                                        59.32968705
                                    ],
                                    [
                                        18.08074951,
                                        59.34999583
                                    ],
                                    [
                                        18.13568115,
                                        59.30866518
                                    ],
                                    [
                                        18.08074951,
                                        59.28622753
                                    ],
                                    [
                                        17.9914856,
                                        59.32968705
                                    ]
                                ]
                            ]
                        }
                    ]
                }
            },
            {
                "definition": {
                    "type": "GeometryCollection",
                    "geometries": [
                        {
                            "type": "Polygon",
                            "coordinates": [
                                [
                                    [
                                        17.93380737,
                                        59.24100683
                                    ],
                                    [
                                        17.93380737,
                                        59.27610573
                                    ],
                                    [
                                        18.06976318,
                                        59.27610573
                                    ],
                                    [
                                        18.06976318,
                                        59.24100683
                                    ],
                                    [
                                        17.93380737,
                                        59.24100683
                                    ]
                                ]
                            ]
                        }
                    ]
                }
            }
        ],
        "keyValueTargets": [
            {
                "entries": {
                    "key3": [
                        "value-3"
                    ]
                },
                "notEntries": {}
            },
            {
                "entries": {
                    "key4": [
                        "value-4"
                    ]
                },
                "notEntries": {}
            },
            {
                "entries": {
                    "key": [
                        "value"
                    ],
                    "otherKey": [
                        "othervalue"
                    ]
                },
                "notEntries": {
                    "key2": [
                        "value-2"
                    ]
                }
            }
        ],
        "siteTarget": {
            "sites": [
                {
                    "id": "6vjwynnz2ptrvdcc",
                    "name": "demo.adnuntius.com",
                    "url": "/api/v1/sites/6vjwynnz2ptrvdcc"
                },
                {
                    "id": "6lk3nvdkaai8a3jn",
                    "name": "Other site for My test account",
                    "url": "/api/v1/sites/6lk3nvdkaai8a3jn"
                }
            ]
        },
        "adUnitMatchingLabelTargets": [
            {
                "matchingLabels": [
                    "adunitLabel1"
                ]
            },
            {
                "matchingLabels": [
                    "adunitLabel2"
                ]
            }
        ],
        "categoryTargets": [
            {
                "categories": [
                    "sport"
                ],
                "notCategories": []
            },
            {
                "categories": [
                    "color/blue"
                ],
                "notCategories": []
            },
            {
                "categories": [
                    "color/red/crimson",
                    "sports"
                ],
                "notCategories": [
                    "andnot"
                ]
            }
        ],
        "namedLocationTarget": {
            "locations": [
                {
                    "id": 1172995,
                    "type": "CITY",
                    "name": "Norrköping",
                    "context": "Östergötland, Sweden, Europe"
                },
                {
                    "id": 9373443,
                    "type": "CITY",
                    "name": "Norrköping Ö",
                    "context": "Östergötland, Sweden, Europe"
                }
            ]
        },
        "dayPartingTargets": [
            {
                "daysOfWeek": [
                    "SATURDAY",
                    "WEDNESDAY",
                    "THURSDAY",
                    "FRIDAY",
                    "SUNDAY",
                    "MONDAY",
                    "TUESDAY"
                ],
                "hoursOfDay": [
                    0,
                    16,
                    1,
                    17
                ],
                "timeZoneSetting": "SYSTEM"
            }
        ],
        "retargetingTargets": [
            {
                "entries": {
                    "or-key": [
                        "or-value"
                    ]
                },
                "notEntries": {}
            },
            {
                "entries": {
                    "the-key": [
                        "value"
                    ],
                    "and-key": [
                        "and-value"
                    ]
                },
                "notEntries": {
                    "and-not-key": [
                        "and-not-value"
                    ]
                }
            }
        ],
        "keywordTargets": [
            {
                "keywords": [
                    "games",
                    "gambling"
                ],
                "notKeywords": []
            },
            {
                "keywords": [
                    "car"
                ],
                "notKeywords": []
            },
            {
                "keywords": [
                    "sport"
                ],
                "notKeywords": []
            }
        ],
        "ipAddressTarget": {
            "addresses": [
                "205.112.45.0/24",
                "118.16.78.34"
            ]
        },
        "siteGroupTarget": {
            "siteGroups": [
                {
                    "id": "8zh8lh7n81s6l2m7",
                    "name": "Additional site group",
                    "url": "/api/v1/sitegroups/8zh8lh7n81s6l2m7"
                },
                {
                    "id": "j38bl01t2pbtmzkg",
                    "name": "General Site Group",
                    "url": "/api/v1/sitegroups/j38bl01t2pbtmzkg"
                }
            ]
        }
    }
}
```

