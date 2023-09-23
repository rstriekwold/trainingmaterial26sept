*** Settings ***
Library               QWeb
Library               OperatingSystem
Library               Process
Suite Setup           Run Keywords    Get Profile Directory    Open Browser with Extensions
# Suite Setup     OpenBrowser     http://howbigismybrowser.com/   chrome   --load-extension=<path-to-extension-folder>,--user-data-dir\=C:\\temp,--profile-directory\=Test2
Suite Teardown        CloseAllBrowsers


*** Test Cases ***
Exercise 2 - Consulting Libraries
    # List Directory    /
    GoTo              chrome://version
    ${profile_dir}=    GetText          profile_path       tag=td  
    CloseBrowser  
    # /tmp/.org.chromium.Chromium.W1fn10/Default
    List Directory     ${profile_dir}
    Run Process	       mkdir         ${profile_dir}${/}Extensions   	       shell=yes         
    Run Process	       apt-get install unzip	       shell=yes
    Run Process	       unzip ndgimibanhlabgdgjcpbbndiehljcpfh.zip -d ${EXEC_DIR}  shell=yes
    Run Process	       unzip ndgimibanhlabgdgjcpbbndiehljcpfh.zip -d ${profile_dir}${/}Extensions          	       shell=yes
    OpenBrowser     http://howbigismybrowser.com/   chrome   --user-data-dir\=/tmp/.org.chromium.Chromium.R1jojA,--profile-directory\=Default
    List Directory     ${profile_dir}${/}Extensions 


*** Keywords ***

Get Profile Directory
    Open Browser    about:blank       chrome
    GoTo              chrome://version
    ${profile_dir}=    GetText          profile_path       tag=td
    Set Global Variable    ${profile_dir}                  ${profile_dir}

Open Browser with Extensions
    OpenBrowser     http://howbigismybrowser.com/   chrome   --user-data-dir\=/tmp/.org.chromium.Chromium.R1jojA,--profile-directory\=Default


