---
description: >-
  Teams define the content on the advertising and/or publishing side that a user
  should have access to.
---

# Teams

{% embed url="https://youtu.be/u8j-pw7XXZM" %}
How to create a user.
{% endembed %}

Teams let you connect users to a set of sites. This feature allows you to design your organization and account for, for example, multiple sales and ad operations teams that should have access to different sets of inventory. While [Roles ](../../admin-api/endpoints/roles.md)lets you decide the actions that users can take to that inventory, Teams determines what inventory they can perform those actions on.

To create a team, go to [https://admin.adnuntius.com/admin/teams](https://admin.adnuntius.com/admin/teams) and click "New" in the upper right corner.

![Example team](../../../.gitbook/assets/201811-reports-admin-teams.png)

**Name, description (optional) and external reference (optional)**: Give the team a name and description of your choice. You can also add an external reference if you want to match the team with the same entity in another system.

{% hint style="info" %}
You can design multiple teams with the same sites under them. In other words, Adnuntius supports a many-to-many relationship between teams, where a site can belong to several teams.
{% endhint %}

**Sites**: Add the set of sites you want to put into the team. Once you've chosen one or more sites, and user added to this team will have access to the sites. The actions they can perform to those sites however, will be determined by the [role](../../admin-api/endpoints/roles.md) that you assign to the user for this team.

![When you create an Order in Adnuntius, this order will be registered with a team, and therefore determine the sites this order to run on. In this example the user is part of 4 teams, and can therefore choose between 4 teams when creating an order.](../../../.gitbook/assets/202003-teams-and-orders.gif)
