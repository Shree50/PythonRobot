*** Settings ***
Library     SeleniumLibrary
*** Variables ***

*** Test Cases ***

Test_Google_Application

        Open Browser        https://www.google.com      Chrome
        Maximize Browser Window
        Close All Browsers


*** Keywords ***
