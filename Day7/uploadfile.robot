*** Settings ***
Library     SeleniumLibrary
#Suite Setup     Launch_My_Browser
#Suite Teardown      close_my_browser
Library     ../Reusable/redynamic.py

Test Setup     Launch_My_Browser
Test Teardown      close_my_browser
*** Variables ***
# //span[@title='Area of Interest *']

#   C:\Users\00005830\PycharmProjects\Projectforgithub\Day7\selenium-screenshot-1.png
${searchlink}=      Corporate Training
*** Test Cases ***
validate_logo

        ${myimagepath}      redynamic.myimagepath       selenium-screenshot-1.png
        Choose File    file-upload    ${myimagepath}
        Sleep    4
        Click Element    file-submit
        Sleep    4




*** Keywords ***

Launch_My_Browser
        Open Browser        https://the-internet.herokuapp.com/upload       Chrome
        Maximize Browser Window
        Sleep    2

close_my_browser
        Close All Browsers
