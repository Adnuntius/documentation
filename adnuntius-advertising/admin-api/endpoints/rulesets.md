# /rulesets

Rulesets let you set floor prices that apply across inventory rather than on a single ad unit. A ruleset is created on its own, and is then applied to a Publisher (Earnings Account), a Site or an Ad Unit. See [Site Rulesets](https://claude.ai/adnuntius-advertising/admin-ui/inventory/site-rulesets) for the Admin UI equivalent.

Updating rulesets requires the `MANAGE_PUBLISHING` or `AX_PUBLISHER` permission.

### GET

A `GET` request can always be filtered by the get [parameters](https://claude.ai/adnuntius-advertising/admin-api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/rulesets?context=<context>
```

**Example GET request for a single ruleset:**

```http
GET https://api.adnuntius.com/api/v1/rulesets/<id>?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true` as a parameter to the `GET` query

In addition to the standard parameters, the following parameter is supported:

| Name | Restriction | Description                                                     |
| ---- | ----------- | --------------------------------------------------------------- |
| team | String      | Returns only the rulesets that the given team id has access to. |

`HEAD` can be used to confirm that a ruleset exists, returning `200 OK` or `404 NOT FOUND`:

```http
HEAD https://api.adnuntius.com/api/v1/rulesets/<id>?context=<context>
```

**Example GET response:**

```javascript
{
    "id": "mm7mr2x6jvkh8083",
    "objectState": "ACTIVE",
    "validationWarnings": [],
    "network": {
        "id": "network_1",
        "name": "My Network",
        "objectState": "ACTIVE",
        "url": "/api/v1/networks/network_1"
    },
    "name": "Base",
    "type": "INVENTORY",
    "teams": [
        {
            "id": "vkjwzrvftkctngcq",
            "name": "My Publisher Team",
            "objectState": "ACTIVE",
            "url": "/api/v1/teams/vkjwzrvftkctngcq",
            "type": "AX_PUBLISHER"
        }
    ],
    "floorPrice": {
        "currency": "SEK",
        "amount": 8
    },
    "advertiserFloorPrices": [],
    "targetingTypes": [],
    "layouts": [],
    "layoutCategories": [],
    "sizes": [],
    "url": "/api/v1/rulesets/mm7mr2x6jvkh8083"
}
```

The `network`, `validationWarnings` and `url` fields, together with the create/update user and time fields, are set by the system and cannot be posted.

### POST

**Example POST object:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "Base floor",
    "description": "Minimum CPM across the publisher's inventory",
    "type": "INVENTORY",
    "teams": [
        { "id": "vkjwzrvftkctngcq" }
    ],
    "floorPrice": {
        "currency": "SEK",
        "amount": 8
    },
    "advertiserFloorPrices": [
        {
            "advertiser": { "id": "6vjwynnz2ptrvdcc" },
            "floorPrice": { "currency": "SEK", "amount": 12 }
        },
        {
            "team": { "id": "906f32g8x5kbmhkw" },
            "floorPrice": { "currency": "SEK", "amount": 15 }
        }
    ]
}
```

The ruleset object consists of the following:

| Name                  | Required | Restriction                                           | Description                                                                                                                                |
| --------------------- | -------- | ----------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| objectState           |          | ACTIVE, INACTIVE, HIDDEN (String)                     | State of the object, will disable or delete the object.                                                                                    |
| name                  | Yes      | String                                                | The name of the ruleset.                                                                                                                   |
| description           |          | String                                                | A description of the ruleset.                                                                                                              |
| type                  | Yes      | INVENTORY, TARGETING, SIZE, LAYOUT, AUDIENCE (String) | Determines what the floor price applies to. See the table below.                                                                           |
| teams                 |          | Array                                                 | An array of objects with a Key `id` for the id of each team that should have access to the ruleset. See the note on team membership below. |
| floorPrice            |          | Object                                                | The floor price (CPM) the ruleset sets. An object containing a `currency` and an `amount`. Cannot be negative.                             |
| advertiserFloorPrices |          | Array                                                 | Floor prices that apply only to specific advertisers or advertiser teams. Array of objects listed below.                                   |
| targetingTypes        |          | Array                                                 | The targeting types the floor price applies to. Only accepted when `type` is `TARGETING`.                                                  |
| sizes                 |          | Array                                                 | The creative sizes the floor price applies to. Used when `type` is `SIZE`. Array of objects listed below.                                  |
| layouts               |          | Array                                                 | An array of objects with a Key `id` for the id of each layout the floor price applies to. Only accepted when `type` is `LAYOUT`.           |
| layoutCategories      |          | Array                                                 | Layout categories the floor price applies to. Only accepted when `type` is `LAYOUT`. See the table below.                                  |

Object references may be posted either as an object with an `id` key, as shown above, or as a plain id string — `"teams": ["vkjwzrvftkctngcq"]` and `"teams": [{ "id": "vkjwzrvftkctngcq" }]` are equivalent.

#### Ruleset types

| Type      | Description                                                                                                                                                                                            |
| --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| INVENTORY | Sets a floor price across all the inventory the ruleset is applied to, optionally with a different floor per advertiser.                                                                               |
| TARGETING | Sets a floor price for campaigns that use particular targeting types. A campaign using one of the listed targeting types cannot bid below this floor. Requires at least one entry in `targetingTypes`. |
| SIZE      | Sets a floor price for particular creative sizes, listed in `sizes`.                                                                                                                                   |
| LAYOUT    | Sets a floor price for particular layouts, listed in `layouts` and/or matched by `layoutCategories`.                                                                                                   |
| AUDIENCE  | Reserved. Accepted by the API but not currently used by the ad server or available in the Admin UI.                                                                                                    |

#### targetingTypes

A `TARGETING` ruleset lists the ad server's targeting type names, for example:

`USER_SEGMENT`, `FIRST_PARTY_AUDIENCE`, `THIRD_PARTY_AUDIENCE`, `SEMANTIC_CATEGORY`, `CATEGORY`, `KEYWORD`, `KEY_VALUE`, `NAMED_LOCATION`, `GEOSPATIAL`, `DEVICE_PROPERTY`, `DOMAIN_NAME`, `DAY_PARTING`, `DATE`, `ARTICLE`, `WEATHER`, `SITE_COUNTRY`, `CREATIVE_SIZE`, `CREATIVE_TYPE`, `AD_UNIT_MATCHING_LABEL`, `AD_UNIT_VIEWABILITY`.

See the [Targeting object](https://claude.ai/adnuntius-advertising/admin-api/targeting-object) documentation for what each targeting type does.

#### advertiserFloorPrices object

| Name       | Required | Restriction | Description                                                                                                              |
| ---------- | -------- | ----------- | ------------------------------------------------------------------------------------------------------------------------ |
| advertiser | Yes\*    | Object      | An object with a Key `id` for the id of the advertiser the floor price applies to.                                       |
| team       | Yes\*    | Object      | An object with a Key `id` for the id of a team; the floor price then applies to every advertiser belonging to that team. |
| floorPrice | Yes      | Object      | An object containing a `currency` and an `amount`. Cannot be negative.                                                   |

\* Each entry must specify either `advertiser` or `team`.

#### sizes object

| Name       | Required | Restriction | Description                                                          |
| ---------- | -------- | ----------- | -------------------------------------------------------------------- |
| dimensions | Yes      | Array       | The size as two numbers, `[width, height]`, for example `[728, 90]`. |

**Example SIZE ruleset:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "Panorama floor",
    "type": "SIZE",
    "teams": [
        { "id": "vkjwzrvftkctngcq" }
    ],
    "floorPrice": {
        "currency": "SEK",
        "amount": 11
    },
    "sizes": [
        { "dimensions": [728, 90] },
        { "dimensions": [980, 240] }
    ]
}
```

#### layoutCategories

A `LAYOUT` ruleset can select layouts by category instead of, or in addition to, listing them explicitly in `layouts`. A category applies to every layout matching it, including layouts created later.

| Value        | Description                  |
| ------------ | ---------------------------- |
| FULL\_PAGE   | Full page layouts.           |
| POLITICAL    | Layouts marked as political. |
| HTML         | HTML layouts.                |
| VAST         | VAST / video layouts.        |
| NATIVE       | Native layouts.              |
| THIRD\_PARTY | Third party layouts.         |
| STANDARD     | Standard layouts.            |
| DATA         | Data layouts.                |
| IMAGE        | Image layouts.               |

**Example LAYOUT ruleset:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "High impact floor",
    "type": "LAYOUT",
    "teams": [
        { "id": "906f32g8x5kbmhkw" }
    ],
    "floorPrice": {
        "currency": "SEK",
        "amount": 80
    },
    "layouts": [
        { "id": "c6x0k927fltfr3s5" }
    ],
    "layoutCategories": [
        "FULL_PAGE"
    ]
}
```

**Example TARGETING ruleset:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "Semantic targeting floor",
    "type": "TARGETING",
    "teams": [
        { "id": "vkjwzrvftkctngcq" }
    ],
    "floorPrice": {
        "currency": "USD",
        "amount": 10
    },
    "targetingTypes": [
        "SEMANTIC_CATEGORY",
        "USER_SEGMENT"
    ]
}
```

