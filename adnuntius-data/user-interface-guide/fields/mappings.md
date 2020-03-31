---
description: >-
  Mappings allow you to use one or more names to refer to any of our pre-defined
  fields, and to normalise field values, so that for instance “Male” is
  transformed to “M”.
---

# Mappings

To add a mapping, go to [https://admin.adnuntius.com/mappings](https://admin.adnuntius.com/mappings) and click “Add Mapping” in the upper right corner. 

First choose the [field](fields.md) to which you want to map. 

Next you can add whatever **value** \(mapping\) and **aliases** that you want mapped to that field. Once you have created these you can send those values rather than the field name that we have provided for you, and it will all be collected under the relevant field.

{% hint style="info" %}
Example: if you want to collect the gender \(one of the [field values](fields.md) you can choose\) of your users, but that you need to send the value "sex" instead of "gender". You can then map sex to gender, so that you can keep sending "sex".
{% endhint %}

**Transformations.** You can add multiple field values that will all be normalized to one value. This way you  keep a coherent data structure inside Adnuntius Data. This is useful when you for instance have multiple values that actually mean the same thing. 

{% hint style="info" %}
Example: if you’re sending both values “males” and “m” then you can transform “male” to “m” so that all variations are normalized to the same value in Adnuntius Data. 
{% endhint %}



