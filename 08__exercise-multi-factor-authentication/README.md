# Exercise 8 - Multi Factor Authentication in Salesforce

Welcome to **Exercise 8**. Let's setup Multi Factor Authentication (MFA). Organizations implement security differently. Some enforce MFA, some don't.

# Purpose

The purpose of this exercise is to learn how to setup MFA and run tests with MFA enabled. If you don't need it now, you might need it in the future. Knowledge is key!

# Prerequisite(s)

- Access to a Salesforce Trial Org. is required. (exercise 4)
- Access to a Copado Robotic Testing Organization is required
- Access to a Project
- Robot created

# Learning Objectives

- Enable MFA Authentication using OTP
- Login to Salesfore with MFA

# Enable MFA Authentication using OTP

1. Login to your Salesforce Trial Org.

2. Navigate to Setup (at the top right gear icon next your profile avatar)

3. Using the quicksearch search for Users

4. Go to Users

5. Click on your User to open User Details

6. Follow the instruction here: [MFA Setup](https://docs.copado.com/resources/Storage/copado-robotic-testing-publication/CRT%20Site/qwords-reference/current/qwords/_attachments/QForce.html#mfa-setup)

> **Note:** Complete the QR scan process with your phone authenticator app.

# Login to Salesfore with MFA

1. Create a new empty suite **exercise 8 MFA**

2. Create a folder in the root named **exercise-8-mfa**

3. In this foler, create file mfa-login.robot and copy the contents from here [mfa-login.robot](https://bitbucket.org/copado-robotic-testing/training-exercises/raw/7b1f9d00118d7a222d4ea2aa6b3a3926dfa3bef4/exercise-8-mfa/mfa-login.robot)

4. Create a folder in root named **resources**

5. In this foler, create file common.robot and copy the contents from here [common.robot](https://bitbucket.org/copado-robotic-testing/training-exercises/raw/09baec6c0a5766831b6ba7e4f6a37f3e3a09e043/resources/common.robot)

6. Uncomment lines 40 - 47 to enable MFA login.

> **Note:** MFA is only required for unknown devices or browsers, once verified it is not asked for. To enforce MFA in your SF trial, Setup -> Identity -> Identity Verification -> Require MFA for all direct UI logins to your Salesforce org
