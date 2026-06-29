# POST /advertisers — Political Advertising

How to create or update an Advertiser record with the additional fields required for TTPA-compliant political advertising, including political budgets, entity types, and controlling/paying entity declarations.

ℹThis page extends the standard [POST /advertisers](https://docs.adnuntius.com/adnuntius-advertising/admin-api/endpoints/advertisers) documentation with the additional fields required for political advertising under EU Regulation 2024/900 (TTPA). All standard advertiser fields still apply.

### Endpoint <a href="#request" id="request"></a>

POSThttps://api.adnuntius.com/api/v1/advertisers/{advertiserID}?context={contextID}💡To create a new advertiser, generate a unique `id` and use it as both the path parameter and in the request body. To update an existing advertiser, use its existing ID. You can retrieve your `context` ID and available `ownerTeam` IDs from the [interactive API explorer](https://api.adnuntius.com).

### Core Fields <a href="#fields-core" id="fields-core"></a>

Standard advertiser fields. For political advertising, the fields marked political required are mandatory in addition to the standard required fields.

| Field           | Type   | Required           | Description                                                                                  |
| --------------- | ------ | ------------------ | -------------------------------------------------------------------------------------------- |
| `id`            | string | Required           | Unique ID for the advertiser. Use an existing ID to update, or generate a new one to create. |
| `name`          | string | Required           | Display name of the advertiser.                                                              |
| `ownerTeam.id`  | string | Required           | ID of the team this advertiser belongs to. Retrieve available team IDs from the API.         |
| `legalName`     | string | Political required | Full registered legal name of the sponsor. Displayed in the TTPA transparency notice.        |
| `type`          | enum   | Political required | Entity type of the advertiser. See Type Reference below.                                     |
| `address`       | object | Political required | Registered address. See Address fields below.                                                |
| `vatId`         | string | Political required | VAT or company registration number. Required for TTPA transparency notice.                   |
| `objectState`   | enum   | Optional           | `ACTIVE` or `INACTIVE`. Defaults to `ACTIVE`.                                                |
| `contact`       | string | Optional           | Name of the contact person.                                                                  |
| `email`         | string | Optional           | Contact email address.                                                                       |
| `phone`         | string | Optional           | Contact phone number.                                                                        |
| `advertiserUrl` | string | Optional           | Public website URL of the advertiser. Included in the transparency notice.                   |

#### Address Object <a href="#fields-address" id="fields-address"></a>

| Field          | Type   | Required           | Description                                              |
| -------------- | ------ | ------------------ | -------------------------------------------------------- |
| `addressLine1` | string | Political required | Street address line 1.                                   |
| `addressLine2` | string | Optional           | Street address line 2.                                   |
| `city`         | string | Political required | City.                                                    |
| `state`        | string | Optional           | State or region.                                         |
| `postCode`     | string | Political required | Postal code.                                             |
| `country`      | string | Political required | ISO 3166-1 alpha-2 country code (e.g. `SE`, `DE`, `NO`). |

### Political Budget Fields <a href="#fields-political" id="fields-political"></a>

The `politicalBudgets` array links the advertiser to one or more elections and declares the total budget and topic-level budgets required by the TTPA transparency notice.

⚠Budget figures must represent the **total spend across all channels** for the election or topic, excluding VAT. This includes production costs and all other benefits received. You must obtain the `election.id` from the API before creating the advertiser — see the [API explorer](https://api.adnuntius.com) or contact your Adnuntius account manager.

| Field                                     | Type   | Required           | Description                                                                                                                                                                                                            |
| ----------------------------------------- | ------ | ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `politicalBudgets`                        | array  | Political required | Array of election budget objects. One entry per election the advertiser is participating in.                                                                                                                           |
| `politicalBudgets[].election.id`          | string | Required           | ID of the election. Retrieve from the elections endpoint.                                                                                                                                                              |
| `politicalBudgets[].totalBudget`          | object | Required           | Total budget for this election across all channels and topics, excl. VAT.                                                                                                                                              |
| `politicalBudgets[].totalBudget.currency` | string | Required           | ISO 4217 currency code (e.g. `EUR`, `SEK`, `NOK`).                                                                                                                                                                     |
| `politicalBudgets[].totalBudget.amount`   | number | Required           | Total budget amount as a number.                                                                                                                                                                                       |
| `politicalBudgets[].campaigns`            | object | Optional           | Topic-level budgets as a key/value map. The key is the topic name (e.g. `"Better health services"`); the value is a budget object with `currency` and `amount`. Displayed as topic budgets in the transparency notice. |

### Entities — Controlling & Paying <a href="#fields-entities" id="fields-entities"></a>

The `entities` array declares any controlling or paying entities that differ from the advertiser (sponsor). If left as an empty array, the advertiser is assumed to be both the controlling and paying entity — this will be reflected in the transparency notice.

ℹUnder the TTPA, both the **controlling entity** (who directs the campaign) and the **paying entity** (who funds it) must be disclosed if they differ from the sponsor. Separate entries with `"type": "CONTROLLING"` and `"type": "PAYING"` can be used when these are different parties.

| Field                     | Type   | Required | Description                                                                                                                             |
| ------------------------- | ------ | -------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| `entities`                | array  | Optional | Array of entity declarations. Leave as `[]` if the advertiser is the sole sponsor, payer, and controller.                               |
| `entities[].type`         | enum   | Required | Role of this entity. Must be `CONTROLLING` or `PAYING`.                                                                                 |
| `entities[].legalEntity`  | enum   | Required | Entity type of this party. See Type Reference. Note: the field is named `legalEntity` in entities (vs. `type` at the advertiser level). |
| `entities[].legalName`    | string | Required | Full registered legal name.                                                                                                             |
| `entities[].contactEmail` | string | Optional | Contact email for this entity.                                                                                                          |
| `entities[].url`          | string | Optional | Public website URL.                                                                                                                     |
| `entities[].vatId`        | string | Optional | VAT or registration number.                                                                                                             |
| `entities[].address`      | object | Optional | Address of this entity. Same structure as the advertiser address object.                                                                |

### Type Reference <a href="#entity-types" id="entity-types"></a>

#### Advertiser / Entity Type (`type` / `legalEntity`)

Used as `type` at the advertiser level and as `legalEntity` within the `entities` array.

CORPORATE\_ENTITY\_PUBLICCORPORATE\_ENTITY\_PRIVATEPOLITICAL\_PARTYINDIVIDUAL

| Value                      | Description                                                                                                                                                                                          |
| -------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `CORPORATE_ENTITY_PUBLIC`  | A publicly owned or state-controlled legal entity (e.g. a public broadcaster, government body, or state-owned company).                                                                              |
| `CORPORATE_ENTITY_PRIVATE` | A privately owned legal entity (e.g. a limited company, NGO, or association). Most commercial sponsors use this value.                                                                               |
| `POLITICAL_PARTY`          | A registered political party.                                                                                                                                                                        |
| `INDIVIDUAL`               | A natural person — e.g. an individual candidate. Note: personal data for individuals will be publicly displayed in the transparency notice. Ensure appropriate legal basis exists before submitting. |

#### Entity Role Type (`entities[].type`)

CONTROLLINGPAYING

| Value         | Description                                                                                                                                        |
| ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| `CONTROLLING` | The entity that ultimately directs or controls the political advertising campaign — e.g. the national party controlling a local branch's campaign. |
| `PAYING`      | The entity that funds the campaign, if different from the sponsor.                                                                                 |

### Minimal Political Advertiser Example <a href="#example-minimal" id="example-minimal"></a>

The minimum fields required to create a TTPA-compliant advertiser where the sponsor, payer, and controller are all the same entity.

JSONCopy

```
{
  "id":          "your-unique-id-here",
  "name":        "Moderaterna Solna",
  "legalName":   "Moderata Samlingspartiet i Solna",
  "type":        "POLITICAL_PARTY",
  "vatId":       "8152002450",
  "advertiserUrl": "https://moderaterna.se",
  "ownerTeam":   { "id": "your-team-id" },
  "address": {
    "addressLine1": "Stadshusgången 2",
    "city":         "Solna",
    "postCode":     "17145",
    "country":      "SE"
  },
  "politicalBudgets": [
    {
      "election": { "id": "your-election-id" },
      "totalBudget": { "currency": "SEK", "amount": 50000 }
    }
  ],
  "entities": []  // advertiser is also the controlling and paying entity
}
```

### Full Example — With Separate Controlling Entity <a href="#example-full" id="example-full"></a>

A complete example where a national party (the controlling entity) runs a campaign on behalf of a local branch (the sponsor), with multiple topic budgets declared.

JSONCopy

```
{
  "id":            "q75s13gfrr11sc0v",
  "objectState":   "ACTIVE",
  "name":          "Adnuntius Nordics",
  "legalName":     "Adnuntius Nordics AB",
  "type":          "CORPORATE_ENTITY_PRIVATE",
  "vatId":         "123456789",
  "contact":       "Mikael Calamnius",
  "email":         "mikael@adnuntius.com",
  "phone":         "0702599331",
  "advertiserUrl": "https://adnun.net",
  "ownerTeam":     { "id": "5bmxj9hww6dbj573" },
  "address": {
    "addressLine1": "Henrik Ibsens gate 100",
    "city":         "Norrköping",
    "postCode":     "60208",
    "country":      "SE"
  },
  "politicalBudgets": [
    {
      "election": { "id": "k3j70g0h8l9d" },
      "totalBudget": {
        "currency": "EUR",
        "amount":   120
      },
      "campaigns": {
        // topic name → budget object
        "Better health services": {
          "currency": "EUR",
          "amount":   80
        },
        "Education reform": {
          "currency": "EUR",
          "amount":   40
        }
      }
    }
  ],
  "entities": [
    {
      "type":        "CONTROLLING",  // role of this entity
      "legalEntity": "CORPORATE_ENTITY_PUBLIC",  // entity type
      "legalName":   "Example National Party",
      "contactEmail": "contact@example.com",
      "url":         "https://example.com",
      "vatId":       "123456789",
      "address": {
        "addressLine1": "Party HQ Street 1",
        "city":         "Stockholm",
        "state":        "Stockholm County",
        "postCode":     "11122",
        "country":      "SE"
      }
    },
    {
      "type":        "PAYING",  // separate paying entity
      "legalEntity": "CORPORATE_ENTITY_PRIVATE",
      "legalName":   "Campaign Finance Ltd",
      "contactEmail": "finance@example.com",
      "vatId":       "987654321",
      "address": {
        "addressLine1": "Finance Street 5",
        "city":         "Gothenburg",
        "postCode":     "41101",
        "country":      "SE"
      }
    }
  ]
}
```
