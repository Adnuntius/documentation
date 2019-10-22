# HTTP Request

We provide an HTTP API for requesting ads from our delivery server. This API may be used, for example, to enable server-side fetching of ads.

## Usage

### GET Requests

```text
GET https://delivery.adnuntius.com/i{{params}}
```

| Parameter | Required? | Example value\(s\) | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| auId | Yes, unless making a POST request \(see below\) | ab123456789 \(string\) | None | The Ad Unit to fetch ads from |
| tzo | No | -120 \(number\) | 0 | Timezone, offset from UTC in minutes |
| userId | No | ab123456789 \(string\) | If not provided, this value will be read from the Adnuntius cookie | Identifies a unique user; used for segment targeting, rate limiting, and unique user counting |
| siteId | No | ab123456789 \(string\) | None | A unique identifier for the site where the ad will be shown. This will be used, if required by your DMP, for segment targeting |
| tt | No | composed, multi, vast2 | None | The Tag Type. The composed and multi tag-types can only be used with a POST request \(see below\) |
| format | No | html, xml, json, image, email \(string\) | html | Specifies the format of the returned ads |

### Post Requests

```text
POST https://delivery.adnuntius.com/i{{params}}
```

The parameters listed above in the **Get Requests** section are also supported on POST requests.

#### POST Body

| Parameter | Example value | Description |
| :--- | :--- | :--- |
| adUnits | - | An array of objects for the adunits that you wish to request. |
| auId | ab123456789 \(string\) | The ad unit tag id in question. |
| targetId | adn-123456789 \(string\) | The id of the HTML element you wish your ad to be placed in. |

Example POST Body:

```text
{
    "adUnits":[
        {
            "auId":"abc123",
            "targetId":"adn-abc123"
        },
        {
            "auId":"xyz987",
            "targetId":"adn-xyz987"
        }
    ]
}
```

## Examples

### GET request

#### Request

