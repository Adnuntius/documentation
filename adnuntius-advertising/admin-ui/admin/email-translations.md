---
description: >-
  Email translations let you create customized emails sent by the system to
  users registering and logging into Adnuntius. Here is how you create email
  translations.
---

# Email Translations

{% embed url="https://youtu.be/3dvshNjFj70" caption="How to create an email translation." %}

To create an email translation, go to [https://admin.adnuntius.com/admin/email-translations](https://admin.adnuntius.com/admin/email-translations), then click "new" in the upper right corner. Give the new email translation a **name and description** \(optional\) of your choice. 

Choose **email type**. There are three choices: 

* **New user** specifies the email sent to new users you invite to use Adnuntius Advertising, Adnuntius Data or both. 
* **Forgotten password** specifies the email sent to users who clicked to receive a new password. 
* **Account locked from too many failed log-in attempts** specifies the email sent to users who have their account locked from too many failed log-in attempts. When users gets locked out they will automatically receive an email where the password needs to be reset. 

**Applications**. Choose whether the email translation should go to Adnuntius Data users, Adnuntius Advertising users, or both. 

![Creating an email translation.](../../../.gitbook/assets/email-translations.png)

**Locale** lets you specify the area of the world where this translation should be used. For example, if you want to create a Polish translation to be used in Poland, then simply choose Polish from the dropdown list, and we make sure that the translation will be sent to users located in Poland. 

**Email Subject** lets you specify an email subject. You can choose to use the default subject \(click "Specify email subject" to see what the default message is\), or to provide your own. 

**Email body** lets you lets you write the body text of the email. Please note that if you modify the text, make sure that you don't remove the "link" part shown below, as this is what generates a link to let the user register or set a new password.

```text
{{{link}}}
```

