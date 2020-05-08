---
description: >-
  Adnuntius Buying Network is a private marketplace technology that allows
  buyers and publishers to connect in automated buying a selling of ads.
---

# Adnuntius Buying Network

This page is divided into two; one section is intended for buyers who want to start buying advertising using the Adnuntius Buying Network, the other section is intended for publishers who want to start selling their ad inventory through the Adnuntius Buying Network.

## Buyers

This documentation is intended to educate you as an ad buyer on how to use the Adnuntius Buying Network. If you are a publisher who is looking to set up your inventory for sale, please see the Adnuntius Buying Network: Publishers page. 

Getting set up is fast and easy. Here are the main steps, and links to more detailed information for each step.

<table>
  <thead>
    <tr>
      <th style="text-align:left">What and Why</th>
      <th style="text-align:left">Choices</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1 Get access to the Adnuntius Buying Network to ensure that you get an
        advertiser account, user access and the right privileges. Just email us
        at <a href="mailto:support@adnuntius.com">support@adnuntius.com</a>, and
        we will get you started.</td>
      <td style="text-align:left"><a href="mailto:support@adnuntius.com">Email us</a>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">2 Create your first order. An order is a folder for line items. If you
        are an agency, you can use orders to separate your advertising clients
        from one another.</td>
      <td style="text-align:left">
        <p><a href="../adnuntius-advertising/admin-ui/advertising/orders.md">Documentation</a>
        </p>
        <p><a href="https://admin.adnuntius.com/orders">Start creating</a>
        </p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">3 Create your first line item. A line A line item determines start and
        end dates, delivery objectives (impressions, clicks or conversions), pricing,
        targeting, creative delivery and prioritization.</td>
      <td style="text-align:left">
        <p><a href="../adnuntius-advertising/admin-ui/advertising/line-items.md">Documentation</a>
        </p>
        <p><a href="https://admin.adnuntius.com/line-items">Start creating</a>
        </p>
      </td>
    </tr>
  </tbody>
</table>If you want to use Adnuntius Buying Network to create private marketplaces together with publishing partners, then continue reading below on how to set this up together with your publishing partners. You can also reach out to us for help with this work, just send us a couple of lines on support@adnuntius.com and we will reach out with a plan. Your success is our success!

{% hint style="info" %}
Make sure to ask your publishing partners if they are already set up with the Adnuntius Buying Network. If they are, then they don’t have to repeat this work.
{% endhint %}

## Publishers

This documentation is intended to educate you as a publisher on how to set up your inventory for sale on, and how to use the Adnuntius Buying Network. If you are an buyer who is looking to buy ads, please see the Adnuntius Buying Network: Buyers page.

{% hint style="info" %}
You don’t have to use Adnuntius Advertising for Publishers as your primary ad server to access the Adnuntius Buying Network \(you can for instance use Google Ad Manager\).
{% endhint %}

Getting set up is fast and easy. Here are the main steps, and links to more detailed information for each step.

<table>
  <thead>
    <tr>
      <th style="text-align:left">What and Why</th>
      <th style="text-align:left">How</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1 Get access to the Adnuntius Buying Network. This ensures that you will
        get set up with an earnings account, user access and the right privileges.
        Just email us at <a href="mailto:support@adnuntius.com">support@adnuntius.com</a>,
        and we will get you started.</td>
      <td style="text-align:left"><a href="mailto:support@adnuntius.com">Email us</a>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">2 Create one or more sites. Sites ensure that you can structure placements
        according to your site structure, get performance reports per site, and
        more. Sites will be available and visible to buyers for targeting.</td>
      <td
      style="text-align:left">
        <p><a href="../adnuntius-advertising/admin-ui/inventory/sites.md">Documentation</a>
        </p>
        <p><a href="https://admin.adnuntius.com/sites">Start creating</a>
        </p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">3 Create one or more ad units. Ad units are placements that will go onto
        your site to ensure that advertisers can serve ads. Ad units will be available
        and visible to buyers for targeting.</td>
      <td style="text-align:left">
        <p><a href="../adnuntius-advertising/admin-ui/inventory/adunits-1.md">Documentation</a>
        </p>
        <p><a href="https://admin.adnuntius.com/ad-units">Start creating</a>
        </p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">4 Set up requests from your site. This is the technical part that helps
        developers set up ad requests from your pages using prebid.</td>
      <td style="text-align:left"><a href="../other-useful-information/header-bidding-implementation.md">Documentation</a>
      </td>
    </tr>
  </tbody>
