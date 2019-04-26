---
description: >-
  This section will tell you how to setup Adnuntius to deliver VAST 2.0
  documents to your video player
---

# VAST 2.0

In order to setup your ads correctly you will have to add a Line item with a Creative that supports VAST format.

![](../.gitbook/assets/image%20%284%29.png)

Secondly you will have to upload the information that will go into the vast document in the form that appears:

![](../.gitbook/assets/image%20%283%29.png)



Make sure to target the creative or line item to the correct ad unit that can handle the vast format. In order to render the information in a correct way, you will have to use HTTP delivery that looks like this:

```http
https://delivery.adnuntius.com/i?auId=0000000000000000&tt=vast2
```

The important thing above is the `&tt=vast2` at the end, since it tells the delivery how it will render the information. The example above is the simplest version of HTTP delivery for ads. More parameters about user and targeting can be added as well.

