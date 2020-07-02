---
description: Describes how to send information to Adnuntius Data from a user's browser
---

# Javascript API

## Updating the User profile

The example below provides a demonstration of how a profile update can be sent to Adnuntius Data, for a user pofile stored in folder `00000000000aaaaa`, using the javascript API.

```javascript
<script src="https://cdn.adnuntius.com/adn.js" async></script>
<script>
    window.adn = window.adn || {};
    adn.calls = adn.calls || [];
    adn.calls.push(function() {
        adn.visitor('00000000000aaaaa', {
            profileValues: {
                firstName: "Bruce",
                dateOfBirth: "2001-120-31",
                lastTransactionAmount: 7000000
            }
        });
    });
</script>
```

See the section on [Profile Fields](fields.md) for more information about what data can be sent with the profile update request.

## Sending Page View events

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

You do NOT need to supply values for the `keywords`, `categories` or `domainName` parameters. Adnuntius will automatically detect the `domainName` and the `categories` from the page URL.

For example, a page view event coming from:

`http://example.com/sport/tennis`

would be automatically populated with:

`domainName = "example.com"`

and

`categories = ["sport", "tennis"]`

