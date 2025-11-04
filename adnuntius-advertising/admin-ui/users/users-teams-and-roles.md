---
description: Users are persons who can log into Adnuntius.
---

# Users

{% embed url="https://youtu.be/u8j-pw7XXZM" %}
How to create a user.
{% endembed %}

To create a user, [go to Users under the Users section](https://admin.adnuntius.com/admin/users) and click "new" in the upper right corner. Enter an **email address**, a **name** and **display name**. The display name is the name that will be displayed in the upper right corner of the user interface.

Add the user's **locale** to ensure that numbers and date formats are what the user is used to.&#x20;

Add an **external reference** if you want to match the user with the same user in another system. For instance, if John Doe is registered in another system with user ID 123456, then you can add 123456 as an external reference in Adnuntius. This way you can easily recognize two different entries as the same user across two different systems.

Next you need to add the user's roles. Please see the image below for references to the following points.

1. The network you belong to has certain functions that apply to the entire network, and the **network role** determines which of these actions the user shall be able to do. Example network privileges includes creating layouts, and creating dashboards for the entire network. [Learn more about roles](users-teams-and-roles-2.md).
2. **Teams** determine certain content that the user should have access to. For example, Orders (buy-side) will belong to a team, and if the user belongs to that team then they have access to that Order. Similarly, if a user has access to a Site (sell-side) it is because the team allows them to have that access. [Learn more about teams](users-teams-and-roles-1.md).&#x20;
3. While teams determine what content the user has access to, the **team role** determines what actions they can do. For example, they may have the right to view the content, but not make any changes to it. [Learn more about roles](users-teams-and-roles-2.md).

![](<../../../.gitbook/assets/202207 Users - User.png>)



When you have saved, Adnuntius automatically sends an email inviting the user to the network, and to set a password. Administrators can change users' password later if needed, but password changes will not be sent to users, so make sure that you notify users about any new passwords you create.

<figure><img src="../../../.gitbook/assets/202511 Invite Email.png" alt=""><figcaption><p>Example invite email sent from Adnuntius</p></figcaption></figure>

The invite email will expire after 1 hour, but the receiver can request a new email by clicking "visit here". Please also note that by registering the user will agree to our privacy policy located at [https://adnuntius.com/resources/privacy-policy](https://adnuntius.com/resources/privacy-policy).

{% hint style="info" %}
Please note that, depending on your privileges, some of the elements explained on this page may not be visible to you. Please ask us any questions at support@adnuntius.com.
{% endhint %}

{% hint style="info" %}
In [Admin > Network](../admin/network.md) you can choose to show or hide sections of the user interface that users do not have permissions to edit.
{% endhint %}
