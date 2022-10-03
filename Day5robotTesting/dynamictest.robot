*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library    String
Library     ../Reusable/redynamic.py
*** Variables ***
#${pop_courses}      Data Science Course,Artificial Intelligence Course,Machine Learning Certification Course,Python Certification
#${url}      https://intellipaat.com/
#${browser}      headlesschrome
#   //h4[text()='Popular Courses']/../p[3]/a[text()='Data Science Course']



*** Test Cases ***
validate_dynamic_web_element

        read_xml_test_data
        Open Browser        ${url}       ${browsername}
        Sleep    2
        Maximize Browser Window
        Sleep    2
        #    split Popular Courses   @ = array of string

        @{subpopularlinks}=      Split String    ${pop_courses}  ,

        # to iterate through string of array  $ = string
        FOR    ${ele}    IN    @{subpopularlinks}
            Log    ${ele}
            ${runtimexpath}     redynamic.popularcoursessublinkxpath    ${ele}
            Log To Console    ${runtimexpath}
            Wait Until Page Contains Element    ${runtimexpath}

        END

        Close All Browsers
*** Keywords ***
read_xml_test_data
        ${url}     redynamic.readxml    url
        ${browsername}     redynamic.readxml    browsername
        ${pop_courses}     redynamic.readxml    popularcourses
        Set Global Variable    ${url}
        Set Global Variable    ${browsername}
        Set Global Variable    ${pop_courses}
