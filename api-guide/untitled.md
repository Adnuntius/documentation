# HTTP Delivery API

We provide an HTTP API for requesting ads from our delivery server. This API may be used, for example, to enable server-side fetching of ads.

## Usage

### GET Requests

```text
GET https://delivery.adnuntius.com/i{{params}}
```

| Parameter | Required? | Example value(s) | Default Value | Description |
| :--- | :--- | :--- |  :--- |  :--- | 
| auId | Yes, unless making a POST request (see below) | ab123456789 \(string\) | None | The Ad Unit to fetch ads from |
| tzo | No |-120 \(number\) | 0 | Timezone, offset from UTC in minutes |
| userId | No |ab123456789 \(string\) | If not provided, this value will be read from the Adnuntius cookie | Identifies a unique user; used for segment targeting, rate limiting, and unique user counting |
| siteId | No |ab123456789 \(string\) | None | A unique identifier for the site where the ad will be shown. This will be used, if required by your DMP, for segment targeting  |
| tt | No |composed, multi, vast2 | None | The Tag Type. The composed and multi tag-types can only be used with a POST request (see below) |
| format | No |html, xml, json, image, email \(string\) | html | Specifies the format of the returned ads |

### Post Requests

```text
POST https://delivery.adnuntius.com/i{{params}}
```

The parameters listed above in the **Get Requests** section are also supported on POST requests.

Example POST Body:

```text
{
    "adUnits":[
        {
            "auId":"0000000000017d97",
            "targetId":"adn-0000000000017d97"
        },
        {
            "auId":"0000000000017d93",
            "targetId":"adn-0000000000017d93"
        }
    ]
}
```

#### Description for post body

| Parameter | Example value | Description |
| :--- | :--- | :--- |
| adUnits | - | An array of objects for the adunits that you wish to request. |
| auId | ab123456789 \(string\) | The ad unit tag id in question. |
| targetId | adn-123456789 \(string\) | The id of the HTML element you wish your ad to be placed in. |

### Example GET request for a single ad unit

#### Request

```text
GET http://delivery.adnuntius.com/i?tzo=-120&auId=0000000000017d95&userId=jia8lpi4wzw7qsof
```

#### Response

```text
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <style type="text/css" media="all">
        html, body, #responseCtr {
            margin: 0;
            padding: 0;
            outline: 0;
            border: 0;
            overflow: hidden;
        }
        #responseCtr {
            display: inline-block;
            line-height: 0;
            vertical-align: top;
        }
        #responseCtr a {
            line-height: 0;
        }
        #responseCtr *, #responseCtr a * {
            line-height: normal;
        }
        #responseCtr .adWrapper {
            margin: 0;
            padding: 0;
            outline: 0;
            border: 0;
            display: inline-block;
            line-height: 0;
        }
        a img {
            border: none;
            outline: none;
        }
        img {
            margin: 0;
            padding: 0;
        }
        /* need this displayNone class to ensure images are preloaded for smooth transition */
        img.displayNone {
            position: absolute;
            top: -99999px;
            left: -99999px;
        }
    </style>
    <script type="text/javascript" src="https://cdn.adnuntius.com/adn.js"></script>
</head>
<body>
<div id="responseCtr" class="responseCtr">
<div class="adWrapper" id="adn-id-387286962" data-line-item-id="xxxxxxx" data-creative-id="xxxxxx" data-response-token="yyyyy"><a rel="nofollow" target="_top" href="https://delivery.adnuntius.com/c/yyyyy?ct&#x3D;2501&amp;r&#x3D;http%3A%2F%2Fadnuntius.com" style="width: 100%">
<img src="//assets.adnuntius.com/creative.jpg" style="width: 100%; max-width: 980px; margin: 0 auto; display: block;" alt=""/>
</a>

<script>
	adn.util.forEach(document.getElementsByClassName("adWrapper"), function(el) {
    	el.style.width = "100%";
    });
	var iframeId = adn.inIframe.getIframeId();
	var container = document.getElementById('responseCtr')
    container.style.width = "100%"
	var responsiveIframe = function(){
        adn.inIframe.updateAd({
        	ifrH: container.offsetHeight,
            ifrStyle:{width: '100%', 'min-width':'100%', '*width':'100%' },
            ifrId: iframeId
        });
	}
  adn.inIframe.getAdRequestInfo({
    onInfoReceived: function(data) {
        console.log("onData", data);
    }
});
	window.onresize = function(){ responsiveIframe() }
	window.onload = function(){ responsiveIframe() }
    adn.inIframe.blockResizeToContent();
</script>
<div style="clear: both"></div></div>
</div>
<iframe src="https://delivery.adnuntius.com/b/yyyyyy.html" scrolling="no" frameborder="0" width="1" height="1" style="position:absolute;top:-10000px;left:-100000px;"></iframe>
<script type="text/javascript">
//<![CDATA[
(function() { adn.inIframe.processAdResponse({ matchedAdCount: 1 }); })();
//]]>
</script>
</body>
</html>
```

### Example POST request for multiple ad units

```text
POST http://delivery.adnuntius.com/i?tzo=-120&auId=0000000000017d95&userId=jia8lpi4wzw7qsof&tt=composed
```

#### Post body

```text
{
    "adUnits":[
        {
            "auId":"0000000000017d97",
            "targetId":"adn-0000000000017d97"
        },
        {
            "auId":"0000000000017d93",
            "targetId":"adn-0000000000017d93"
        }
    ]
}
```

