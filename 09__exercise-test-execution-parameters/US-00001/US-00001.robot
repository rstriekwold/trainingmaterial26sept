*** Settings ***

Documentation               US-00001
Library                     QWeb
Suite Setup                 Open Browser                about:blank           chrome
Suite Teardown              Close All Browsers
Force Tags                  US-00001

*** Test Cases ***

Exercise 9 - US-00001 - Test Case 1
    Log    US-00001 - Test Case 1  

Exercise 9 - US-00001 - Test Case 2
    Log    US-00001 - Test Case 1