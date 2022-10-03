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
        ${table_row_count}      Get Element Count    //table[@name='BookTable']/tbody/tr
        Log To Console    ${table_row_count}

        ${table_column_count}      Get Element Count    //table[@name='BookTable']/tbody/tr[1]/th
        Log To Console    ${table_column_count}

        ${read_table_data}      Get Text    //table[@name='BookTable']/tbody/tr[1]/th[1]
        Log To Console    ${read_table_data}

        ${read_table_data}      Get Text    //table[@name='BookTable']/tbody/tr[1]/th[2]
        Log To Console    ${read_table_data}

        ${read_table_data}      Get Text    //table[@name='BookTable']/tbody/tr[1]/th[3]
        Log To Console    ${read_table_data}

        ${read_table_data}      Get Text    //table[@name='BookTable']/tbody/tr[1]/th[4]
        Log To Console    ${read_table_data}

        Table Column Should Contain    //table[@name='BookTable']    4    2000
        Table Column Should Contain    //table[@name='BookTable']    3    Selenium
        Table Column Should Contain    //table[@name='BookTable']    1    Master In Java
        
        Table Row Should Contain    //table[@name='BookTable']    4    Learn JS
        Table Row Should Contain    //table[@name='BookTable']    4    Javascript
        Table Row Should Contain    //table[@name='BookTable']    3    500
        
        Table Cell Should Contain    //table[@name='BookTable']    2    2    Amit
        
        Table Header Should Contain    //table[@name='BookTable']    Author




*** Keywords ***

Launch_My_Browser
        Open Browser        https://testautomationpractice.blogspot.com/        Chrome
        Maximize Browser Window
        Sleep    2

close_my_browser
        Close All Browsers
