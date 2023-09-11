*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Exercise 2 - Consulting Libraries
    Go To                     https://docs.copado.com/articles/\#!copado-robotic-testing-publication/all-qwords
    Log Screenshot
    Go To                     https://docs.copado.com/resources/Storage/copado-robotic-testing-publication/CRT%20Site/qwords-reference/current/qwords/_attachments/QWeb.html
    Log Screenshot
    Go To                     https://docs.copado.com/resources/Storage/copado-robotic-testing-publication/CRT%20Site/qwords-reference/current/qwords/_attachments/QForce.html
    Log Screenshot
    Go To                     https://docs.copado.com/resources/Storage/copado-robotic-testing-publication/CRT%20Site/qwords-reference/current/qwords/_attachments/QVision.html
    Log Screenshot
    Go To                     https://docs.copado.com/resources/Storage/copado-robotic-testing-publication/CRT%20Site/qwords-reference/current/qwords/_attachments/QMobile.html
    Log Screenshot
    Go To                     https://docs.copado.com/resources/Storage/copado-robotic-testing-publication/CRT%20Site/qwords-reference/current/qwords/_attachments/QS4Hana.html
    Log Screenshot
    Go To                     https://docs.copado.com/resources/Storage/copado-robotic-testing-publication/CRT%20Site/qwords-reference/current/qwords/_attachments/QNow.html
    Log Screenshot
    Go To                     https://robotframework.org/?tab\=builtin#resources
    Log Screenshot