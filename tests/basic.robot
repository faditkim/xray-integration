*** Settings ***
Documentation    The basic fuctionality test of Brwoser App & SAP Gui for Logistics
Library   Browser
Resource    ../resources/page-objects/LandingPage.resource

*** Variables ***

${test_account}    PXXXXXX_LVS

*** Test Cases ***
Simple Login
    [Tags]    simple-login
    LandingPage.Open Browser with     https://sapqm0.sappuc.de/sap/bc/ui2/flp#Shell-home
    Sleep    2
    Browser.Fill Text    css=input#USERNAME_FIELD-inner    p349743
    Sleep    2
    