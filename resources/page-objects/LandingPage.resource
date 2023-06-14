*** Settings ***
Library   Browser

*** Keywords ***
Open Browser with
    [Arguments]    ${url}
    New Browser    browser=chromium    headless=False
    New Page    url=${url}

Verify Page Loaded
    [Arguments]    ${url1}
    ${actualURL}=    Browser.Get Url
    Should Be Equal    ${url1}    ${actualURL}

Get Text and compair
    [Arguments]    ${element}    ${text}
    ${textValue}=    Browser.Get Text    ${element}
    Should Be Equal    ${text}    ${textValue}

Login to SAP Fiori web portal
    [Arguments]    ${user_name}    ${password}
    Browser.Wait For Elements State    css=input#USERNAME_FIELD-inner    editable
    Fill Text    css=input#USERNAME_FIELD-inner    ${user_name}
    Fill Text    css=input#PASSWORD_FIELD-inner    ${password}
    Click    id=LOGIN_LINK
