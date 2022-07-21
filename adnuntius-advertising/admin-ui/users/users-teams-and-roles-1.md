---
description: >-
  Teams define the content on the advertising and/or publishing side that a user
  has access to.
---

# Teams

{% embed url="https://youtu.be/u8j-pw7XXZM" %}
How to create a user.
{% endembed %}

When [creating a user](users-teams-and-roles.md) you will provide access to one or more teams. The [team role](users-teams-and-roles-2.md) for each team will determine what actions they can do within each team.

To create a team, [go to Teams under the Users section](https://admin.adnuntius.com/admin/teams), then click "new" in the upper right corner. Give your new team a **name** and **description** of your choice. Add an **external reference** if you want to match the team with a similar instance in another system.&#x20;

![Creating a new Team.](<../../../.gitbook/assets/202207 Users - New Team.png>)

**Type** lets you choose between "standard", "marketplace advertiser" and "marketplace publisher".&#x20;

* Standard is a team type where you can add most privileges freely when creating a user. For example, if the user is to be a network administrator then this is the team type you want.&#x20;
* Marketplace Advertiser is the team type suited for users whose task involves buying inventory, but not selling any.
* Marketplace Publisher is the team type suited for users whose task involves selling inventory, but not buying any.

If you choose the team type "marketplace advertiser" then you can also set a **tech fee**. This revenue share or CPM based fee will be subtracted from the gross CPM bid of all line items created by users belonging to this team.

Once a team is saved you can add **Sites** and **Folders**.&#x20;

* Sites determine which sites users belonging to the team will have access to. The role will determine what actions they can do to these sites.&#x20;
* Folders determine which folders in Adnuntius Data they can access. The role will determine what actions they can do to these folders.&#x20;

{% hint style="info" %}
Adnuntius supports a many-to-many relationship between teams, where a site can belong to several teams.
{% endhint %}
