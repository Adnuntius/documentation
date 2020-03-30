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

**Transformations.** Finally you can add multiple field values that will all be normalized to one value. This is useful when you for instance have multiple values that actually mean the same thing. For instance, if you’re sending both values “males” and “m” then you can transform “male” to “m” so that all variations are normalized to the same value in Adnuntius Data. This way you are keeping a coherent data structure inside Adnuntius Data.

