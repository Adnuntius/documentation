---
description: This page describes how to access Adnuntius products from behind a firewall
---

# Firewall Access

Adnuntius products are hosted on our servers and provided to you by way of one or more URLs such as [https://admin.adnuntius.com](https://admin.adnuntius.com). In certain corporate or locked down environments access to all external sites will be blocked, and to access our sites you will need to request your network administrator allows access through the firewall. If this does not apply to you there is no need to read further.

However, if you are in this type of environment you will know that this typically involves mapping the URL to an IP address which can change and so make this a time consuming process. Because of this, Adnuntius has set up our networking to make this easy for you by ensuring that our services are normally delivered from the same set of IP addresses. The sections below give the details of this for sites that you might need to access from behind a firewall.

## Adnuntius Administration

The site [https://admin.adnuntius.com](https://admin.adnuntius.com) is used to manage Adnuntius Advertising and Adnuntius Data. To allow access to this site ask your network administrator to allow the following IP addresses:

* 85.202.161.136
* 85.202.161.137

You will also need to allow access to the **Adnuntius Advertising and Data APIs** IP addresses, which are provided in a section below.

## Adnuntius Data FTP Server

If you have arranged access to our raw log FTP server and wish to access this from behind a firewall ask your network administrator to allow the following IP addresses:

* 85.202.161.148
* 85.202.161.149
* 85.202.161.150
* 85.202.161.151
* 95.217.26.232 
* 95.217.30.131

## Adnuntius Advertising and Data APIs

If you are accessing our advertising and data APIs programmatically from behind a firewall ask your network administrator to allow the following IP addresses:

* 85.202.161.128
* 85.202.161.129
* 85.202.161.130
* 85.202.161.131

## Adnuntius Advertising Ad Server

If you are running a captive portal and wish to allow access to our AdServer and CDN for users of that captive portal, you will need to allow access to the following IP addresses

### Adnuntius

* 85.202.161.1
* 85.202.161.2
* 85.202.161.3
* 85.202.161.4
* 85.202.161.5
* 85.202.161.6
* 85.202.161.7
* 85.202.161.8
* 85.202.161.9
* 85.202.161.10
* 85.202.161.11
* 85.202.161.12
* 85.202.161.13
* 85.202.161.14
* 85.202.161.15
* 95.217.30.155
* 95.216.180.106
* 95.216.183.100
* 95.217.25.57

### CDN

You will need to lookup the IP ranges that will be used to serve your customers at [http://whois.ipip.net/AS60068](http://whois.ipip.net/AS60068) \(this is the current listing of IP addresses associated with the Autonomous System of our CDN, CDN77\) and add those to your captive portal as well. Note that unlike Adnuntius IPs these may change more frequently, so if possible it is recommended to add the whole ASN 60068 to the captive portal if it supports this.

