*** Test Cases ***

Exercise 7 - Test Keyword Variables and Scope 1
    ${my_local_var}        Set Variable                Hello World
    Log                    ${my_local_var}             # Pass: Logs the value of the variable
    Set Suite Variable     ${my_suite_var}             I'm a suite variable
    Set Global Variable    ${my_global_var}            I'm a global variable

Exercise 7 - Test Keyword Variables and Scope 2
    Log                    ${my_suite_var}             # Pass: Variable exists for the scope of the whole suite
    Log                    ${my_global_var}            # Pass: Variable exists for the scope of the whole test run
    ${result}=             Run Keyword And Return Status                           Log                         ${my_local_var}             # Fails: Variable only exists in the scope of Test Case 1
    Pass Execution If      '${result}'=='False'        Keyword Failed and therefore passing the execution.

Exercise 7 - Test Keyword Variables and Scope 3
    My Keyword
    Log                    ${my_test_var}              # Pass: Variable            exists in the scope of the test case
    ${result}=             Run Keyword And Return Status                           Log                         ${my_keyword_var}           # Fails: Variable only exists in the scope of My Keyword
    Pass Execution If      '${result}'=='False'        Keyword Failed and therefore passing the execution.

*** Keywords ***
My Keyword
    ${my_keyword_var}      Set Variable                Hello Keyword
    Log                    ${my_keyword_var}           # Pass: Logs the value of the variable
    Set Test Variable      ${my_test_var}              I'm a test case variable