# /sites

### GET

A `GET` request can always be filtered by the get [parameters](http://docs.adnuntius.com/api/api-requests) defined in the introduction section of the api documentation.

**Example GET request:**

```http
GET https://api.adnuntius.com/api/v1/sites?context=<context>
```

in order to see `HIDDEN` objects you will need to send `includeHidden=true`as a parameter to the `GET` query

### POST

**Example POST object:**

```javascript
{
    "objectState": "ACTIVE",
    "name": "demo.adnuntius.com",
    "description": "Demo",
    "siteUrl": "http://demo.adnuntius.com",
    "labels": [
        "Label1",
        "Label2"
    ],
    "earningsAccount": { "id": "jy2drpnsm2htzr3z" },
    "siteGroup": { "id": "j38bl01t2pbtmzkg" },
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

| Name              | Required | Restriction              | Description                                                                                |
| ----------------- | -------- | ------------------------ | ------------------------------------------------------------------------------------------ |
| objectState       |          | ACTIVE, INACTIVE, HIDDEN | State of the object, will disable or delete the object.                                    |
| name              | Yes      | String                   | The name of the site group                                                                 |
| description       |          | String                   | A desccription of the group                                                                |
| siteUrl           |          | String                   | URL to the site in question                                                                |
| labels            |          | Array                    | For searching purposes.                                                                    |
| earningsAccount   |          | Object                   | An object with a Key `id` for the ID of the earnings account that the site is a member of. |
| siteGroup         |          | Object                   | An object with a Key `id` for the ID of the site group that the site is a member of.       |
| siteRuleset       |          | Object                   | An object with a Key `id` for the ID of the `INVENTORY` ruleset to apply to the site.      |
| targetingRulesets |          | Array                    | An array of objects with a Key `id` for the ID of each `TARGETING` ruleset to apply.       |
| sizeRulesets      |          | Array                    | An array of objects with a Key `id` for the ID of each `SIZE` ruleset to apply.            |
| layoutRulesets    |          | Array                    | An array of objects with a Key `id` for the ID of each `LAYOUT` ruleset to apply.          |

#### Adding a ruleset

Rulesets set floor prices across inventory, and are created separately at the [/rulesets](https://claude.ai/adnuntius-advertising/admin-api/endpoints/rulesets) endpoint. Once a ruleset exists, apply it to a site by posting its id to one of the four fields above. The field must match the ruleset's `type`.

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "siteRuleset": { "id": "mm7mr2x6jvkh8083" }
}' "https://api.adnuntius.com/api/v1/sites/6vjwynnz2ptrvdcc?context=network_1" | jq .
```

A site takes at most one `siteRuleset`, and any number of targeting, size and layout rulesets. The three array fields are replaced by whatever you post, so include every ruleset you want the site to keep:

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "layoutRulesets": [
        { "id": "x5cb23fj3qkdxt2s" },
        { "id": "j95npgz8srbsf06y" }
    ]
}' "https://api.adnuntius.com/api/v1/sites/6vjwynnz2ptrvdcc?context=network_1" | jq .
```

To remove a ruleset, post the array without it, or post an empty array to remove all of them:

```bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -X POST -d '{
    "layoutRulesets": []
}' "https://api.adnuntius.com/api/v1/sites/6vjwynnz2ptrvdcc?context=network_1" | jq .
```

A site's `siteRuleset` takes precedence over the one on its Earnings Account rather than adding to it, so a site ruleset hides the publisher's. Targeting, size and layout rulesets combine with those on the Earnings Account and on the site's ad units, and the ad server charges the highest floor price that applies. See [/rulesets](https://claude.ai/adnuntius-advertising/admin-api/endpoints/rulesets) for the full precedence rules.
