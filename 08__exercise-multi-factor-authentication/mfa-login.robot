*** Settings ***
Resource          ../resources/common.robot
Suite Setup       Setup Browser
Suite Teardown    Close All Browser Sessions


*** Test Cases ***
Exercise 8 - Multi Factor Authentication
    [tags]        Lead                        Git Repo Exercise
    Appstate      Home
    LaunchApp     Sales