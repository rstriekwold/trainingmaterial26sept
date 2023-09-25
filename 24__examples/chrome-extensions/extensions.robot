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

Pin All Extensions to the Menu

    QVision.Click Icon    puzzlegrey
    ${result}=                   QVision.Is Icon                      pin
    Log to Console               ${result}          

    WHILE    '${result}'!='False'
        QVision.Click Icon    puzzlegrey
        QVision.ClickIcon                        pin
        QVision.Click Icon    puzzlegrey
        ${result}=                   QVision.Is Icon                      pin
    END         
    
    Log                        All extensions have been enabled
