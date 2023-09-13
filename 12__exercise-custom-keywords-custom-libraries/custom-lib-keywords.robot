*** Settings ***
Library                       ../libraries/CustomLib.py
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                Close All Browser Sessions

*** Test Cases ***

Test the Custom Keyword
    ${random_email}     Generate Random Emails    ${8}
    Log                 ${random_email}