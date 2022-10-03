*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# //span[@title='Area of Interest *']
*** Test Cases ***
dropdown_test
        Open Browser        https://techedtrainings.com/contact/        Chrome
        Maximize Browser Window
        Sleep    4
        Wait Until Page Contains Element    //select[@name='menu-363']
        Select From List By Value    //select[@name='menu-363']   DevOps
        Sleep    2
        Select From List By Value    menu-363   Data Science
        Sleep    2
        Select From List By Value    menu-363   Java & Spring
        Sleep    2
        Select From List By Value    menu-363   Web & Mobile
        Sleep    2

        Select From List By Index    menu-363   5
        Sleep    2
        Select From List By Index    menu-363   4
        Sleep    2
        Select From List By Index    menu-363   3
        Sleep    2
        Select From List By Index    menu-363   2
        Sleep    2

        Close All Browsers
*** Keywords ***