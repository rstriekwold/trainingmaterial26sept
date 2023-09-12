*** Settings ***
Resource                        ../resources/common.robot
Suite Setup                     Setup Browser
Suite Teardown                  Close All Browser Sessions

*** Test Cases ***
Exercise 12 - Calling Custom Keywords
    [Setup]                     Create Lead
    Appstate                    Home
    Launch App                  Sales
    ClickText                   Leads
    VerifyText                  Recently Viewed             timeout=120s
    ClickText                   New                         anchor=Import
    VerifyText                  Lead Information
    Create Lead

    VerifyText                  Tina Smith
    VerifyText                  Manager
    VerifyText                  Growmore
    [Teardown]                  Delete Lead

Exercise 10 - Overridden Test Teardown doing nothing
    ClickText                   Leads
    [Teardown]                  NONE

*** Keywords ***

##############################################################################################################################
# Step 1 - Group keywords in Custom Keywords
##############################################################################################################################

Step 1 - Create Lead First Step                 
    UseModal                    On                          # Only find fields from open modal dialog
    Picklist                    Salutation                  Ms.    #optional
    TypeText                    First Name                  Tina    #optional
    TypeText                    Last Name                   Smith    #mandatory
    Picklist                    Lead Status                 Working    #mandatory
    TypeText                    Phone                       +12234567858449             First Name    #optional
    TypeText                    Company                     Growmore                    Last Name                #mandatory
    TypeText                    Title                       Manager                     Address Information      #optional
    TypeText                    Email                       tina.smith@gmail.com        Rating                  #optional
    TypeText                    Website                     https://www.growmore.com/    #optional
    Picklist                    Lead Source                 Advertisement                #optional
    ClickText                   Save                        partial_match=False
    UseModal                    Off
    Sleep                       2

Step 1 - Verify Lead
    ClickText                   Details                     anchor=Activity
    VerifyText                  Ms. Tina Smith              anchor=Details
    VerifyText                  Manager                     anchor=Details
    VerifyText                  +12234567858449             anchor=Lead Status
    VerifyField                 Company                     Growmore
    VerifyField                 Website                     https://www.growmore.com/
    Log Screenshot

Step 1 - Delete Lead
    LaunchApp                   Sales
    ClickText                   Leads
    VerifyText                  Recently Viewed             timeout=120s

    Wait Until Keyword Succeeds                             1 min                       5 sec                  ClickText      Tina Smith
    ClickText                   Delete
    ClickText                   Delete
    ClickText                   Close
    Log Screenshot

##############################################################################################################################
# Step 2 - Update Custom Keywords with arguments, making them generic for different test data, re-usable keywords
##############################################################################################################################

Step 2 - Create Lead First Step                 
    UseModal                    On                          # Only find fields from open modal dialog
    Picklist                    Salutation                  Ms.    #optional
    TypeText                    First Name                  Tina    #optional
    TypeText                    Last Name                   Smith    #mandatory
    Picklist                    Lead Status                 Working    #mandatory
    TypeText                    Phone                       +12234567858449             First Name    #optional
    TypeText                    Company                     Growmore                    Last Name                #mandatory
    TypeText                    Title                       Manager                     Address Information      #optional
    TypeText                    Email                       tina.smith@gmail.com        Rating                  #optional
    TypeText                    Website                     https://www.growmore.com/    #optional
    Picklist                    Lead Source                 Advertisement                #optional
    ClickText                   Save                        partial_match=False
    UseModal                    Off
    Sleep                       2

Step 2 - Verify Lead
    ClickText                   Details                     anchor=Activity
    VerifyText                  Ms. Tina Smith              anchor=Details
    VerifyText                  Manager                     anchor=Details
    VerifyText                  +12234567858449             anchor=Lead Status
    VerifyField                 Company                     Growmore
    VerifyField                 Website                     https://www.growmore.com/
    Log Screenshot

Step 2 - Delete Lead
    LaunchApp                   Sales
    ClickText                   Leads
    VerifyText                  Recently Viewed             timeout=120s

    Wait Until Keyword Succeeds                             1 min                       5 sec                  ClickText      Tina Smith
    ClickText                   Delete
    ClickText                   Delete
    ClickText                   Close
    Log Screenshot
