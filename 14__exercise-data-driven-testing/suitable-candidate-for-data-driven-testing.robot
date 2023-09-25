*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                Close All Browser Sessions


*** Test Cases ***
Exercise 14 - Data Driven Testing - Entering a Lead Tina Smith
    [tags]                    Lead
    Appstate                  Home
    Launch App                 Sales

    ClickText                 Leads
    VerifyText                Recently Viewed             timeout=120s
    ClickText                 New                        anchor=Import
    VerifyText                Lead Information
    UseModal                  On                          # Only find fields from open modal dialog

    Picklist                  Salutation                  Ms.
    TypeText                  First Name                  Tina
    TypeText                  Last Name                   Smith
    Picklist                  Lead Status                 Working
    TypeText                  Phone                       +12234567858449             First Name
    TypeText                  Company                     Growmore                    Last Name
    TypeText                  Title                       Manager                     Address Information
    TypeText                  Email                       tina.smith@gmail.com        Rating
    TypeText                  Website                     https://www.growmore.com/

    ClickText                 Lead Source
    ClickText                 Advertisement
    ClickText                 Save                        partial_match=False
    UseModal                  Off

Exercise 14 - Data Driven Testing - Entering a Lead Billy Parker
    [tags]                    Lead
    Appstate                  Home
    Launch App                 Sales

    ClickText                 Leads
    VerifyText                Recently Viewed             timeout=120s
    ClickText                 New                        anchor=Import
    VerifyText                Lead Information
    UseModal                  On                          # Only find fields from open modal dialog

    Picklist                  Salutation                  Mr.
    TypeText                  First Name                  Billy
    TypeText                  Last Name                   Parker
    Picklist                  Lead Status                 Working
    TypeText                  Phone                       +12234523158419             First Name
    TypeText                  Company                     Apple                       Last Name
    TypeText                  Title                       Manager                     Address Information
    TypeText                  Email                       billy.parker@gmail.com        Rating
    TypeText                  Website                     https://www.apple.com/

    ClickText                 Lead Source
    ClickText                 Advertisement
    ClickText                 Save                        partial_match=False
    UseModal                  Off

Exercise 14 - Data Driven Testing - Entering a Lead John Connor
    [tags]                    Lead
    Appstate                  Home
    Launch App                 Sales

    ClickText                 Leads
    VerifyText                Recently Viewed             timeout=120s
    ClickText                 New                        anchor=Import
    VerifyText                Lead Information
    UseModal                  On                          # Only find fields from open modal dialog

    Picklist                  Salutation                  Mr.
    TypeText                  First Name                  John
    TypeText                  Last Name                   Connor
    Picklist                  Lead Status                 Working
    TypeText                  Phone                       +12234234578449             First Name
    TypeText                  Company                     Google                      Last Name
    TypeText                  Title                       Manager                     Address Information
    TypeText                  Email                       tina.smith@gmail.com        Rating
    TypeText                  Website                     https://www.growmore.com/

    ClickText                 Lead Source
    ClickText                 Advertisement
    ClickText                 Save                        partial_match=False
    UseModal                  Off