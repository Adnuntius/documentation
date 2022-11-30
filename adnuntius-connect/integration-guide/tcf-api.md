# TCF API

In order to have a full spec of the TCF API, you can read more at this link: [https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework/blob/master/TCFv2/IAB%20Tech%20Lab%20-%20CMP%20API%20v2.md](https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework/blob/master/TCFv2/IAB%20Tech%20Lab%20-%20CMP%20API%20v2.md)

### Get Consent Data

The TCF framework have a helper function that will fetch the consents given by a user. you can use it by this code snippet below:

```javascript
__tcfapi('getTCData', 2, function (tcData, success) {
    if (success) {
        console.log(tcData)
    } else {
        console.log('bummer dude')
    }
});
```

The `tcData` variable will return an object that contains this data:

```javascript
{
	cmpId: 1000,
	cmpVersion: 2,
	gdprApplies: true,
	purpose: {
		consents: {	1: true, 2: true, 3: true, 4: true ... }
		legitimateInterests: { 1: true, 2: true, 3: true ...}
	}
	specialFeatureOptins:{ 1: true, 2: true ... }
	tcString: "CO7N7b-O7N7b-DrACAENAtCAAP_AA...",
	tcfPolicyVersion: 2,
	useNonStandardStacks: false,
	vendor: {
		consents: {1: true, 2: true, 4: true, 6: true ... }
		legitimateInterests: {1: true ... }
	}
}
```

