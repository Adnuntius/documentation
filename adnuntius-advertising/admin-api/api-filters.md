# API Filters

This section describes how to include filters with your API queries. Examples usages are:

* Returning all Ad Units with a name that contains `"footer"`
* Returning all Line Items that started delivering after `2021/01/01`
* Returning all Line Items in a `RUNNING` or `ENDED` state

## Example Queries

This introduces the filtering capabilities of the API with some concrete examples. A full description of all the available parameters is provided in the next section.

### Return all Ad Units with a `name` that contains `"footer"`

This makes use of the `filterBy` and `filterByLike` query parameters.

```text
https://api.adnuntius.com/api/v1/adunits?auth_token=TOKEN&filterBy=name&filterByLike=footer
```

### Return all Line Items that started delivering after `2021/01/01`

This makes use of the `where` query parameter.

```text
https://api.adnuntius.com/api/v1/lineitems?auth_token=TOKEN&where=startedRunningDate>2021-01-01
```

Conditions can be added to the `where` clause by using the `;` separator character. So if we wanted to search for Line Items that started delivering _between_ `2021-01-01` and `2021-06-01` we could use:

```text
https://api.adnuntius.com/api/v1/lineitems?auth_token=TOKEN&where=startedRunningDate>2021-01-01;startedRunningDate<2021-06-01
```

### Return all Line Items in a `RUNNING` or `ENDED` state

This also makes use of the `where` query parameter, and introduces the `in` operator.

```text
https://api.adnuntius.com/api/v1/lineitems?auth_token=TOKEN&where=executionState+in+RUNNING,ENDED
```

Likewise, you can also use a `not in` operator:

```text
https://api.adnuntius.com/api/v1/lineitems?auth_token=TOKEN&where=executionState+not+in+RUNNING,ENDED
```

## Full Parameter Description

### Flags

The following flags are supported:

| Flag | Description |
| :--- | :--- |
| `includeActive` | include objects with an `ACTIVE` state |
| `includeInactive` | include objects with an `INACTIVE` state |
| `includeHidden` | include objects with a `HIDDEN` state |
| `excludeInvalid` | exclude objects with validation warnings |
| `onlyMine` | only return objects that were created by the current API user |

### Basic Filtering Parameters

| Flag | Description | Example |
| :--- | :--- | :--- |
| `filterBy` | the field name of the object | `filterBy=name` |
| `filterByValue` | an exact match on the filtered field value. Requires `filterBy` | `filterBy=name&filterByValue=Campaign` |
| `filterByLike` | a match on any values in the filtered field that contain the supplied string. Requires `filterBy` | `filterBy=name&filterByLike=Camp` |
| `filterByNotLike` | a match on any values in the filtered field that do NOT contain the supplied string. Requires `filterBy` | `filterBy=name&filterByNotLike=Camp` |
| `excludeIfMissing` | a non-null filter | `excludeIfMissing=tierId` |

### Advanced `where` Clause

You can chain multiple conditions together into a where clause using the following syntax:

```text
where=CONDITION;CONDITION;CONDITION
```

where each `CONDITION` can be one of the following:

| Condition | Example |
| :--- | :--- |
| Equals | `name=Adnuntius` |
| Not Equals | `name!=Adnuntius` |
| Greater Than | `startDate>2021-01-01` |
| Greater Than Or Equal to | `startDate>=2021-01-01` |
| Less Than | `startDate<2021-01-01` |
| Less Than Or Equal to | `startDate<=2021-01-01` |
| Is In | `objectState+in+ACTIVE,INACTIVE` |
| Is Not In | `objectState+not+in+ACTIVE,INACTIVE` |
| Is Null | `description+is+null` |
| Is Not Null | `description+is+not+null` |

The `where` filter matches when ALL of the `CONDITION`s are met.

### Advanced Timestamp `where` Clauses

The following interval expressions are supported:

* `X minutes later`
* `X minutes ago`
* `1 hour later`
* `1 hour ago`
* `X hours later`
* `X hours ago`
* `1 day later`
* `1 day ago`
* `1 month later`
* `1 month ago`
* `X months later`
* `X months ago`
* `1 year later`
* `1 year ago`
* `X years later`
* `X years ago`

Where `X` is an integer > 0.   The singular `minute`, `hour`, `day`, `month` and `year` are for convenience only.  You can for example specify `1 hours ago`, which is the same as `1 hour ago`. 
