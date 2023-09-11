*** Settings ***
Resource                   ../resources/common.robot
Suite Setup                Setup Browser
Suite Teardown             End suite

*** Test Cases ***
Exercise 5 - Allowlist IPs at Setup Network Access
    [tags]                 IPs
    Log To Console             ${login_url} 
    Log To Console             ${home_url}
    Log To Console             ${username}
    Log To Console             ${password}
    Appstate               Home

    ClickText              Setup
    ClickText              Opens in a new tab
    SwitchWindow           NEW
    TypeText               Quick Find                  Network Access    anchor=Setup Home
    ClickText              Network Access

    @{NorthAmericaIPs}=    Create List                 3.216.108.92      52.7.118.168          75.101.241.39
    @{EuropeIPs}=          Create List                 18.203.104.35     18.202.59.38          52.212.32.52
    @{AustraliaIPs}=       Create List                 13.238.101.70     54.79.113.39          54.66.15.135
    @{SingaporeIPs}=       Create List                 3.0.203.255       54.151.254.16         52.76.148.77

    Log                    ${NorthAmericaIPs}
    FOR                    ${IP}                       IN                @{NorthAmericaIPs}
        ClickText          New
        TypeText           Start IP Address            ${IP}
        TypeText           End IP Address              ${IP}
        TypeText           Description                 North-America
        ClickText          Save
        VerifyText         ${IP}
    END

    Log                    ${EuropeIPs}
    FOR                    ${IP}                       IN                @{EuropeIPs}
        ClickText          New
        TypeText           Start IP Address            ${IP}
        TypeText           End IP Address              ${IP}
        TypeText           Description                 Europe
        ClickText          Save
        VerifyText         ${IP}
    END

    Log                    ${AustraliaIPs}
    FOR                    ${IP}                       IN                @{AustraliaIPs}
        ClickText          New
        TypeText           Start IP Address            ${IP}
        TypeText           End IP Address              ${IP}
        TypeText           Description                 Australia
        ClickText          Save
        VerifyText         ${IP}
    END

    Log                    ${SingaporeIPs}
    FOR                    ${IP}                       IN                @{SingaporeIPs}
        ClickText          New
        TypeText           Start IP Address            ${IP}
        TypeText           End IP Address              ${IP}
        TypeText           Description                 Singapore
        ClickText          Save
        VerifyText         ${IP}
    END

    Log Screenshot
