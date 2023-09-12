*** Settings ***
Resource                        ../resources/common.robot
Suite Setup                     Setup Browser
Suite Teardown                  Close All Browser Sessions

*** Test Cases ***
Exercise 12 - End to End test using Customer Keywords after Step 1
    Appstate                    Home
    Step 1 - Create Lead First Step
    Step 1 - Verify Lead
    Step 1 - Delete Lead

Exercise 12 - End to End test using Customer Keywords after Step 2
    Appstate                    Home
    Step 2 - Create Lead First Step
    Step 2 - Verify Lead
    Step 2 - Delete Lead

*** Keywords ***

    ##############################################################################################################################
    # Step 1 - Group keywords in Custom Keywords
    ##############################################################################################################################

Step 1 - Create Lead First Step
    Launch App                  Sales
    ClickText                   Leads
    VerifyText                  Recently Viewed             timeout=120s
    ClickText                   New                         anchor=Import
    VerifyText                  Lead Information

    UseModal                    On                          # Only find fields from open modal dialog
    Picklist                    Salutation                  Ms.                         #optional
    TypeText                    First Name                  Tina                        #optional
    TypeText                    Last Name                   Smith                       #mandatory
    Picklist                    Lead Status                 Working                     #mandatory
    TypeText                    Phone                       +12234567858449             First Name             #optional
    TypeText                    Company                     Growmore                    Last Name              #mandatory
    TypeText                    Title                       Manager                     Address Information    #optional
    TypeText                    Email                       tina.smith@gmail.com        Rating                 #optional
    TypeText                    Website                     https://www.growmore.com/                          #optional
    Picklist                    Lead Source                 Advertisement               #optional
    ClickText                   Save                        partial_match=False
    UseModal                    Off
    Sleep                       2

Step 1 - Verify Lead
    LaunchApp                   Sales
    ClickText                   Leads
    VerifyText                  Recently Viewed             timeout=120s

    Wait Until Keyword Succeeds                             1 min                       5 sec                  ClickText                   Tina Smith

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

    Wait Until Keyword Succeeds                             1 min                       5 sec                  ClickText                   Tina Smith
    ClickText                   Delete
    ClickText                   Delete
    ClickText                   Close
    Log Screenshot

    ##############################################################################################################################
    # Step 2 - Update Custom Keywords with arguments, making them generic for different test data, re-usable keywords
    ##############################################################################################################################

Step 2 - Create Lead First Step 
    [Arguments]                 ${lead_status}              ${last_name}                ${company}             ${salutation}=${EMPTY}      ${first_name}=${EMPTY}    ${phone}=${EMPTY}    ${title}=${EMPTY}    ${email}=${EMPTY}    ${website}=${EMPTY}    ${lead_source}=${EMPTY}
    UseModal                    On                          # Only find fields from open modal dialog
    Run Keyword If              "${salutation}"!="${EMPTY}"                             Salutation             Ms.                         #optional
    Run Keyword If              "${first_name}"!="${EMPTY}"                             TypeText               First Name                  Tina                      #optional
    TypeText                    Last Name                   ${last_name}                #mandatory
    Picklist                    Lead Status                 ${lead_status}              #mandatory
    Run Keyword If              "${phone}"!="${EMPTY}"      TypeText                    Phone                  +12234567858449             First Name                #optional
    TypeText                    Company                     ${company}                  Last Name              #mandatory
    Run Keyword If              "${title}"!="${EMPTY}"      TypeText                    Title                  Manager                     Address Information       #optional
    Run Keyword If              "${email}"!="${EMPTY}"      TypeText                    Email                  tina.smith@gmail.com        Rating                    #optional
    Run Keyword If              "${website}"!="${EMPTY}"    TypeText                    Website                https://www.growmore.com/                             #optional
    Run Keyword If              "${lead_source}"!="${EMPTY}"                            Picklist               Lead Source                 Advertisement             #optional
    ClickText                   Save                        partial_match=False
    UseModal                    Off
    Sleep                       2

Step 2 - Verify Lead
    [Arguments]
    ClickText                   Details                     anchor=Activity
    VerifyText                  Ms. Tina Smith              anchor=Details
    VerifyText                  Manager                     anchor=Details
    VerifyText                  +12234567858449             anchor=Lead Status
    VerifyField                 Company                     Growmore
    VerifyField                 Website                     https://www.growmore.com/
    Log Screenshot

Step 2 - Delete Lead
    [Arguments]
    LaunchApp                   Sales
    ClickText                   Leads
    VerifyText                  Recently Viewed             timeout=120s

    Wait Until Keyword Succeeds                             1 min                       5 sec                  ClickText                   Tina Smith
    ClickText                   Delete
    ClickText                   Delete
    ClickText                   Close
    Log Screenshot
