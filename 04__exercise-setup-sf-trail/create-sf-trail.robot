*** Settings ***

Documentation                  Create a new Salesforce Trail
Library                        QWeb
Library                        DateTime
Library                        String
Library                        BuiltIn
Suite Setup                    Open Browser                about:blank                 chrome
Suite Teardown                 Close All Browsers


*** Variables ***

${email}                       youremailaddress


*** Test Cases ***

Exercise 4 - Do it for me! Create online mailbox
    GoTo                       https://www.mailinator.com/
    ${unique_mail_address}=    Generate Random String      14                          [NUMBERS]temponlinemail
    Type Text                  Enter Public Mailinator Inbox                           ${unique_mail_address}
    Click Text                 GO
    Set Suite Variable         ${email_address}            ${unique_mail_address}@mailinator.com
    Log to Console             ${email_address}



Exercise 4 - Create Salesforce Trial Org
    Open Window
    GoTo                       https://www.salesforce.com/form/signup/freetrial-sales-pe/
    VerifyText                 Start your free sales trial

    Evaluate                   random.seed()               random
    ${exampleFirstName}=       Convert To String           guest1
    ${randomString}=           Generate Random String      length=3-5                  chars=0123456789
    ${FirstName}=              Format String               {}{}                        ${exampleFirstName}        ${randomString}


    TypeText                   First name                  ${FirstName}
    TypeText                   Last name                   user
    TypeText                   Job title                   Learner
    ClickText                  Next

    DropDown                   Employees                   21 - 200 employees
    TypeText                   Company                     xyz
    ClickText                  Next


    TypeText                   Phone                       9999999999
    TypeText                   Email                       ${email_address}
    ClickElement               //div[@class\="checkbox-ui"]

    ClickText                  Submit

Exercise 4 - Do it for me! Read Mail, Verify Account and Set Password
    Switch Window              1
    ${email_count}=            Get Text Count             Welcome to Salesforce
    Log to Console           ${email_count}   
    IF                 '${email_count}' > '${0}'
        Log to Console       I've found an existing mail, let's wait 180 sec for the new mail to arrive.
        Sleep          180
    ELSE
         ClickItemUntil             Welcome to Salesforce       GO                          timeout=180
    END   
    ClickText                  Welcome to Salesforce
    ScrollText                 Again, welcome to Salesforce
    ${sftrial_url}=            GetText                     login-href                  tag=a
    ${sftrial_username}=       GetText                     span-user-name              tag=span
    ClickText                  Verify Account
    Switch Window              3
    Set Suite Variable         ${password}                 TrialSF01!
    TypeText                   New Password                ${password}
    TypeText                   Confirm New Password        ${password}
    TypeText                   Answer                      Krypton
    ClickText                  Change Password
    Log Many                   ${email_address}            ${sftrial_url}              ${sftrial_username}        ${password}
    ClickText                  Close this window
    Set Global Variable        ${login_url}                   ${sftrial_url}
    Set Global Variable        ${home_url}                    ${login_url}/lightning/page/home
    Set Global Variable        ${username}                    ${sftrial_username}
    Set Global Variable        ${password}                    ${password}
    Log To Console             ${login_url} 
    Log To Console             ${home_url}
    Log To Console             ${username}
    Log To Console             ${password}