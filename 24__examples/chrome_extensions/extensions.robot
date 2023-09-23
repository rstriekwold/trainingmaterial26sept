*** Settings ***
Library                QForce
Library               OperatingSystem
Library               Process
Library                QVision
Suite Setup           Open Browser    about:blank       chrome
# Suite Setup           Run Keywords    Get Profile Directory    Open Browser with Extensions
# Suite Setup     OpenBrowser     http://howbigismybrowser.com/   chrome   --load-extension=<path-to-extension-folder>,--user-data-dir\=C:\\temp,--profile-directory\=Test2
Suite Teardown        CloseAllBrowsers


*** Test Cases ***

Examples - Browser with extensions enabled
    Go To    https://www.copado.com

*** Keywords ***

Examples - Install Chrome Extension SelectorsHub
    [Documentation]    xPath plugin to auto generate, write and verify xpath & cssSelector.
    Install Extension from Chrome Web Store    SelectorsHub    SelectorsHub    Featured

Examples - Install Chrome Extension Salesforce inspector
    [Documentation]    xPath plugin to auto generate, write and verify xpath & cssSelector.
    Install Extension from Chrome Web Store    Salesforce inspector    SelectorsHub    Featured

Install Extension from Chrome Web Store
    [Arguments]     ${search_query}    ${result_title}    ${unique_anchor}=${EMPTY}    
    Open Browser    about:blank       chrome
    Set Library Search Order          QForce      QVision
    GoTo              chrome://extensions
    QVision.ClickText         Open Chrome Web Store
    SwitchWindow              NEW
    TypeText                  Search the store    ${search_query}\n
    Run Keyword If              '${unique_anchor}'=='${EMPTY}'    Click Text                ${result_title}        partial_match=False
    Run Keyword If              '${unique_anchor}'!='${EMPTY}'    Click Text                ${result_title}        anchor=${unique_anchor}
    Click Text                Add to Chrome
    QVision.Click Text        Add extension

