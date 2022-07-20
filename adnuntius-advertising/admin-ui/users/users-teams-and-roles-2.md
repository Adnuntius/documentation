---
description: Roles determine what actions users are allowed to perform.
---

# Roles

{% embed url="https://youtu.be/u8j-pw7XXZM" %}
How to create a user.
{% endembed %}

While [Teams](../../admin-api/endpoints/teams.md) determines the inventory a user will have access to, Roles determines what actions that user will be able to take to that inventory. Please note that in this section we will show you roles for Adnuntius Advertising only. Click onwards here to see the roles that you can grant users in Adnuntius Designer and [Adnuntius Data](../../../adnuntius-data/user-interface-guide/admin/users-and-teams.md).

![Creating a role](../../../.gitbook/assets/201811-reports-admin-roles.png)

To create a role, go to Admin > Roles and in the upper right corner click "New". Start by giving your role a **Name and description (optional)**.

**Application** lets you choose between Advertising (Adnuntius Advertising) and Banner (Adnuntius Designer). If you choose Banner you will see that there are no more choices, as Adnuntius Designer has one role only. The choices below are for Adnuntius Advertising.

**Role type, scope and permissions** determine the actions that users will be able to take. Below you will find how each combination determine the priviliges that each choice will give a user, split into internal roles and external roles.

* Internal Roles are for employees or trusted partners who should be allowed to access the inventory you've created.
* External roles means that no users will not have access to any of the content you have created.

| Scope   | Permissions and explanation                                                                                                                                                                                                                        |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Network | Manage business: Create, edit and delete advertisers and earnings accounts                                                                                                                                                                         |
| Network | Manage layouts: Create, edit and delete layouts                                                                                                                                                                                                    |
| Network | Manage report templates: Create, edit and delete report templates                                                                                                                                                                                  |
| Network | Manage system: Edit the network and create, edit and delete users, tiers, custom events, roles and teams                                                                                                                                           |
| Network | Download logs: Permission to download our raw ad server logs from our SFTP server (contact [support@adnuntius.com](mailto:support@adnuntius.com) if this is interesting to you)                                                                    |
| Network | View all objects: Can view all objects within the system, including those without a team or found within teams the user does not belong to                                                                                                         |
| Network | Self-service user admin (external only): Allows the creation of users without system administration privileges                                                                                                                                     |
| Team    | Manage advertising: Create, edit and delete orders, line items and creatives                                                                                                                                                                       |
| Team    | Manage publishing: Create, edit and delete sites and ad units                                                                                                                                                                                      |
| Team    | Run reports: Create, edit and delete report schedules and generate reports                                                                                                                                                                         |
| Team    | Self-service team advertising (external only): User has limited set of rights to perform advertising functions and have that available to others in the same team. Cannot be used in conjunction with the Self-Service Own Advertising permission. |
| Team    | Self-service own advertising (external only): User has limited set of rights to perform advertising functions and have that unavailable to others. Cannot be used in conjunction with the Self-Service Team Advertising permission                 |

{% hint style="info" %}
Read more about how you can download logs and access raw data [here](https://adnuntius.com/blog/adnuntius-brings-the-big-data/).
{% endhint %}

{% hint style="info" %}
If you want to create a user that has no network permissions, you can create a network role where all permissions are unchecked (and call it for instance "no permissions"). This way, when you add a user with this network role, they cannot do anything to the network.
{% endhint %}

{% hint style="info" %}
In [Admin > Network](../admin/network.md) you will be able to determine show or hide sections of the user interface that users do not have permissions to edit.
{% endhint %}
