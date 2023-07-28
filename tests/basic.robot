*** Settings ***
Documentation    The basic fuctionality test of Brwoser App & SAP Gui for Logistics
Resource    ../resources/page-objects/LandingPage.resource

Suite Teardown    LandingPage.Close Browser with Selenium

*** Test Cases ***
Simple Login
    [Tags]    simple-login
    # LandingPage.Open Browser with     https://sapqm0.sappuc.de/sap/bc/ui2/flp#Shell-home
    # LandingPage.Verify Page Loaded    https://sapqm0.sappuc.de/sap/bc/ui2/flp#Shell-home
    LandingPage.Open Browser with Selenium    https://www.naver.com
    LandingPage.Verify Page Loaded with Selenium    test
    