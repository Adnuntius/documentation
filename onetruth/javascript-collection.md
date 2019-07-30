---
description: This page will tell you how to do a push to the collect endpoint‌
---

# javascript Collection

## Calling the data platform <a id="calling-the-cdp"></a>

First you'll have to load the tag generetade from the user interface:

```text
<script src="{YOUR-TAG}" async></script>
```

Secondly you'dd have to assign the variables to find them on the site.

```markup
<script>
    var ot = ot || {};
    ot.collect = ot.collect || [];
    ot.data = ot.data || {};
</script>
```

Lastly you will do the push:

```markup
<script>
   ot.collect.push({
      event: "click",
      data: "more",
      other: "stuff"
   });
</script>
```

‌

## Example of page view event  <a id="example-of-page-view-event"></a>

```markup
<script src="{YOUR-TAG}" async></script>
​<script>
   var ot = ot || {};
   ot.collect = ot.collect || [];
   ot.data = ot.data || {};
   ot.collect.push({
      event: "pageview",
      data: "more", 
      other: "stuff"
   });
</script>​
```

‌

The `ot.collect.push` enforces you to specify an `event` The list of availabel events are these:

| Event | Purpose |
| :--- | :--- |
| pageview | Will tell the data platform that you are sending an event and the data that is sent with the event will be incremented on the user, this will also create a session in order to do session rules for a user. |
| profile | This will update the user profile with whatever data that you send. If the data would contain a number in a string `"34"` it will be considered as a number by the data platform. |
| click | This will be triggered as a click event |
| \* | You can add whatever event name that you wish that is not listed above. |
