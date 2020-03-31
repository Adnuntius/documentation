---
description: >-
  Users are persons who have rights to perform certain actions (as defined by
  Roles) to certain parts of content (as defined by Teams). Here is how to
  create a new user with the right privileges.
---

# Users, Teams and Roles

{% embed url="https://youtu.be/u8j-pw7XXZM" caption="How to create a user." %}

## Users

![Example user.](../../../.gitbook/assets/202003-advertising-user.png)

**Email address, Name and Display name**: Apply the user's email address and name. Display name is the name that will be displayed in the upper right corner of the user interface.

{% hint style="info" %}
Adnuntius automatically sends an email inviting the user to the network, and passwords are created automatically. Administrators can change users' password later if needed, but password changes will not be sent to users, so make sure that you notify users about any new passwords you create.
{% endhint %}

Add an **external reference \(optional\)** if you want to match the user with the same user in another system. For instance, if John Doe is registered in another system with user ID 123456, then you can add 123456 as an external reference in Adnuntius. This way you can easily recognize two different entries as the same user across two different systems.

**Roles**: A user needs to be assigned with at least two types of roles; a network role and one team role per team. You will find more information on teams and roles further down, but in short:

* A network role \(the top role in the user interface, in light gray\) determines the actions the user will be able to perform across your entire Adnuntius account. this includes advertisers, earnings accounts, layouts, report templates, users, tiers, custom events, roles and teams. 
* A team role determines the actions that a user will be able to perform to content that is team-specific, which includes orders, line items, creatives, sites, ad units, report schedules and reports.

You can also switch between Adnuntius Advertising, Adnuntius Data and Adnuntius Designer. If you click Adnuntius Designer you can assign a role to the user for the Adnuntius Designer application \(please note that you may have to create a [role](../../admin-api/endpoints/roles.md) first\). 

{% hint style="info" %}
If you want to create a user that has no network permissions, you can create a network role where all permissions are unchecked \(and call it for instance "no permissions"\). This way, when you add a user with this network role, they cannot do anything to the network, only to the team\(s\) they're invited to.
{% endhint %}

{% hint style="info" %}
In [Admin &gt; Network](network.md) you can choose to show or hide sections of the user interface that users do not have permissions to edit.
{% endhint %}

## Teams

Teams let you connect users to a set of sites. This feature allows you to design your organization and account for, for example, multiple sales and ad operations teams that should have access to different sets of inventory. While [Roles ](../../admin-api/endpoints/roles.md)lets you decide the actions that users can take to that inventory, Teams determines what inventory they can perform those actions on.

![Example team](../../../.gitbook/assets/201811-reports-admin-teams.png)

**Name, description \(optional\) and external reference \(optional\)**: Give the team a name and description of your choice. You can also add an external reference if you want to match the team with the same entity in another system.

{% hint style="info" %}
You can design multiple teams with the same sites under them. In other words, Adnuntius supports a many-to-many relationship between teams, where a site can belong to several teams.
{% endhint %}

**Sites**: Add the set of sites you want to put into the team. Once you've chosen one or more sites, and user added to this team will have access to the sites. The actions they can perform to those sites however, will be determined by the [role](../../admin-api/endpoints/roles.md) that you assign to the user for this team.

![When you create an Order in Adnuntius, this order will be registered with a team, and therefore determine the sites this order to run on. In this example the user is part of 4 teams, and can therefore choose between 4 teams when creating an order.](../../../.gitbook/assets/202003-teams-and-orders.gif)

## Roles

While [Teams](../../admin-api/endpoints/teams.md) determines the inventory a user will have access to, Roles determines what actions that user will be able to take to that inventory. Please note that in this section we will show you roles for Adnuntius Advertising only. Click onwards here to see the roles that you can grant users in Adnuntius Designer and [Adnuntius Data](../../../adnuntius-data/user-interface-guide/admin/users-and-teams.md).

![Creating a role](../../../.gitbook/assets/201811-reports-admin-roles.png)

To create a role, go to Admin &gt; Roles and in the upper right corner click "New". Start by giving your role a **Name and description \(optional\)**.

**Application** lets you choose between Advertising \(Adnuntius Advertising\) and Banner \(Adnuntius Designer\). If you choose Banner you will see that there are no more choices, as Adnuntius Designer has one role only. The choices below are for Adnuntius Advertising. 

**Role type, scope and permissions** determine the actions that users will be able to take. Below you will find  how each combination determine the priviliges that each choice will give a user, split into internal roles and external roles. 

* Internal Roles are for employees or trusted partners who should be allowed to access the inventory you've created.
* External roles means that no users will not have access to any of the content you have created.

| Scope | Permissions and explanation |
| :--- | :--- |
| Network | Manage business: Create, edit and delete advertisers and earnings accounts |
| Network | Manage layouts: Create, edit and delete layouts |
| Network | Manage report templates: Create, edit and delete report templates |
| Network | Manage system: Edit the network and create, edit and delete users, tiers, custom events, roles and teams |
| Network | Download logs: Permission to download our raw ad server logs from our SFTP server \(contact [support@adnuntius.com](mailto:support@adnuntius.com) if this is interesting to you\) |
| Network | View all objects: Can view all objects within the system, including those without a team or found within teams the user does not belong to |
| Network | Self-service user admin \(external only\): Allows the creation of users without system administration privileges |
| Team | Manage advertising: Create, edit and delete orders, line items and creatives |
| Team | Manage publishing: Create, edit and delete sites and ad units |
| Team | Run reports: Create, edit and delete report schedules and generate reports |
| Team | Self-service team advertising \(external only\): User has limited set of rights to perform advertising functions and have that available to others in the same team. Cannot be used in conjunction with the Self-Service Own Advertising permission. |
| Team | Self-service own advertising \(external only\): User has limited set of rights to perform advertising functions and have that unavailable to others. Cannot be used in conjunction with the Self-Service Team Advertising permission |

{% hint style="info" %}
Read more about how you can download logs and access raw data [here](https://adnuntius.com/adnuntius-brings-the-big-data/). 
{% endhint %}

{% hint style="info" %}
If you want to create a user that has no network permissions, you can create a network role where all permissions are unchecked \(and call it for instance "no permissions"\). This way, when you add a user with this network role, they cannot do anything to the network.
{% endhint %}

{% hint style="info" %}
In [Admin &gt; Network](network.md) you will be able to determine show or hide sections of the user interface that users do not have permissions to edit.
{% endhint %}

## Common Role Combinations

To be done soon. 

