---
description: >-
  This page will describe how to use self service team and self service own roles via the
  Adnuntius Advertising API
---

# Self Service Api

Functionality has been integrated into the API to enable networks to provide self service 
access to users with very limited access, focused on creating advertising collateral
but not publishing.

## Self Service Permissions

We have added three new permissions 

### Self Service User Admin

This network permission grants access to create and update self service users with Self Service Own or Team Advertising permissions.

Dedicated Self Service User Administrators access can be granted without having to also grant access to other Admin functions which
Manage System permission provides.

Users with a role with this network permission will have limited visibility to user lists within the network.  They will
only be able to see users that have roles with the Self Service Own or Team Advertising permissions.

### Self Service Team Advertising

Users with a role with this team permission will be able create and update Orders, Line Items, Creatives and Assets
within the team for which they have the permission.

Self Service Team Advertising users also have read only visibility to Sites as well, everything else is restricted.

### Self Service Own Advertising

Users with a role with this team permission will only be able to create and update Orders, Line Items, Creatives and Assets
that they own.

Self Service Own Advertising users also have read only visibility to Sites as well, everything else is restricted.

## Line Item User State

A new Line Item PROPOSED user state has been added.   A self service user flags that a line item is ready to be published
by setting it to PROPOSED.   Once the user state is set to PROPOSED, the line item and its related creatives and assets 
becomes read only to all self service users.

A non self service ad ops user can take this proposed line item and publish it, or set its state back to SUBMITTED to
allow the self service users to have read write access to make additional changes.

