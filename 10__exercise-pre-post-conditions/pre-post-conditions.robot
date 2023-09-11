*** Settings ***
Resource               ../resources/common.robot
Suite Setup            Setup Browser     
Test Setup             Home
Test Teardown          Close Browser
Suite Teardown         Close All Browsers

*** Test Cases ***
Exercise 10 - Using Suite Setup, Test Setup, Test Teardown and Suite Teardown in this order
    ClickText          Leads

Exercise 10 - Using Suite Setup, Test Setup, Test Teardown and Suite Teardown in this order
    [Setup]            Login                       ${login_url}                ${username}    ${password}   
    ClickText          Leads

Exercise 10 - Test Setup and Test Teardown used in Settings 
    [Documentation]    Setup and teardown from setting section
    VerifyText         The animal friendly clothing company

Exercise 10 - Overridden Test Setup
    [Documentation]    Own setup, teardown from setting section
    [Setup]            GoTo                        https://qentinelqi.github.io/shop/products/deer/
    VerifyText         Slim Fit, 5oz 100% Cotton T-Shirt.
    ClickText          Add to cart
    VerifyText         Cart summary
    VerifyText         Sacha the Deer
    ClickText          Continue shopping

Exercise 10 - Overridden Test Teardown 1
    [Documentation]    Default setup, no teardown at all
    VerifyText         Products
    VerifyText         Our Story
    VerifyText         Contact
    [Teardown]

Exercise 10 - Overridden Test Teardown 2
    [Documentation]    Setup and teardown can be disabled also with special value NONE
    VerifyText         Products
    VerifyText         Our Story
    VerifyText         Contact
    [Teardown]         NONE