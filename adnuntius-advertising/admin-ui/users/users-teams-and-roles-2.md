---
description: Roles determine what actions users are allowed to perform.
---

# Roles

{% embed url="https://youtu.be/u8j-pw7XXZM" %}
How to create a user.
{% endembed %}

While [Teams](../../admin-api/endpoints/teams.md) determines the inventory a user will have access to, Roles determines what actions that user will be able to take to that inventory.&#x20;

## Creating a New Role

To create a role, [go to Roles under the Users section](https://admin.adnuntius.com/admin/roles), then click "new" in the upper right corner. Start by giving your role a **Name** and **description** of your choice.

You can then choose **application**, **role type** and **scope** to design your role. You will find a deeper explanation of all choices in this Google Worksheet: [https://docs.google.com/spreadsheets/d/1M\_YV-UNw9fV9Jk7hcsjc98J4Eh604rfdhtVrCRaQPao/edit#gid=0](https://docs.google.com/spreadsheets/d/1M\_YV-UNw9fV9Jk7hcsjc98J4Eh604rfdhtVrCRaQPao/edit#gid=0)&#x20;

{% hint style="info" %}
If you want to create a user that has no network permissions, you can create a network role where all permissions are unchecked (and call it for instance "no permissions"). This way, when you add a user with this network role, they cannot do anything to the network.
{% endhint %}

{% hint style="info" %}
In [Admin > Network](../admin/network.md) you will be able to determine show or hide sections of the user interface that users do not have permissions to edit.
{% endhint %}

## Typical Role Configurations

In order to make it easier to create new roles, here are some typical role configurations that may help you along.

| Role                                                                                                              | Details                                                                                                                                                                                                              |
| ----------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Marketplace Advertiser: an agency or advertiser that should be able to buy inventory from some or all publishers. | [https://docs.google.com/spreadsheets/d/1M\_YV-UNw9fV9Jk7hcsjc98J4Eh604rfdhtVrCRaQPao/edit#gid=1644839331](https://docs.google.com/spreadsheets/d/1M\_YV-UNw9fV9Jk7hcsjc98J4Eh604rfdhtVrCRaQPao/edit#gid=1644839331) |
| Marketplace Publisher: a publisher that should be able to sell its inventory through your marketplace.            | [https://docs.google.com/spreadsheets/d/1M\_YV-UNw9fV9Jk7hcsjc98J4Eh604rfdhtVrCRaQPao/edit#gid=1634715789](https://docs.google.com/spreadsheets/d/1M\_YV-UNw9fV9Jk7hcsjc98J4Eh604rfdhtVrCRaQPao/edit#gid=1634715789) |

More role configurations will soon be added.
