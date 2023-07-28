*** Settings ***
Library   Browser
Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot    screenshot_root_directory=results

*** Keywords ***
Open Browser with
    [Arguments]    ${url}
    Browser.New Browser    browser=chromium    headless=False
    Browser.New Page    url=${url}

Verify Page Loaded
    [Arguments]    ${url1}
    ${actualURL}=    Browser.Get Url
    Should Be Equal    ${url1}    ${actualURL}

Get Text and compare
    [Arguments]    ${element}    ${text}
    ${textValue}=    Browser.Get Text    ${element}
    Should Be Equal    ${text}    ${textValue}

Open Browser with Selenium
    [Arguments]    ${url}
    SeleniumLibrary.Open Browser    ${url}    browser=firefox

Verify Page Loaded with Selenium
    [Arguments]    ${url}
    SeleniumLibrary.Location Should Be    ${url}

Close Browser with Selenium
    SeleniumLibrary.Close All Browsers

