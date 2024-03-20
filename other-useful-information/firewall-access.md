---
description: Describes how to access Adnuntius products from behind a firewall OR allow Adnuntius access through a Pay Wall 
---

# Firewall Access

Adnuntius products are hosted on our servers and provided to you by way of one or more URLs such as [https://admin.adnuntius.com](https://admin.adnuntius.com). In certain corporate or locked down environments access to all external sites will be blocked, and to access our sites you will need to request your network administrator allows access through the firewall.

Adnuntius products may also need to access content hosted on your servers, such as when reading the content of news articles to extract keywords and categories for targeting. If you have a paywall in from of your site content, then your network administartor may need to configure your site so that Adnuntius can access the articles.

If this does not apply to you there is no need to read further. Otherwise, the sections below give the details of this for sites that you might need to access from behind a firewall. Note that these IP address can and will change over time, so you will need to check this page for updates.

## Adnuntius Administration

The site [https://admin.adnuntius.com](https://admin.adnuntius.com) is used to manage Adnuntius Advertising and Adnuntius Data. To allow access to this site ask your network administrator to allow the following IP addresses:

* 116.203.248.217
* 65.108.84.206
* 45.32.110.231

You will also need to allow access to the **Adnuntius Advertising and Data APIs** IP addresses, which are provided in a section below.

## Adnuntius Data FTP Server

If you have arranged access to our raw log FTP server and wish to access this from behind a firewall ask your network administrator to allow the following IP addresses:

* 65.108.129.108
* 116.202.161.76
* 116.202.192.51
* 135.181.178.243

## Adnuntius Advertising and Data APIs

If you are accessing our advertising and data APIs programmatically from behind a firewall ask your network administrator to allow the following IP addresses:

* 159.69.136.143
* 195.201.241.152
* 49.12.134.31
* 49.12.125.83

## Adnuntius Advertising Ad Server

If you are running a captive portal and wish to allow access to our AdServer and CDN for users of that captive portal, you will need to allow access to the following IP addresses:

* 37.27.70.171
* 65.21.84.56
* 95.217.44.4
* 95.217.59.254
* 116.202.84.81
* 116.202.165.113
* 135.181.176.187
* 162.55.105.244

## Adnuntius Page Crawler

To allow the Adnuntius page crawler to access pages behind a paywall, you will need to allow the following IP address:

* 159.69.141.57

You will be able to identify requests from the Adnuntius crawler by the user agent string provided with the request:

`AdnBot`

### CDN

You will need to lookup the IP ranges that will be used to serve your customers at [http://whois.ipip.net/AS60068](http://whois.ipip.net/AS60068) (this is the current listing of IP addresses associated with the Autonomous System of our CDN, CDN77) and add those to your captive portal as well. Note that unlike Adnuntius IPs these may change more frequently, so if possible it is recommended to add the whole ASN 60068 to the captive portal if it supports this.
