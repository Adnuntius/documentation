# Targeting Options

The ad server's default option is to deliver ads to every ad unit that it will fit. Sometimes that will not be the best solution for you. For these scenarios we have added the option of targeting options. Below is an example of the default behavior for the ad unit.

![](../../../../.gitbook/assets/image%20%2822%29.png)

The values are as follows:

| Value | Definition |
| :--- | :--- |
| Can have no targeting | Line items with no targeting can deliver to this ad unit \(useful for backfill or network-wide ads\) |
| Must have Targeting | Only line items with some kind of targeting can deliver to this ad unit |
| Must match type | Only line items with particular types of targeting can deliver to this ad unit |

the last targeting option \(Must match type\) will allow you to select what targeting you will allow for this ad unit. It will open a list that looks like this:

![](../../../../.gitbook/assets/image%20%2817%29.png)

In the instance above only ad unit targeting is selected. This will only allow line items with an ad unit targeting to be showed for this ad unit. If this would be applied to an ad unit it would not show any ads unless it´s explicitly targeted. You can of course add more targeting to the line item to reduce the scope of users to target.

