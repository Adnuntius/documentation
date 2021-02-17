---
description: >-
  This page will describe how to enable a slider that will display adnuntius
  ads.
---

# Adnuntius Slider

### Prerequisites

In order to add this functionality to your page you will have to add these two files to the `<head>` tag of your page. Either you can use our CDN or download them and host them yourself.

```html
<script src="https://tags.adnuntius.com/utils/swiper.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://tags.adnuntius.com/utils/swiper.min.css">
```

{% hint style="info" %}
After you've added the style sheet you can of course style it in whatever shape or form that fits your site.
{% endhint %}

### Deployment

After that is done you can add the ad call to your site. \(Don't forget to set the adunit ID\)

```html
<div id="adn-<adunit-ID>" ></div> //TODO: paste adunit ID

<script type="text/javascript">

(function(d,s,e,t){e=d.createElement(s);e.type='text/java'+s;e.async='async';
e.src='http'+('https:'===location.protocol?'s':'')+'://cdn.adnuntius.com/adn.js';
t=d.getElementsByTagName(s)[0];t.parentNode.insertBefore(e,t);})(document,'script');
window.adn = window.adn || {}; adn.calls = adn.calls || [];

	
	// --- Optional -----------
	adn.swiper = {
		slidesPerView : 1,
		speed: 3000,
		delay: 5000,
		spaceBetween: 20
	} 
	// ------------------------

 		adn.calls.push(function() {
		adn.request({ 
			onImpressionResponse: adnAddSwiper, // Required
			adUnits: [
				{auId: '<adunit-ID>', container: 'div' }, // TODO: paste adunit ID
    		]
		});
	})

</script>
```

{% hint style="warning" %}
You must user the `congtainer: 'div'` as described in the [documentation ](https://admin.adnuntius.com/adn)for this to work.
{% endhint %}

The optional parameters gives you some control over the sliders behavior on site.

| Optional parameter | Defaults | Usage |
| :--- | :--- | :--- |
| slidesPerView | 1 | Determins how many items to fit in every slide. |
| speed | 3000 | The speed in milliseconds for each transition between slides. |
| delay | 5000 | How long the slider will stay on each slide. |
| spaceBetween | 10 | Will set the space between each item in the slider. |

