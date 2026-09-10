# High Impact configuration

High impact configuration is for you as a publisher that have specific needs for how the high impact formats should be rendered on your page. You might for instance need to have a max height for the ad. In order to do that you can add this to your page:



default, midScroll, topScroll, overlay, takeOver css attrib as string



style = outer element

content inner element/frame



config -> format -> backgroundSize: "contain"



### Formats

The following formats can be altered by adding them to the config

* `midScroll`
* `topScroll`
* `overlay`
* `takeOver`

You can also use `default` instead of a format name to apply settings to all formats.

```html
<script src="https://assets.adnuntius.com/aim.js" async></script>

// Script below is optional if you need to do any changes to the height of the fullscreen
<script>
  window.aim = window.aim || {
    style: {
      takeOver: {
        minHeight: "150vw",
        height: "150vw",
        position: "inherit"
      }
    },
     contentStyle: {
      takeOver: {
        minHeight: "150vw",
        height: "150vw",
        position: "inherit"
      }
    },
    config: {
      takeOver: {
        backgroundSize: "contain",
        disableLeftPosition: bool
      }
    }
  }
</script>
```

This will set the max height to 680px, if you omit this, it will default to 100% of the window height.

