---
description: Automatic checks that stop creatives using unapproved technology or cookies
---

# Creative Scanning

Creative scanning renders every creative that could serve on a site, records what the creative actually does in the browser, and blocks it if it breaks the site's policy. It is aimed at publishers who must guarantee that only approved advertising technology runs on their pages.

Scanning is enabled per site by Adnuntius. Contact [support@adnuntius.com](mailto:support@adnuntius.com) if you want it on your sites.

## What is checked

Each creative is rendered in a real browser, and the scan records:

* every domain the creative contacts, and
* every cookie it sets, with the cookie's lifetime.

Scans rotate between the Chrome, Safari and Firefox engines, so technology that only loads on one browser is still caught.

A policy is an allow-list of approved technology suppliers plus a maximum cookie lifetime. The scan produces a violation when the creative contacts a domain that belongs to no approved supplier, or sets a cookie that lives longer than the policy allows. Any violation blocks the creative.

The [Site](sites.md) page shows a _Restrictions_ section for a scanned site, with the full list of suppliers approved by the policy in force.

## What blocking means

A blocked creative cannot serve on any site that uses that policy. It serves normally everywhere else.

Creatives are blocked until proven clean. A new or edited creative is blocked from scanned sites until a scan passes, so an unscanned creative never slips through.

Scans happen:

* When a creative is created or changed.
* Every hour, for any creative that should be scanned and is not.
* Again a day after the previous scan, so a creative that starts calling a new domain is caught.
* After a policy changes, existing scan results are re-assessed against the new policy.

Results are keyed on the creative's content so that re-saving a creative without changing it reuses the existing result, and changing the creative content performs a fresh scan.

