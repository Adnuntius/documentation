# Consents API

### Running on pageload

If you would like to run any of the below functions on page load, make sure to wrap it with the `adn.calls` function:

```javascript
// Example adn.calls wrapper for pageload

<script src="https://cdn.adnuntius.com/adn.js" async></script>
<script>
    window.adn = window.adn || {}; 
    adn.calls = adn.calls;
    
    adn.calls.push(function () {
        adn.consents.init("messageBox");
    });
</script>
```

### Trigger the popup

In order to trigger the popup you can use this function:

```javascript
adn.consents.init("{POSITION}");
```

The init function will offer two positions listed below, replace {POSITION} in the text above in order to trigger the appropriate popup:

| Value | Action |
| :--- | :--- |
| `messageBox` | Will trigger a box in the bottom corner of the page. Example below |
| `overlay` | Will trigger an overlay over the page. Example below |

### Save all purposes

```javascript
adn.consents.saveAll({BOOLEAN})
```

| Value | Action |
| :--- | :--- |
| `true` | Sets all purposes and vendors to accepted. |
| `false` | Sets all purposes and vendors to rejected. |

### Callback for Save button

```javascript
		window.adn = window.adn || { calls: [] };
		adn.callbacks = {
			consentSave: function (consentData) {
				console.log(consentData)
			}
		}
```

The `consentData` variable will return this object:

```javascript
{
	cid: "d5c7b351-...",
	given: true,
	legIntPurposes: ["all"],
	purposes: (10) [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	specialFeatures: ["all"],
	stack: false,
	tc: "CO7N7b-O7N7b-...",
	time: 1602589260227,
	vendors: ["all"]
}
```

