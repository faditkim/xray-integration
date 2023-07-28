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

Get Text and compare
    [Arguments]    ${element}    ${text}
    ${textValue}=    Browser.Get Text    ${element}
    Should Be Equal    ${text}    ${textValue}