### Editing a ruleset

`POST` and `PUT` are treated the same and will create the ruleset if it does not exist, or update it if it does. To edit an existing ruleset, post the fields you want to change to the ruleset's id:

```http
POST https://api.adnuntius.com/api/v1/rulesets/<id>?context=<context>
```

Posting without an id expects an array of ruleset objects and creates or updates all of them in a single transaction:

```http
POST https://api.adnuntius.com/api/v1/rulesets?context=<context>
```

The [field update rules](https://claude.ai/adnuntius-advertising/admin-api/api-requests) from the introduction section apply:

* A field that is not included in the posted json is not modified.
* Collections such as `teams`, `advertiserFloorPrices`, `targetingTypes`, `sizes`, `layouts` and `layoutCategories` are replaced with the posted value. Posting an empty array clears the collection — there is no way to add a single entry without sending the full list.
* Rulesets cannot be deleted. Set `objectState` to `INACTIVE` or `HIDDEN` instead.

**Example: raise the floor price on an existing ruleset**

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "floorPrice": { "currency": "SEK", "amount": 12 }
}' "https://api.adnuntius.com/api/v1/rulesets/mm7mr2x6jvkh8083?context=network_1" | jq .
```

**Example: remove all advertiser specific floor prices**

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "advertiserFloorPrices": []
}' "https://api.adnuntius.com/api/v1/rulesets/mm7mr2x6jvkh8083?context=network_1" | jq .
```

