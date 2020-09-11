# Page View

### Sending Page View events

The example below provides a demonstration of how a page view event can be sent to Adnuntius Data, for a user profile stored in folder `00000000000aaaaa`, using the javascript API.

```javascript
<script src="https://cdn.adnuntius.com/adn.js" async></script>
<script>
    window.adn = window.adn || {};
    adn.calls = adn.calls || [];
    adn.calls.push(function() {
        adn.view('00000000000aaaaa', {
            keywords: ["sport", "tennis", "oslo", "summer"],
            categories: ["IAB_24_44"],
            domainName: "sports.no"
        });
    });
</script>
```

### Field Descriptions

| Name | Type | Description |
| :--- | :--- | :--- |
| `folderId` | String | The Folder ID in Adnuntius Data, for example: `00000000000123ab` You can also specify the `folderId` as a parameter in the request URL. |
| `externalSystemType` | String | A unique identifier, e.g. CRM name, that corresponds to the external system providing the data |
| `externalSystemUserId` | String | The unique identifier for the user in the external system |
| `keywords` | String\[\] | An array of keywords |
| `categories` | String\[\] | An array of categories |
| `domainName` | String | The domain name of the page |

### Useful tips

You do NOT need to supply values for the `keywords`, `categories` or `domainName` parameters. Adnuntius will automatically detect the `domainName` and the `categories` from the page URL.

For example, a page view event coming from:

`http://example.com/sport/tennis`

Would be automatically populated with:

* `domainName = "example.com"`
* AND
* `categories = ["sport", "tennis"]`

If you send categories in the request you will overwrite the automatically assigned categories mentioned above. If you only wish to send additions to categories, for instance "tags", we advice you to use `keywords`.

