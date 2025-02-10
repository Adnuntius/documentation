# /article2

## POST

**Example POST object:**

```http
POST https://api.adnuntius.com/api/v1/targetingquery/article2?context=<context>
```

You can also add a targeting object in the post payload to narrow down your result to specific sites or publishers. Read more about targeting objects [here](../targeting-object.md).

```
{
    "publisherTarget": {
        "earningsAccounts": [],
        "negated": false
    },
    "adUnitTarget": {
        "adUnits": [],
        "negated": false
    },
    "siteTarget": {
        "sites": [],
        "negated": false
    },
    "siteGroupTarget": {},
    "siteCountryTarget": {},
    "adUnitMatchingLabelTargets": [],
    "thirdPartyAudienceTargets": [],
    "userSegmentTargets": [],
    "categoryTargets": [],
    "geospatialTargets": [],
    "namedLocationTarget": {
        "locations": [],
        "negated": false
    },
    "deviceTargets": [],
    "keywordTargets": [],
    "keyValueTargets": [],
    "viewabilityTarget": {
        "viewability": null
    },
    "retargetingTargets": [],
    "dayPartingTargets": [],
    "dateTarget": {
        "dateRanges": [],
        "timeZoneSetting": "USER"
    },
    "articleTarget": {
        "urls": []
    },
    "domainNameTarget": {
        "names": [],
        "negated": false
    },
    "ipAddressTarget": {
        "addresses": []
    }
}
```



<table><thead><tr><th width="159">Parameter</th><th width="133">Required</th><th>Restrictions</th><th>Description</th></tr></thead><tbody><tr><td>pageSize</td><td>yes</td><td>Number</td><td>The amount of results to get back.</td></tr><tr><td>sentence</td><td>yes</td><td>String</td><td>A url encoded string of your search sentence.</td></tr><tr><td>thresholdScore</td><td>yes</td><td>Number</td><td>A decimal number of the closeness to your sentence you want to be, it ranges from 0 - 1 where 1 is exactly similar, and 0 is not very similar.</td></tr></tbody></table>

