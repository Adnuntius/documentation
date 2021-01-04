# User Synchronisation

Adnuntius Data allows you to merge user profiles from different systems and devices to provide a single unified view of your users. Data that is sent from your CRM, and from mobile and desktop browser sessions, can all be combined into a single record and used to drive user classification and segmentation.

## Example

The example below shows a javascript code snippet that can be used to match a user browsing your website with data uploaded to Adnuntius from an external system, such as a CRM. Descriptions of the parameters used in the code example are provided in the following table.

```javascript
<script src="https://cdn.adnuntius.com/adn.js" async></script>
<script>
    window.adn = window.adn || {};
    adn.calls = adn.calls || [];
    adn.calls.push(function() {
        adn.sync('folderId', {
            externalSystemType: 'systemId', 
            externalSystemUserId: 'systemUserId'
        });
    });
</script>
```

| Parameter | Value in the above example | Description |
| :--- | :--- | :--- |
| Folder Id | `folderId` | The folder identifier from Adnuntius Data |
| External System Type | `systemId` | A unique identifier, e.g. CRM name, for the external system you are synchronising with |
| External System User Id | `systemUserId` | The unique user identifier for the current user in the external system |

After running the above code, profile updates from the user's browser _and_ from the CRM will both be written to the same shared record.

[See here how you can synchronize users using the HTTP API instead](../http/sync.md).

