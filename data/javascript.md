---
description: Describes how to send information to Adnuntius Data from a user's browser
---

## Sending a profile update from a user's browser

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


