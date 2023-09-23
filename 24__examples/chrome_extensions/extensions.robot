*** Settings ***
Library               QWeb
Library               OperatingSystem
Suite Setup           Open Browser    about:blank    chrome
# Suite Setup     OpenBrowser     http://howbigismybrowser.com/   chrome   --user-data-dir\=C:\\temp,--profile-directory\=Test2
Suite Teardown        CloseAllBrowsers


*** Test Cases ***
Exercise 2 - Consulting Libraries
    Log     Test