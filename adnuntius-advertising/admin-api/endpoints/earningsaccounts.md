# /earningsaccounts

## /earningsaccounts

### GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/earningsaccounts?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

### POST

**Example POST object:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "Default Earningsaccount",
    "description": "earningsaccount",
    "labels": [
        "Label1",
        "Label2"
    ],
    "address": {
        "addressLine1": "Address 1",
        "addressLine2": "Address 2",
        "city": "City",
        "state": "State",
        "postCode": "Postcode",
        "country": "SE"
    },
    "revenueShare": 10,
    "siteRuleset": { "id": "mm7mr2x6jvkh8083" },
    "targetingRulesets": [
        { "id": "vjr8kd02mnxpq7fs" }
    ],
    "sizeRulesets": [
        { "id": "h3nkw81ltbqz59dm" }
    ],
    "layoutRulesets": [
        { "id": "x5cb23fj3qkdxt2s" }
    ]
}
```

The earnings account object consists of the following:

| Name              | Required | Restriction              | Description                                                                                |
| ----------------- | -------- | ------------------------ | ------------------------------------------------------------------------------------------ |
| objectState       |          | ACTIVE, INACTIVE, HIDDEN | State of the object, will disable or delete the object.                                    |
| name              | Yes      | String                   | The name of the site group                                                                 |
| description       |          | String                   | A desccription of the group                                                                |
| labels            |          | Array                    | For searching purposes.                                                                    |
| addressline1      |          | String                   | Address line 1 to the acount owner                                                         |
| addressline2      |          | String                   | Address line 2 to the acount owner                                                         |
| city              |          | String                   | City of the acount owner                                                                   |
| state             |          | String                   | State of the acount owner                                                                  |
| postCode          |          | String                   | Postcode of the acount owner                                                               |
| country           |          | String                   | Country of the acount owner                                                                |
| Revenue Share     |          | Number                   | If you share revenue across a network this can be used to calculate network owner share    |
| siteRuleset       |          | Object                   | An object with a Key `id` for the ID of the `INVENTORY` ruleset to apply to the publisher. |
| targetingRulesets |          | Array                    | An array of objects with a Key `id` for the ID of each `TARGETING` ruleset to apply.       |
| sizeRulesets      |          | Array                    | An array of objects with a Key `id` for the ID of each `SIZE` ruleset to apply.            |
| layoutRulesets    |          | Array                    | An array of objects with a Key `id` for the ID of each `LAYOUT` ruleset to apply.          |

#### Adding a ruleset

Rulesets set floor prices across inventory, and are created separately at the [/rulesets](https://claude.ai/adnuntius-advertising/admin-api/endpoints/rulesets) endpoint. Once a ruleset exists, apply it to an earnings account by posting its id to one of the four fields above. The field must match the ruleset's `type`.

Applying a ruleset here is the broadest option available: it covers every site and ad unit belonging to the publisher, unless a lower level overrides it.

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "siteRuleset": { "id": "mm7mr2x6jvkh8083" }
}' "https://api.adnuntius.com/api/v1/earningsaccounts/jy2drpnsm2htzr3z?context=network_1" | jq .
```

An earnings account takes at most one `siteRuleset`, and any number of targeting, size and layout rulesets. The three array fields are replaced by whatever you post, so include every ruleset you want the publisher to keep:

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "targetingRulesets": [
        { "id": "vjr8kd02mnxpq7fs" },
        { "id": "q7wl3mz5rkbn08tc" }
    ]
}' "https://api.adnuntius.com/api/v1/earningsaccounts/jy2drpnsm2htzr3z?context=network_1" | jq .
```

To remove a ruleset, post the array without it, or post an empty array to remove all of them:

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "targetingRulesets": []
}' "https://api.adnuntius.com/api/v1/earningsaccounts/jy2drpnsm2htzr3z?context=network_1" | jq .
```

The `siteRuleset` on an earnings account is used only when neither the ad unit nor its site has one of its own — a site ruleset hides the publisher's rather than adding to it. Targeting, size and layout rulesets combine with those applied to the publisher's sites and ad units, and the ad server charges the highest floor price that applies. See [/rulesets](https://claude.ai/adnuntius-advertising/admin-api/endpoints/rulesets) for the full precedence rules.