#### Team membership

The `teams` field controls who has access to the ruleset, and is treated differently from the other fields:

* With the `MANAGE_SYSTEM` permission, any team membership can be changed.
* With `AX_PUBLISHER_ADMIN` or `AX_PUBLISHER_TEAM_ADMIN`, only that user's own `AX_PUBLISHER` teams can be added or removed; other memberships are left untouched.
* Without any of those permissions, a posted `teams` field is ignored.

A `GET` only returns the teams that are visible to the requesting user, so a ruleset may belong to more teams than a response shows. Take care when posting back a ruleset you have just fetched.

### Applying a ruleset

A ruleset has no effect until it is applied to a Publisher (Earnings Account), a Site or an Ad Unit. The fields are the same on all three endpoints — [/earningsaccounts](https://claude.ai/adnuntius-advertising/admin-api/endpoints/earningsaccounts), [/sites](https://claude.ai/adnuntius-advertising/admin-api/endpoints/sites) and [/adunits](https://claude.ai/adnuntius-advertising/admin-api/endpoints/adunits):

| Name              | Restriction | Description                                                |
| ----------------- | ----------- | ---------------------------------------------------------- |
| siteRuleset       | Object      | The single `INVENTORY` ruleset that applies at this level. |
| targetingRulesets | Array       | The `TARGETING` rulesets that apply at this level.         |
| sizeRulesets      | Array       | The `SIZE` rulesets that apply at this level.              |
| layoutRulesets    | Array       | The `LAYOUT` rulesets that apply at this level.            |

**Example:**

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "siteRuleset": { "id": "mm7mr2x6jvkh8083" },
    "layoutRulesets": [ { "id": "x5cb23fj3qkdxt2s" } ]
}' "https://api.adnuntius.com/api/v1/sites/3yfk2x7dqpvycjjb?context=network_1" | jq .
```

#### How the floor price is resolved

* The inventory ruleset is taken from the first level that has one, searching Ad Unit, then Site, then Publisher. A site ruleset therefore hides the publisher's rather than adding to it.
* An Ad Unit's own `floorPrice` replaces the inventory ruleset for that ad unit rather than adding to it.
* Targeting, size and layout rulesets attach as lists at every level and combine rather than overriding.
* The ad server charges the highest floor price that applies to the particular campaign, taking into account its advertiser, its matched targeting, and its creative's size and layout.

### Validation

#### Validation errors

The ruleset is rejected and not persisted if:

| Field                            | Reason                                                                       |
| -------------------------------- | ---------------------------------------------------------------------------- |
| name                             | Missing or empty.                                                            |
| floorPrice                       | Negative.                                                                    |
| advertiserFloorPrices.advertiser | An entry specifies neither an `advertiser` nor a `team`.                     |
| advertiserFloorPrices.floorPrice | An entry has no floor price, or a negative one.                              |
| sizeFloorPrices.dimensions       | An entry in `sizes` has no `dimensions`.                                     |
| targetingTypes                   | Empty on a `TARGETING` ruleset, or non-empty on a ruleset of any other type. |
| layouts                          | Non-empty on a ruleset whose type is not `LAYOUT`.                           |
| layoutCategories                 | Non-empty on a ruleset whose type is not `LAYOUT`.                           |

#### Validation warnings

The ruleset is saved but returns a warning in `validationWarnings` if:

* Its `objectState` is not `ACTIVE`.
* It has no `floorPrice`.
* It is a `SIZE` ruleset with no `sizes`.
* It is a `LAYOUT` ruleset with neither `layouts` nor `layoutCategories`.
* It has no teams, or none of its teams are active.
* One of its `advertiserFloorPrices` refers to an advertiser that is not active.
