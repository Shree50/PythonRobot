*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***

Verify_google_application

    Open Browser    https://www.google.com      Chrome
    Maximize Browser Window
    Close All Browsers