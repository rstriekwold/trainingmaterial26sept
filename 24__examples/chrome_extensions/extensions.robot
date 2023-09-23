*** Settings ***
Library                QForce
Library               OperatingSystem
Library               Process
Library                QVision
Library            Collections
Suite Setup           Run Keywords   Start Browser     Install Chrome Extension SelectorsHub        Install Chrome Extension Salesforce inspector
Suite Teardown        CloseAllBrowsers

*** Variables ***
${BASE_IMAGE_PATH}          ${CURDIR}

*** Test Cases ***

Examples - Browser with extensions enabled
    Go To    https://www.copado.com

*** Keywords ***

Start Browser 
    Open Browser    about:blank       chrome

Install Chrome Extension SelectorsHub
    [Documentation]    xPath plugin to auto generate, write and verify xpath & cssSelector.
    Install Extension from Chrome Web Store    SelectorsHub    SelectorsHub    Featured

Install Chrome Extension Salesforce inspector
    [Documentation]    xPath plugin to auto generate, write and verify xpath & cssSelector.
    Install Extension from Chrome Web Store    Salesforce inspector    Salesforce inspector

Install Extension from Chrome Web Store
    [Arguments]     ${search_query}    ${result_title}    ${unique_anchor}=${EMPTY}    
    Set Library Search Order          QForce      QVision
    SwitchWindow      1                
    GoTo              chrome://extensions
    QVision.ClickText         Open Chrome Web Store
    SwitchWindow              NEW
    TypeText                  Search the store    ${search_query}\n
    Run Keyword If              '${unique_anchor}'=='${EMPTY}'    Click Text                ${result_title}    
    Run Keyword If              '${unique_anchor}'!='${EMPTY}'    Click Text                ${result_title}        anchor=${unique_anchor}    
    Click Text                Add to Chrome
    QVision.Click Text        Add extension
    Close Window
    GoTo              chrome://version
    ClickText         OS

Pin Extension to the Menu
    QVision.Click Icon    puzzlegrey
    @{region_tuples}=                       QVision.Hover Text      text=Salesforce inspector
    ${x1}=	Get From List	${region_tuples}	0
    ${y1}=   Get From List	${region_tuples}	1
    ${x2}=                Evaluate         ${x1} + 450               
    ${y2}=                Evaluate         ${y1} + 35 
    QVision.SetConfig                 region                        ${x1}    ${y1}    ${x2}    ${y2}
    Sleep                        3s
    Hover Icon                        pin
    ClickIcon                        pin


