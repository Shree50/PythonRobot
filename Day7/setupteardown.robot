*** Settings ***
Library     SeleniumLibrary
#Suite Setup     Launch_My_Browser
#Suite Teardown      close_my_browser

Test Setup     Launch_My_Browser
Test Teardown      close_my_browser
*** Variables ***
# //span[@title='Area of Interest *']
${searchlink}=      Corporate Training
*** Test Cases ***
validate_logo
        Wait Until Page Contains Element    (//img[@alt='Intellipaat'])[1]

validate_login
        Wait Until Page Contains Element    //a[@class='login-myact']






*** Keywords ***

Launch_My_Browser
        Open Browser        https://intellipaat.com/     Chrome
        Maximize Browser Window
        Sleep    2

close_my_browser
        Close All Browsers
