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
# Exercise 2 - Consulting Libraries
#     List Directory     ${profile_dir}${/}Extensions


Get Profile Directory
    Open Browser    about:blank       chrome
    Set Library Search Order          QForce      QVision
    GoTo              chrome://extensions
    QVision.ClickText         Open Chrome Web Store
    SwitchWindow              NEW
    TypeText                  Search the store    SelectorsHub

    # Example: /tmp/.org.chromium.Chromium.W1fn10/Default
    ${profile_dir}=    GetText          profile_path       tag=td
    Set Global Variable    ${profile_dir}                  ${profile_dir}
    Log To Console        ${profile_dir}
    ${parts}=  Split String           ${profile_dir}       separator=/

Unzip Extensions
    Run Process	       apt-get install unzip	       shell=yes
    # Run Process	       mkdir         ${profile_dir}${/}Extensions   	       shell=yes         
    Run Process	       mkdir         ${CURDIR}${/}Extensions   	       shell=yes   

    # SelectorsHub Extension for getting Xpaths
    Run Process	       unzip ndgimibanhlabgdgjcpbbndiehljcpfh.zip -d ${CURDIR}${/}Extensions          	       shell=yes

Open Browser with Extensions
    # OpenBrowser     http://howbigismybrowser.com/   chrome   --user-data-dir\=/tmp/.org.chromium.Chromium.R1jojA,--profile-directory\=Default
    OpenBrowser     http://howbigismybrowser.com/   chrome   --load-extension\=${CURDIR}${/}Extensions${/}ndgimibanhlabgdgjcpbbndiehljcpfh

