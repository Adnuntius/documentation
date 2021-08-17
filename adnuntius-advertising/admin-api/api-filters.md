# API Filters

This section describes how to include filters with your API queries. Examples usages are:

- Returning all Ad Units with a name that contains `"footer"`
- Returning all Line Items that started delivering after `2021/01/01`
- Returning all Line Items in a `RUNNING` or `PAUSED` state

## Example Queries

This introduces the filtering capabilities of the API with some concrete examples. A full description of all the available parameters is provided in the next section.

### Return all Ad Units with a name that contain `"footer"`

This makes use of the `filterBy` and `filterByLike` query parameters.

```
https://api.adnuntius.com/api/v1/adunits?auth_token=TOKEN&filterBy=name&filterByLike=footer
```

### Return all Line Items that started delivering after `2021/01/01`

This makes use of the `where` query parameter.

```
https://api.adnuntius.com/api/v1/lineitems?auth_token=TOKEN&where=startedRunningDate>2021-01-01
```

Conditions can be added to the `where` clause by using the `;` separator character. So if we wanted to search for Line Items that started delivering *between* `2021-01-01` and `2021-06-01` we could use:

```
https://api.adnuntius.com/api/v1/lineitems?auth_token=TOKEN&where=startedRunningDate>2021-01-01;startedRunningDate<2021-06-01
```


## Full Parameter Description
