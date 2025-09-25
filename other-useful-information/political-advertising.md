---
description: >-
  The European Union has put strict requirements on political advertising. Here
  we explain you can use Adnuntius to serve political ads in a compliant manner.
---

# Political Advertising

{% hint style="info" %}
The regulation: [https://eur-lex.europa.eu/eli/reg/2024/900/oj/eng](https://eur-lex.europa.eu/eli/reg/2024/900/oj/eng)
{% endhint %}

This page divides the topic into the following parts:&#x20;

1. The request and response to/from the Adnuntius adserver.
2. Showing the ad, including formats.&#x20;
3. Information transparency and storage.
4. Reporting and frequency.
5. Terms and conditions.

## 1 The request and response

The important legal requirement concerning requests and response is user information, or personal data. The law states that, in order to show political ads, publishers need to secure separate and explicit consent to do so. Most publishers use the Transparency and Consent Framework (TCF) to secure consent without asking for consent, so here we communicate a method to secure that no personal data is used.&#x20;

Please note however that it is possible to request custom purposes using TCF, and that we can read the consent string for custom purposes. [See here for more information on custom purposes.](https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework/blob/master/TCFv2/IAB%20Tech%20Lab%20-%20CMP%20API%20v2.md)

{% hint style="info" %}
If you use Adnuntius as an ad server then you are the controller and we are a processor, meaning that you  can make choices about what you consider personal data sent to us for processing. For example if you consider IP addresses as acceptable then you can choose to approve that.
{% endhint %}

**The request** for an ad from the Adnuntius adserver can be sent using Javascript or Prebid:&#x20;

* For Prebid you can send the request without any customization, as [described here](https://docs.prebid.org/dev-docs/bidders/adnuntius) (client) or [here](../adnuntius-advertising/requesting-ads/prebid-server.md) (server).&#x20;
* If you use javascript to request ads you should use the method described under "[Cookieless Advertising](../adnuntius-advertising/requesting-ads/cookieless-advertising.md)" to ensure that we do not set any cookies, nor allow any third parties to set cookies (as far as we can; please see "3 Showing the ad" below for more information).&#x20;

**The response** from the adserver depends on the method you use to request the ad.&#x20;

For Javascript: Since the request already tells the adserver not to use any cookies in the response, you can receive the response as normal.&#x20;

For Prebid: All political ads returned from the adserver will contain a deal ID (adn-political) in the response. Whenever we serve this value we will also ensure that Adnuntius sets no cookies, and as far as we can ensure, not allow any third parties to serve cookies either.&#x20;

{% hint style="info" %}
Note that we will help you set this up during the onboarding process, depending on how you need the workflow to work.
{% endhint %}

The image below describes the workflow. In short, your prebid wrapper should be able to listen for the deal ID, destroy the ad unit (assuming you use Google: [Destroying an ad slot](https://developers.google.com/publisher-tag/reference#googletag.destroySlots)), and [render the ad via Prebid](https://docs.prebid.org/dev-docs/publisher-api-reference/renderAd.html) instead of through your ad server. This will work around the problem that most larger ad servers do not accept political advertising.&#x20;

<figure><img src="../.gitbook/assets/Political ads workflow prebid.png" alt=""><figcaption></figcaption></figure>

## 2 Showing the ad

The response will contain a creative. This creative will be served onto the page using a [Layout](../adnuntius-advertising/admin-ui/design/layouts.md), which uses a render template to present an overlay. The image below provides a Norwegian example saying "Politisk annonse fra Arbeiderpartiet - info". The generic text presented to the user will be:&#x20;

"Political advertisement from \[Sponsor/Advertiser] - info"

When a user clicks on the box/text the browser will open a tab providing more information - please see the next section.&#x20;

<figure><img src="../.gitbook/assets/202508 Political Ad Example.png" alt=""><figcaption></figcaption></figure>

## 3 Information transparency and storage

When the user clicks on the ad's overlay they will land on an information page provided by Adnuntius. This page will contain two important elements:&#x20;

1. The information that should be accessible to the user, such as (for example, but not limited to) start/end date, political event in question, budgets, and Advertiser (sponsor).&#x20;
2. A link that provides the opportunity for the user to complain when suspecting that the ad is illegal. This link can lead to a page of your choice, or we can provide one for you on the Adnuntius domain. The complaint will be sent to an email of your choice.&#x20;

<figure><img src="../.gitbook/assets/202508 Political Ad Info Page.png" alt=""><figcaption></figcaption></figure>

In order to cover the requirement of having information publicly available and retrievable, Adnuntius will also provide a table of political ads, as seen here: [https://assets.adnuntius.com/political-list.html](https://assets.adnuntius.com/political-list.html). We store the information for a minimum of 7 years. We will also send data to the EU repository once it is up and running.

## 4 Reporting and frequency

Reporting will work as normal, with a few limitations as [described here](../adnuntius-advertising/requesting-ads/cookieless-advertising.md#what-we-cant-do-when-a-dvertising-anonymously), considering that we cannot use cookies or other personal data in order to count unique users.&#x20;

## 5 Terms and conditions

While some rules can be enforced by technology, some will have to rely on an agreement between you and the ad buyer. When we enable ad buyers to buy political ads through our Marketplace we ensure that they are committed to terms and conditions which we share with you here for your convencience.&#x20;

Here is a summary of the terms we ask buyers to commit to:&#x20;

* Definition – Political Ads include any paid or campaign-related message by/for political actors or meant to influence elections, referendums, voting, or lawmaking.
* General compliance – Buyers must identify Political Ads and ensure compliance with EU Political Advertising Law.
* Provision of information – Customers must provide accurate sponsor and campaign details so Adnuntius can publish required transparency data. Please note that we require the Sponsor to be the same entity as the Advertiser registered in the system, in order to provide correct and consise information to users on the information page.&#x20;
* Notification – Each party must promptly notify the other if it suspects non-compliance.
* Foreign entities – In the three months before elections, only EU citizens, eligible residents, or EU-based entities (not foreign-controlled) may sponsor ads.
* Targeting – Political Ads can only be targeted within strict legal limits unless users give explicit consent. Since this process is not yet in place, we avoid targeting using personal data altogether.
* Product choice – Customers must use the designated Political Ads product and only use personal data if users separately consent. May not be relevant if you only intend to sell political advertising as insertion orders.
* Availability – Adnuntius must submit ads and related info to the EU register within 72 hours and keep them publicly accessible for 7 years.

Here are the terms and conditions we use, that you can reuse as you wish (see points 4.2-4.9: [https://adnuntius.com/s/202406-TCs-Buyers.pdf](https://adnuntius.com/s/202406-TCs-Buyers.pdf)).

## 6 Json Readable format

To fetch information about political ads as a machine readable format you can visit this link:

```
https://cache.api.adnuntius.com/api/v1/politicalads/list.json
```
