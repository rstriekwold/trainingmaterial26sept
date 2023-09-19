*** Settings ***
Resource                        common.robot

*** Keywords ***
Create Lead 
    [Arguments]                 ${lead_status}              ${last_name}                ${company}             ${salutation}=${EMPTY}      ${first_name}=${EMPTY}    ${phone}=${EMPTY}           ${title}=${EMPTY}           ${email}=${EMPTY}           ${website}=${EMPTY}         ${lead_source}=${EMPTY}
    Launch App                  Sales
    ClickText                   Leads
    VerifyText                  Recently Viewed             timeout=120s
    ClickText                   New                         anchor=Import               delay=3s
    VerifyText                  Lead Information
    UseModal                    On                          # Only find fields from open modal dialog
    Run Keyword If              '${salutation}'!='${EMPTY}'                             Picklist               Salutation                  ${salutation}                       #optional
    Run Keyword If              '${first_name}'!='${EMPTY}'                             TypeText               First Name                  ${first_name}                      #optional
    TypeText                    Last Name                   ${last_name}                #mandatory
    Picklist                    Lead Status                 ${lead_status}              #mandatory
    Run Keyword If              '${phone}'!='${EMPTY}'      TypeText                    Phone                  ${phone}             First Name                #optional
    TypeText                    Company                     ${company}                  Last Name              #mandatory
    Run Keyword If              '${title}'!='${EMPTY}'      TypeText                    Title                  ${title}                     Address Information       #optional
    Run Keyword If              '${email}'!='${EMPTY}'      TypeText                    Email                  ${email}        Rating                    #optional
    Run Keyword If              '${website}'!='${EMPTY}'    TypeText                    Website                ${website}                             #optional
    Run Keyword If              '${lead_source}'!='${EMPTY}'                            Picklist               Lead Source                 ${lead_source}             #optional
    ClickText                   Save                        partial_match=False
    UseModal                    Off
    Sleep                       2
    Log Screenshot

Verify Lead
    [Arguments]                 ${lead_status}=${EMPTY}     ${last_name}=${EMPTY}       ${company}=${EMPTY}    ${salutation}=${EMPTY}      ${first_name}=${EMPTY}    ${phone}=${EMPTY}           ${title}=${EMPTY}           ${email}=${EMPTY}           ${website}=${EMPTY}         ${lead_source}=${EMPTY}
    Launch App                  Sales
    ClickText                   Leads
    VerifyText                  Recently Viewed             timeout=120s
    Wait Until Keyword Succeeds                             1 min                       5 sec                  ClickText                   ${first_name} ${last_name}
    ClickText                   Details                     anchor=Activity
    Log Many                    ${salutation}               ${first_name}               ${last_name}
    ${full_name}=               Catenate                    ${salutation}               ${first_name}          ${last_name}
    Log                         ${full_name}
    VerifyText                  ${full_name}                anchor=Details
    VerifyText                  ${title}                    anchor=Details
    VerifyText                  ${phone}                    anchor=Lead Status
    VerifyField                 Company                     ${company}
    VerifyField                 Website                     ${website}
    Log Screenshot

Delete Lead
    [Arguments]                 ${first_name}               ${last_name}
    Launch App                  Sales
    ClickText                   Leads
    VerifyText                  Recently Viewed             timeout=120s
    Log Screenshot
    Wait Until Keyword Succeeds                             1 min                       5 sec                  ClickText                   ${first_name} ${last_name}
    ClickText                   Delete
    ClickText                   Delete
    ClickText                   Close
    Log Screenshot