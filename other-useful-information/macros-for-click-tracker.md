---
description: >-
  We are offering a way to have macros in click trackers. This is useful if you
  want to create generic click tracker for UTM parameters.
---

# Macros for click tracker

These are the parameters that we offer:

| Placeholder      | Replacement value                 |
| ---------------- | --------------------------------- |
| `{{orderId}}`    | Ad servers internal Order Id      |
| `{{lineItemId}}` | Ad servers internal Line Item Id  |
| `{{creativeId}}` | Ad servers internal Creative Id   |
| `{{source}}`     | If it's internal or Marketplace   |



An example of what to put in the destination url would be this:

```
https://example.com?lineitem={{lineItemId}}
```

