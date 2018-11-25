# Admin

## Users and User Profile

The list of users are all users who have rights to perform certain actions \(as defined by [Roles](admin.md#roles)\) to certain parts of content \(as defined by [Teams](admin.md#teams)\). Here is how to create a new user.

![Creating a new user](../.gitbook/assets/201811-reports-admin-user%20%281%29.png)

**Email address, Name, Display name and Password**: Apply the user's email address, name and password. Display name is the name that will be displayed in the upper right corner of the user interface.

{% hint style="info" %}
Please note that Adnuntius does not automatically send an email inviting the user to the network. So make sure that you inform the user about his/her new user and password. 
{% endhint %}

**External reference \(optional\)**: Add an external reference \(optional\) if you want to match the user with the same person in another system. 

**Roles**: A user needs to be assigned with at least two types of roles; a network role and one team role per team. You will find more information on [teams](admin.md#teams) and [roles ](admin.md#roles)later, but in short: 

* A network role \(the top role in the user interface, in light gray\) determines the actions the user will be able to perform to advertisers, earnings accounts, layouts, report templates, users, tiers, custom events, roles and teams \(these are all functions that apply across your entire Adnuntius account\). 
* A team role determines the actions that a user will be able to perform to orders, line items, creatives, sites, ad units, report schedules and reports \(these are all functions that apply to a specific team, i.e. a set of sites\).

{% hint style="info" %}
If you do not want your new user to have access to any network functions, you can create a role where all permissions are unchecked.  
{% endhint %}

{% hint style="info" %}
In [Admin &gt; Network](admin.md#network) you will be able to determine show or hide sections of the user interface that users do not have permissions to edit.
{% endhint %}

## Notification Preferences

Notification preferences allow you to subscribe to various changes, meaning that you can choose to receive emails when something happens to line items and reports. You can choose to subscribe to a broad set of line item or report preferences \(top\), or to specific notifications. Here is an explanation to some of the terms.

![Notification preferences](../.gitbook/assets/201811-reports-admin-notification-preferences.png)

**Severity level** allows you to choose the types of notifications Adnuntius should send you. For instance, if you choose _Information_ you will receive notifications about line items ready to deliver or starting to run. If you choose _Warning_ you will receive notifications about for instance line items that are not starting to deliver even though it is past the start date. _Error_ will give you notifications about for instance reports that fail to execute for any reason. 

**Notification method** lets you determine if Adnuntius should notify you per email or user interface. If you choose UI then you will find notifications in the right-most column of the user interface, when clicking the "i" icon.

## Teams

Teams let you connect users to a set of sites. This feature allows you to design your organization and account for, for example, multiple sales and ad operations teams that should have access to different sets of inventory. 

![Example team](../.gitbook/assets/201811-reports-admin-teams.png)

{% hint style="info" %}
You can design multiple teams with the same sites under them. In other words, Adnuntius supports a many-to-many relationship between teams, where a site can belong to several teams. 
{% endhint %}

**Name, description and external reference**:  Give the team a name and description of your choice. You can also add an external reference \(optional\) if you want to match the team with the same entity in another system.

**Sites**: Add the set of sites you want to put into the team. Once you've chosen one or more sites, and user added to this team will have access to the sites. The actions they can perform to those sites however, will be determined by the role that you assign to the user for this team. 

**Team members** shows you the users currently assigned to this team. 

## Roles

Some text.

## Layouts

Some text.

## Custom Events

Some text.

## Reference Data

Some text.

## Context Service Connections

Some text.

## External Demand Sources

Some text.

## Extension Connections

Some text.

## Tiers

Some text.

## Network

Some text.

