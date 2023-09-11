*** Settings ***
Resource          ../resources/common.robot
Suite Setup       Setup Browser
Test Setup        Login                       ${login_url}         ${username}    ${password}
Suite Teardown    Close All Browsers


*** Test Cases ***
Exercise 8 - Multi Factor Authentication
    [tags]        Lead                        Git Repo Exercise
    Appstate      Home
    LaunchApp     Sales