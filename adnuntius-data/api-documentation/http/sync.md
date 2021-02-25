# /sync

Adnuntius Data allows you to merge user profiles from different systems and devices to provide a single unified view of your users. Data that is sent from your CRM, and from mobile and desktop browser sessions, can all be combined into a single record and used to drive user classification and segmentation.

## Example request object

```http
POST https://data.adnuntius.com/sync
```

```javascript
{
    "folderId": "00000000000aaaaa",
    "browserId": "123",
    "externalSystemType": "crm123",
    "externalSystemUserId": "user123"        
}
```

| Parameter | Value | Description |
| :--- | :--- | :--- |
| `folderId` | String | The folder identifier from Adnuntius Data. |
| `browserId` | String | A unique identifier for the the users browser or app. |
| `externalSystemType` | String | A unique identifier, e.g. CRM name, for the external system you are synchronising with. |
| `externalSystemUserId` | String | The unique user identifier for the current user in the external system. |

After running the above code, profile updates from the user's browser _and_ from the CRM will both be written to the same shared record.

Sync requests can be sent in a batch like this:

```javascript
[
    {
        "folderId": "00000000000aaaaaa",
        "browserId":"123",
        "externalSystemType": "crm123",
        "externalSystemUserId": "testing123"        
    },
    {
        "folderId": "000000000007688a",
        "browserId":"123456",
        "externalSystemType": "crm123",
        "externalSystemUserId": "user456"        
    }
]
```

[See here how you can synchronize users using the JavaScript API instead](../javascript/user-synchronisation.md).

