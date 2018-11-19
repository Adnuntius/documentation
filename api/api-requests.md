# API Requests

## API Requests

### REST Principles

The Adnuntius API is based on \[REST\]\(\) principle

### GET

`GET` calls for many resources can be called with or without an object id in the url. The GET call can be filtered with the following parameters:

| Name | Type | Default | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| filterBy | string |  | "ENDED", "NOT\_READY", "READY" or "RUNNING" | Filter creatives by state. |
| filterByLike | string |  |  | Search term to be used for the filtered value. |
| filterByValue | string |  |  | Determin what value to search against. |
| id | string |  | Required | Identifier for the creative |
| includeHidden | boolean | false |  | show hidden values \(deleted values\). |
| orderBy | string |  |  | Tells the API response what key to sort by |
| orderByDirection | string | ASCENDING | "ASCENDING" or "DESCENDING" | What direction to order the results |
| page | int | 1 |  | Define what page to show in the response. |
| pageSize | int | 100 |  | Define how many results per page to display for the result. |

When the `id` is included then only that object will be returned.

```text
GET http://<host>/api/v1/<resource type>/<id>
```

When no `id` is included then a list of all objects of that type visible to the user are returned.

```text
GET http://<host>/api/v1/<resource type>
```

### PUT and POST

`PUT` and `POST` are both treated the same, they will both create an object if it does not exist, or update an object if it does. When the `id` is included then only that object will be created/updated.

```text
POST http://<host>/api/v1/<resource type>/<id>
```

When no `id` is included then a list of objects to be created/updated is expected as the request’s POST data.

```text
POST http://<host>/api/v1/<resource type>
```

### DELETE

DELETE is not supported on resources as domain objects cannot be deleted. See Object State.

### HEAD

HEAD is used to confirm the existence of an object.

```text
HEAD http://<host>/api/v1/<resource type>/<id>
```

The response code will be `200 OK` if it exists or `404 NOT FOUND` if it doesn’t.

### Idempotence

The API supports the concept of idempotency and this means that the same PUT/POST call to an object can be made multiple times and only the initial call will alter the state of the object.

### HATEOAS

The concept of \[HATEOAS\]\(\) is used to provide links between related objects. For example, a Line Item links to many objects and both the related objects `id` and `GET` url is included.

```text
{
    "id": "lineitem_1",
    "name": "Test Campaign",
    "product": {
        "id": "product_1",
        "url": "http://test.api.com/api/v1/products/product_1"
    }
}
```

### Response codes

Standard \[HTTP status codes\]\(\) are returned with each API response

