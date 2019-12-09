---
description: Describes how to send information to Adnuntius Data from a user's browser
---

# Javascript API

The example below provides a demonstration of how a profile update can be sent to Adnuntius Data, stored in folder `00000000000aaaaa`, using the javascript API.

```javascript
<script src="https://cdn.adnuntius.com/adn.js" async></script>
<script>
    window.adn = window.adn || {};
    adn.calls = adn.calls || [];
    adn.calls.push(function() {
        adn.visitor('00000000000aaaaa', {
            profileValues: {
                "firstName": "Bruce",
                "dateOfBirth": "2001-120-31",
                "lastTransactionAmount": 7000000
            }
        });
    });
</script>
```

See the section on [Profile Fields](fields.md) for more information about what data can be sent with the profile update request.

