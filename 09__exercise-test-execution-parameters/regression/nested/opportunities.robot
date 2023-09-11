*** Settings ***

Documentation               Opportunities
Library                     QWeb
Suite Setup                 Open Browser                about:blank           chrome
Suite Teardown              Close All Browsers

*** Test Cases ***

Exercise 9 - regression - nested - opportunities Test Case 1
    [Tags]     Regression    Opportunities
    Log        Regression - Opportunities Test Case 1   

Exercise 9 - regression - nested - opportunities Test Case 2
    [Tags]     Regression    Opportunities    US-00001   
    Log        Regression - Opportunities Test Case 2