</table>Are you as a publisher looking to use the Adnuntius Buying Network to take back revenue currently lost to programmatic advertising? Then you may have to get advertisers and agencies onboard as well. We are happy to help you with this; reach out to us at [support@adnuntius.com](mailto:support@adnuntius.com) and we will reach out to you with a plan. We have experience selling the concept to buyers, and we are happy to help you with explaining the benefits of the Adnuntius Buying Network.

## Network Operators

If you are running your own private network, then you will need to know some key administration tasks. This guide takes you through these.

### Creating Publishing Users

Whenever you get a new publisher onboard your network, you can create users for them so that they can access and manage their own publishing inventory. Here is how you create roles, teams and users with the right permissions.

#### Roles

This is a one-time setup job, so if you already have the roles below in place, you can skip this point whenever you set up new users. You will need two roles in order to create users with the right permissions; a network role and a team role. 

<table>
  <thead>
    <tr>
      <th style="text-align:left">Role</th>
      <th style="text-align:left">Choices</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1 Admin role. Go to Admin &gt; Roles and click &#x201C;new&#x201D;. Give
        the role a name of your choice (for instance &#x201C;Network Publisher
        Admin&#x201D;, choose role type &#x201C;internal&#x201D;, role scope &#x201C;network&#x201D;
        and then finally the permission &#x201C;AX Publisher Admin&#x201D;. Then
        click save.</td>
      <td style="text-align:left">
        <p><a href="https://admin.adnuntius.com/admin/roles">Create</a>
        </p>
        <p><a href="../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md">More</a>
        </p>
        <p></p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">2 Team role. Go to Admin &gt; Roles and click &#x201C;new&#x201D;. Give
        the role a name of your choice (for instance &#x201C;Network Publisher
        Admin&#x201D;, choose role type &#x201C;internal&#x201D;, role scope &#x201C;team&#x201D;
        and then finally the permission &#x201C;AX Publisher&#x201D;. Then click
        save.</td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>#### Teams

Once your roles are set up, you can proceed to create teams. Teams determine the content that users shall have access to. Whenever you bring a new publisher onboard you should create a new team, so that invited users can access this inventory, but not the inventory of other publishers, or buyers.

<table>
  <thead>
    <tr>
      <th style="text-align:left">Step</th>
      <th style="text-align:left">Choices</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1 Go to Admin &gt; Teams and click &#x201C;new&#x201D;. Give the team
        a name of your choice, for example &#x201C;Team [publisherName]&#x201D;.</td>
      <td
      style="text-align:left">
        <p><a href="https://admin.adnuntius.com/admin/teams">Create</a>
        </p>
        <p><a href="../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md">More</a>
        </p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">2 Choose type &#x201C;AX Publisher&#x201D;.</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">3 If you have created the publisher&#x2019;s site(s) on behalf of the
        publisher, then you can choose those sites to ensure that the publisher
        will have access to these. If you want to let publishers create this content
        on their own, just click save without choosing any sites.</td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>#### Users

Once you have created a team for the publisher, you can go to the last step, which is to create a user. Please note that once you have created one user for the publisher, that user can invite more users with the same permissions. So, you only need to create the first user before letting that user create more.

<table>
  <thead>
    <tr>
      <th style="text-align:left">Step</th>
      <th style="text-align:left">Choices</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1 Go to Admin &gt; Users and click &#x201C;new&#x201D;. Provide the user&#x2019;s
        email address, name and display name (display name is the name that will
        be displayed in the upper right corner of the user interface).</td>
      <td
      style="text-align:left">
        <p><a href="https://admin.adnuntius.com/admin/users">Create</a>
        </p>
        <p><a href="../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md">More</a>
        </p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">2 Choose the advertising network role that you created earlier (&#x201C;Network
        Publisher Admin&#x201D; if you followed the naming example above).</td>
      <td
      style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">3 Under the team you&#x2019;ve created for the user, choose the role you
        created earlier (&#x201C;Team Publisher Admin&#x201D; if you followed the
        naming example above).</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">4 Lastly, click save. When you&#x2019;ve clicked save an invitation email
        will be automatically be sent to the user.</td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>### Creating Advertiser Users

Whenever you get a new buyer onboard your network, you can create users for them so that they can access and manage their own advertisers \(for agencies\) and campaigns. Here is how you create roles, teams and users with the right permissions.

#### Roles

This is a one-time setup job, so if you already have the roles below in place, you can skip this point whenever you set up new users. You will need two roles in order to create users with the right permissions; a network role and a team role.

<table>
  <thead>
    <tr>
      <th style="text-align:left">Role</th>
      <th style="text-align:left">Choices</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1 Admin role. Go to Admin &gt; Roles and click &#x201C;new&#x201D;. Give
        the role a name of your choice (for instance &#x201C;Network Advertiser
        Admin&#x201D;, choose role type &#x201C;internal&#x201D;, role scope &#x201C;network&#x201D;
        and then finally the permission &#x201C;AX Advertiser Admin&#x201D;. Then
        click save.</td>
      <td style="text-align:left">
        <p><a href="https://admin.adnuntius.com/admin/roles">Create</a>
        </p>
        <p><a href="../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md">More</a>
        </p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">2 Team role. Go to Admin &gt; Roles and click &#x201C;new&#x201D;. Give
        the role a name of your choice (for instance &#x201C;Network Advertiser
        Admin&#x201D;, choose role type &#x201C;internal&#x201D;, role scope &#x201C;team&#x201D;
        and then finally the permission &#x201C;AX Advertiser&#x201D;. Then click
        save.</td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>#### Teams

Once your roles are set up, you can proceed to create teams. Teams determine the content that users shall have access to. Whenever you bring a new advertiser onboard you should create a new team, so that invited users can access this inventory, but not the inventory of other advertisers, or publishers.

<table>
  <thead>
    <tr>
      <th style="text-align:left">What and Why</th>
      <th style="text-align:left">Choices</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1 Go to Admin &gt; Teams and click &#x201C;new&#x201D;. Give the team
        a name of your choice, for example &#x201C;Team [advertiserName]&#x201D;.</td>
      <td
      style="text-align:left">
        <p><a href="https://admin.adnuntius.com/admin/teams">Create</a>
        </p>
        <p><a href="../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md">More</a>
        </p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">2 Choose type &#x201C;AX Advertiser&#x201D;. Then click save.</td>
      <td
      style="text-align:left"></td>
    </tr>
  </tbody>
</table>#### Users

Once you have created a team for the advertiser, you can go to the last step, which is to create a user. Please note that once you have created one user for the advertiser, that user can invite more users with the same permissions. So, you only need to create the first user before letting that user create more.

<table>
  <thead>
    <tr>
      <th style="text-align:left">What and Why</th>
      <th style="text-align:left">Choices</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1 Go to Admin &gt; Users and click &#x201C;new&#x201D;. Provide the user&#x2019;s
        email address, name and display name (display name is the name that will
        be displayed in the upper right corner of the user interface).</td>
      <td
      style="text-align:left">
        <p><a href="https://admin.adnuntius.com/admin/users">Create</a>
        </p>
        <p><a href="../adnuntius-advertising/admin-ui/admin/users-teams-and-roles.md">More</a>
        </p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">2 Choose the advertising network role that you created earlier (&#x201C;Network
        Advertiser Admin&#x201D; if you followed the naming example above).</td>
      <td
      style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">3 Under the team you&#x2019;ve created for the user, choose the role you
        created earlier (&#x201C;Team Advertiser Admin&#x201D; if you followed
        the naming example above).</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">4 Lastly, click save. When you&#x2019;ve clicked save an invitation email
        will be automatically be sent to the user.</td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>### Training New Users

If you want to provide new users with written instructions on how to use the platform as advertisers or publishers, you can simply send them the link to this page. The two first sections of this page provide new users with a checklist training program that takes them through the steps to becoming familiar and comfortable with the system.

### Contractual Relationships

Whenever you get a new advertiser or publisher on board, you should sign a contract with them that regulates pricing, service level agreements and more. Adnuntius provides standard contracts to its operating partners, that may be used to facilitate this job. If you have not received these templates already, please send an email to [support@adnuntius.com](mailto:support@adnuntius.com) and we will help you out. 