```text
GET http://delivery.adnuntius.com/i?tzo=-120&auId=abc123&userId=xyz987
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

### POST request

#### Request

```text
POST http://delivery.adnuntius.com/i?tzo=-120&userId=xyz987&tt=composed
```

POST Body:

```text
{
    "adUnits":[
        {
            "auId":"abc123",
            "targetId":"adn-abc123"
        },
    {
            "auId":"xyz987",
            "targetId":"adn-xyz987"
        }
    ]
}
```

#### Response

```text
{
    "adUnits": [
        {
            "auId": "abc123",
            "targetId": "adn-abc123",
            "html": "<!DOCTYPE html>\n<html>\n<head>\n    <meta charset=\"utf-8\">\n    <style type=\"text/css\" media=\"all\">\n        html, body, #responseCtr {\n            margin: 0;\n            padding: 0;\n            outline: 0;\n            border: 0;\n            overflow: hidden;\n        }\n\n        #responseCtr {\n            display: inline-block;\n            line-height: 0;\n            vertical-align: top;\n        }\n\n        #responseCtr a {\n            line-height: 0;\n        }\n\n        #responseCtr *, #responseCtr a * {\n            line-height: normal;\n        }\n\n        #responseCtr .adWrapper {\n            margin: 0;\n            padding: 0;\n            outline: 0;\n            border: 0;\n            display: inline-block;\n            line-height: 0;\n        }\n\n        a img {\n            border: none;\n            outline: none;\n        }\n\n        img {\n            margin: 0;\n            padding: 0;\n        }\n\n        /* need this displayNone class to ensure images are preloaded for smooth transition */\n        img.displayNone {\n            position: absolute;\n            top: -99999px;\n            left: -99999px;\n        }\n    </style>\n\n    <script type=\"text/javascript\" src=\"https://cdn.adnuntius.com/adn.js\"></script>\n</head>\n<body>\n<div id=\"responseCtr\" class=\"responseCtr\">\n<div class=\"adWrapper\" id=\"adn-id-xxxx\" data-line-item-id=\"xxxxx\" data-creative-id=\"aaaaa\" data-response-token=\"yyyyyy\"><a rel=\"nofollow\" target=\"_top\" href=\"https://delivery.adnuntius.com/c/yyyyy?ct&#x3D;2501&amp;r&#x3D;http%3A%2F%2Fadnuntius.com\" style=\"width: 100%\">\n<img src=\"//assets.adnuntius.com/creative.jpg\" style=\"width: 100%; max-width: 980px; margin: 0 auto; display: block;\" alt=\"\"/>\n</a>\n\n<script>\n\tadn.util.forEach(document.getElementsByClassName(\"adWrapper\"), function(el) {\n    \tel.style.width = \"100%\";\n    });\n\tvar iframeId = adn.inIframe.getIframeId();\n\tvar container = document.getElementById('responseCtr')\n    container.style.width = \"100%\"\n\tvar responsiveIframe = function(){\n        adn.inIframe.updateAd({\n        \tifrH: container.offsetHeight,\n            ifrStyle:{width: '100%', 'min-width':'100%', '*width':'100%' },\n            ifrId: iframeId\n        });\n\t}\n    \n  adn.inIframe.getAdRequestInfo({\n    onInfoReceived: function(data) {\n        console.log(\"onData\", data);\n    }\n});\n\n\n\n\twindow.onresize = function(){ responsiveIframe() }\n\twindow.onload = function(){ responsiveIframe() }\n    adn.inIframe.blockResizeToContent();\n</script>\n\n<div style=\"clear: both\"></div></div>\n</div>\n\n    \n        \n        \n        \n            \n<iframe src=\"https://delivery.adnuntius.com/b/yyyyy.html\" scrolling=\"no\" frameborder=\"0\" width=\"1\" height=\"1\" style=\"position:absolute;top:-10000px;left:-100000px;\"></iframe>\n            \n        \n<script type=\"text/javascript\">\n//<![CDATA[\n(function() { adn.inIframe.processAdResponse({ matchedAdCount: 1 }); })();\n//]]>\n</script>\n\n    \n\n</body>\n</html>",
            "matchedAdCount": 1,
            "rts": [
                "yyyyyy"
            ]
        }
        {
            "auId": "xyz987",
            "targetId": "adn-xyz987",
            "html": "<!DOCTYPE html>\n<html>\n<head>\n    <meta charset=\"utf-8\">\n    <style type=\"text/css\" media=\"all\">\n        html, body, #responseCtr {\n            margin: 0;\n            padding: 0;\n            outline: 0;\n            border: 0;\n            overflow: hidden;\n        }\n\n        #responseCtr {\n            display: inline-block;\n            line-height: 0;\n            vertical-align: top;\n        }\n\n        #responseCtr a {\n            line-height: 0;\n        }\n\n        #responseCtr *, #responseCtr a * {\n            line-height: normal;\n        }\n\n        #responseCtr .adWrapper {\n            margin: 0;\n            padding: 0;\n            outline: 0;\n            border: 0;\n            display: inline-block;\n            line-height: 0;\n        }\n\n        a img {\n            border: none;\n            outline: none;\n        }\n\n        img {\n            margin: 0;\n            padding: 0;\n        }\n\n        /* need this displayNone class to ensure images are preloaded for smooth transition */\n        img.displayNone {\n            position: absolute;\n            top: -99999px;\n            left: -99999px;\n        }\n    </style>\n\n    <script type=\"text/javascript\" src=\"https://cdn.adnuntius.com/adn.js\"></script>\n</head>\n<body>\n<div id=\"responseCtr\" class=\"responseCtr\">\n<div class=\"adWrapper\" id=\"adn-id-xxxx\" data-line-item-id=\"xxxxx\" data-creative-id=\"aaaaa\" data-response-token=\"yyyyyy\"><a rel=\"nofollow\" target=\"_top\" href=\"https://delivery.adnuntius.com/c/yyyyy?ct&#x3D;2501&amp;r&#x3D;http%3A%2F%2Fadnuntius.com\" style=\"width: 100%\">\n<img src=\"//assets.adnuntius.com/creative.jpg\" style=\"width: 100%; max-width: 980px; margin: 0 auto; display: block;\" alt=\"\"/>\n</a>\n\n<script>\n\tadn.util.forEach(document.getElementsByClassName(\"adWrapper\"), function(el) {\n    \tel.style.width = \"100%\";\n    });\n\tvar iframeId = adn.inIframe.getIframeId();\n\tvar container = document.getElementById('responseCtr')\n    container.style.width = \"100%\"\n\tvar responsiveIframe = function(){\n        adn.inIframe.updateAd({\n        \tifrH: container.offsetHeight,\n            ifrStyle:{width: '100%', 'min-width':'100%', '*width':'100%' },\n            ifrId: iframeId\n        });\n\t}\n    \n  adn.inIframe.getAdRequestInfo({\n    onInfoReceived: function(data) {\n        console.log(\"onData\", data);\n    }\n});\n\n\n\n\twindow.onresize = function(){ responsiveIframe() }\n\twindow.onload = function(){ responsiveIframe() }\n    adn.inIframe.blockResizeToContent();\n</script>\n\n<div style=\"clear: both\"></div></div>\n</div>\n\n    \n        \n        \n        \n            \n<iframe src=\"https://delivery.adnuntius.com/b/yyyyy.html\" scrolling=\"no\" frameborder=\"0\" width=\"1\" height=\"1\" style=\"position:absolute;top:-10000px;left:-100000px;\"></iframe>\n            \n        \n<script type=\"text/javascript\">\n//<![CDATA[\n(function() { adn.inIframe.processAdResponse({ matchedAdCount: 1 }); })();\n//]]>\n</script>\n\n    \n\n</body>\n</html>",
            "matchedAdCount": 1,
            "rts": [
                "zzzzzz"
            ]
        }
    ],
    "metaData": {
        "network!usi": "aaaa",
        "network!sessionId": "bbbb"
    },
    "duplicateFilter": "ccccc",
    "segments": [],
    "keywords": []
}
```

### Targeting Parameters

You can include targeting information with the HTTP request to the ad server that can control which line items or creatives match your request.

#### Key-value targeting

Key values can be sent to the ad server through HTTP like this:

```http
http://delivery.adnuntius.com/i?tzo=-120&auId=00000000000481f7&kv=%5B%7B%22myKey%22%3A%5B%22myValue1%22%2C%22myValue2%22%5D%7D%5D
```

The `kv=` will be a URL encoded Json of what you wish to send. In the above case it's this:

```javascript
kv: [{'myKey': ['myValue1', 'myValue2']}]
```

#### Category Targeting

Category targeting can be sent to the adserver using the `c=` parameter.

```text
&c=category1&c=sport%2Fbasketball&c=politics
```

Woud be the equivalent of sending this in the ad request:

```javascript
c: ['category1', 'sport/basketball', 'politics']
```

the content of the category should be URL encoded.
