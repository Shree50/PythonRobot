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
        Wait Until Page Contains Element        //h3[text()='Checkboxes']

        #   validate checkbox 1 is not checked
        Checkbox Should Not Be Selected    (//input[@type='checkbox'])[1]
        Sleep    2

        #   validate checkbox 2 is checked
        Checkbox Should Be Selected    (//input[@type='checkbox'])[2]
        Sleep    2

        #   check the checkbox 1
        Select Checkbox    (//input[@type='checkbox'])[1]
        Sleep    2

        #  uncheck checkbox 2
        Unselect Checkbox    (//input[@type='checkbox'])[2]
        Sleep    2

*** Keywords ***

Launch_My_Browser
        Open Browser        https://the-internet.herokuapp.com/checkboxes     Chrome
        Maximize Browser Window
        Sleep    2

close_my_browser
        Close All Browsers
