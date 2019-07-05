# Adunits

## Ad Units 

An Ad unit is a placement that serves the content onto a page. It is a snippet of code placed on a website or within another adserver to request content from Adnuntius. If you're a developer and want to know the properties of the ad tag - or adn.js as we call it - see this page: [https://admin.adnuntius.com/adn](https://admin.adnuntius.com/adn)

![Ad unit example](../../../.gitbook/assets/201811-inventory-ad-unit.png)

**Name and description**: Give the ad unit a name and description \(optional\) of your choice. It is always better to use spacing between words rather than underscores, as searching for items later makes the items easier to find.

**Minimum and maximum width and height**: You can add a range of dimensions to ensure that an ad unit can serve any size between your min and max constraints. For example, if your ad unit has minimum 728x90 and maximum 1000x400 pixels, then any creative with width between 728 and 1000, and between 90 and 400 pixels can be served. If you would serve a 1000x300 creative inside this ad unit, the ad unit shrinks by default to 1000x300. 

**Page size and columns**: _Page siz_e determines the number of creatives that can be shown inside your ad unit. For instance, if you have a 1000x300 ad unit and page size of 3, then the ad unit may \(depending on what provides the highest value\) serve for instance three 300x100 creatives inside this ad unit. _Columns_ lets you set the maximum number of columns to be filled with ads within the ad unit's dimensions. So if you have your 1000x300 ad unit and allow 2 columns, then that ad unit can fill for instance two 300x100 creatives side by side, but not three.

{% hint style="info" %}
If you leave the page size and columns fields blank, then Adnuntius will serve any number of ads and columns inside the ad unit \(of course without exceeding the size constraints\).
{% endhint %}

**Floor price** lets you set a minimum eCPM for ads to be delivered via this ad unit. Floor price can be used by publihers to ensure that pages with premium prices never display an ad with none-premium prices.

**Site** lets you specify this ad unit's parent site. 

**Matching labels** let you group ad units based on labels, so that you can easily target a set of ad units when creating line items. For instance, if you give three ad units the label "electronics" because they are all placed on the electronics section of our site, then you can later add "electronics" as a targeting criteria to line items and creatives. 

**Labels** can be added to make reporting work for you. Let's say you add the label "electronics" to a set of ad units, and then want to run a report only for this group of ad units. You can then run a report which filters on these ad units specifically. [Learn how to run reports like this](../../reports.md#publishing-queries).

**Timezone** lets you choose the timezone for the ad unit. Timezones is important because you can target ads to run on specific dates and times. For instance, if your ad unit's timezone is set to London and you have an ad that runs until 4pm every day, then that ad will stop running at 4pm London time. However, if you would set that ad unit to Oslo time instead \(which is 1 hour ahead of London\), the ad would stop running at 4pm Oslo time - which is 5pm London time.

**Categories from URLs**: Adnuntius ad units can pick up the URL for the page on which it is shown, so that you can later use that information for targeting ads to specific categories. Once you've set up your ad units, you can add multiple categories by separating each individual one by a comma. For instance, inputting sport, color/blue, color/red/crimson will match any of sport, sport/ANY-VALUE-HERE, color/blue, color/blue/ANY-VALUE-HERE, color/red/crimson or color/red/crimson/ANY-VALUE-HERE. In addition, a category of golf will match any of domain.com/golf/news, domain.com/news/sport-golf-good and domain.com/news/sport\_golf\_good.

**Rate limits** allows you to limit the traffic \(viewable/visible/rendered/regular impressions and clicks\) that a ad unit receives in a given timeframe. This can be useful if you are a marketer or ad network that is given a set impressions for instance monthly for a set price. You can set multiple rate limits.

{% hint style="info" %}
If you provide a label to rate limits, you will limit the traffic for any line item with that same label. If you do not provide a label, then all line items will stop delivering to the site or ad unit after the set amount is reached. 
{% endhint %}

External ad units are placements connecting programmatic ads to an ad unit, enabling you to serve ads from an SSP with a server-side connection. [Read more about external ad units in this separate section](../#external-ad-unit).

**Overview, charts and reports**: On the right side of a ad unit's page you will find multiple tabs that each has its function. 

{% tabs %}
{% tab title="Ad Unit" %}
Ad unit charts provides you with insights about the ad unit's performance for whichever period you would like. Choose the period, the metrics, and the visualization of the data to design the charts you want to see. 

![Ad unit chart example](../../../.gitbook/assets/201811-inventory-ad-unit-ad-unit-charts.png)
{% endtab %}

{% tab title="Ad Tags" %}
This is where you find the ad tag that can be added to your page so that you can start serving content. For technical documentation about the properties of adn.js, visit [https://admin.adnuntius.com/adn](https://admin.adnuntius.com/adn).

![Ad tag example](../../../.gitbook/assets/201811-inventory-ad-unit-ad-tag.png)
{% endtab %}

{% tab title="Reports" %}
Allows you to create a report based on a [report template](../../reports.md#reports-report-templates-and-report-schedules), that can be shared with others as a link. You can also schedule reports to be created regularly, and whoever should receive the reports. Once you have created a scheduled report and added a recipient, Adnuntius will automatically send reports to recipients, containing the data you have decided on using in the [report template](https://docs.adnuntius.io/documentation/~/drafts/-LRqZ7HD-p07mcKQLMfS/primary/user-interface-guide/reports#reports-report-templates-and-report-schedules). Here you can see a [demo of how to set up automated reporting](https://www.youtube.com/watch?v=_-OEgPFBq0A&feature=youtu.be).

![Report scheduler example](../../../.gitbook/assets/201811-inventory-ad-unit-reports.png)
{% endtab %}

{% tab title="Diagnostics" %}
If you cannot see any ads in your ad unit, or you expected to see another ad, then diagnostics is a test that gives you more insight into what might be going on. You can simulate different targeting criteria before you run the test. Running the test, you will get detailed feedback on winning, losing, capped, unmatched and unsuitable line items, and the reasons why they were so. 

![Diagnostics test example](../../../.gitbook/assets/201811-inventory-ad-unit-diagnostics.png)

{% hint style="info" %}
You can also run diagnostics for [line items](../../advertising.md#line-item) if you wonder how an ad unit gave a line item the result that it got.
{% endhint %}

{% hint style="info" %}
You can also add ?adndebug123 at the end of any URL \(example: www.aperitif.no?adndebug123\) to show you all ad units, line items, creatives, targeting and more information in the context of a webpage.
{% endhint %}
{% endtab %}
{% endtabs %}

