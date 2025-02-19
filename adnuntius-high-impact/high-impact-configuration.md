# High Impact configuration

High impact configuration is for you as a publisher that have specific needs for how the high impact formats should be rendered on your page. You might for instance need to have a max height for the ad. In order to do that you can add this to your page:

```html
<script src="https://assets.adnuntius.com/aim.js" async></script>
<script>
  window.aim = window.aim || {
    fullScreen: {
      maxHeight: 680
    }
  }
</script>
```

This will set the max height to 680px, if you omit this, it will default to 100% of the window height.
