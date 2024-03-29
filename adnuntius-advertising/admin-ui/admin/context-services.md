---
description: >-
  Context Services enable you to pick up category, keyword and other contextual information
  from the pages your advertisements appear on and make them available for contextual targeting.
---

# Context Services

Context Services make it easy to to target Adnuntius line items and creatives to contextual information found across publisher sites.

The Context Service can extract frequently occurring keywords from your pages, perform content categorisation, and make the keywords and categories available for targeting. For example, if you publish a recipe website, this service would allow you to easily support advertisers such as "Tony's Pizza Sauce" that would like to show ads on pages featuring pizza recipes.

An extra bonus is that Adnuntius reports on the frequency of encountering a particular keyword or category on the targeting screens for line items or creatives. That way, advertisers can know how often their ads will show based on their contextual targeting selections.

## Simple Setup

To set up context services, go to [https://admin.adnuntius.com/admin/context-service-configurations](https://admin.adnuntius.com/admin/context-service-configurations) and then:

* Click _New_ in the upper right corner.
* Select _Adnuntius_ Under Context Service.
* Give your new context service a _Name_ and _Description_ \(optional\) 
* Click _Save_

And you are done! The context service will now automatically begin analysing the content of your pages and make this available for targeting.

You can immediately test this simple setup using the test tool built into the UI. Simply provide a URL from one of your web pages, click _Test_, and you will be shown the targeting data that is extracted from the page.

If you are not satisfied with the results when using this simple setup, then you can improve the performance by using the Advanced Configuration options described in the section below.

![Example Context Service Setup.](../../../.gitbook/assets/context-service.png)

## Advanced Configuration

### Keyword and Category Meta Tags

As well as using the automated keyword detection, you can also configure the names of HTML `<meta>` tags on your pages that will contain pre-defined keywords and categories. These tags are automatically generated by your Content Management System, and they may provide a more accurate result than the automatic keyword detection process can provide.

For non-developers, you can easily inspect the available meta tags on your site by right-clicking on one of your pages and selecting to view the page source. If you search for the word `meta`, then you should find lines that might look something like this:

```markup
<meta property="og:title" content="Rich's Rich Ravioli: How to Make the Perfect Ravioli">
<meta name="keywords" content="recipes, italian, ravioli, rich">
<meta name="categories" content="recipes, italian">
```

In this example, you might choose to specify `og:title` and `keywords` in the _Keyword Meta Tags_ field of your Context Service Configuration. If you do this, then the keywords: "rich", "ravioli", "perfect", "recipe" and "italian", will be available for targeting on this page.

Similarly if you specified `categories"` in the _Category Meta Tags_ field, then "recipes" and "italian" would be available for [category targeting](../advertising/targeting.md#category-targeting) instead.

### Keywords via Page URL

With this optional selected, Adnuntius will extract keywords from the URL of the page as well as the page content. For example, if the page URL is:

```http
https://www.aperitif.no/recipies/italian/ravioli/best-ravioli-ever/12345
```

then Adnuntius will make "recipes", "italian", "ravioli", "best", "ever" and "12345" available for keyword targeting on that page.

### Tracked Keywords

Instead of having the Context Service pick up all available keywords it finds, you can specify specific keywords for the Context Service to track. This is ideal for wanting to rein in the available keywords that advertiser can select, ensuring there is a more understandable set to choose from.

In addition, you can have multiple keywords mapped to one root keyword. This means you can configure the Context Service to funnel keywords such as `crimson`, `vermillion`, `claret` and `scarlet` down to a single `red`.

### IAB Categories

This setting allows you to categorise your webpages, using the IAB taxonomy, based upon the detected keywords. You can chose as many, or as few, categories as you need, and for each catgeory you specify a list of keywords that represent that category. Then, when Adnuntius is analysing your website, it will automatically assign each page to one or more categories whenever one of the configured keywords is encountered on the page. The categories assigned to pages are made available for [category targeting](../advertising/targeting.md#category-targeting).

For example, you might configure "beer" as a keyword for the IAB category "Food & Drink - Alcoholic Beverages - 9.1". Then, whenever the keyword "beer" appears on one of your webpages, the category "Food & Drink - Alcoholic Beverages - 9.1" is added to the page and is available for targeting by your advertisers.

### Content Selectors

By default the Context Service will _automatically_ detect the important text content in your webpages and use this to extract keywords. Sometimes, however, this process does not work well and other text content -- such as links to other articles on your site, or irrelevant header and footer content -- may be included in the detected keywords. _Content Selectors_ provide a way for you to assist Adnuntius to focus on the important page content, and ignore everything else.

| Source | Field | Explanation and examples |
| :--- | :--- | :--- |
| HTML | CSS Selector | Examples: `p.article` or `div.main div.content` or `p.article, div.content` |
| HTML | Exclude CSS Selector | This CSS selector excludes all matching elements from the main selector. |
| HTML | View the website like a mobile | View the mobile-specific site by presenting as a mobile. |
| JavaScript | JavaScript Reference | Examples: `myVariable` or `myVariable.myContent`\) |
| JavaScript | View the website like a mobile | View the mobile-specific site by presenting as a mobile. |

