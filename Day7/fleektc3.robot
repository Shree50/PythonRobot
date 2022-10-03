*** Settings ***
Library     SeleniumLibrary
Library     String
Library     ../Reusable/refleek.py

*** Variables ***
${expectedstringinurl}       software-testing-agency-contact
*** Test Cases ***
testcase3_fleek
        read_xml_data
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Sleep    2
        Scroll Element Into View    //h2[text()='CLIENT SAYS']
        Sleep    2
        Wait Until Page Contains Element    //h2[text()='CLIENT SAYS']
        Sleep    2

        ${currentclienturl}      Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
        Log To Console    ${currentclienturl}
        Scroll Element Into View    //a[@class='flex-next']
        Sleep    2
        Click Element    //a[@class='flex-next']
        Sleep    1
        ${nextclienturl}      Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
        Log To Console      ${nextclienturl}
        Should Not Be Equal    """${currentclienturl}"""    """${nextclienturl}"""

        Sleep    2

        ${currentclienturl}      Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
        Log To Console    ${currentclienturl}
        Scroll Element Into View    //a[@class='flex-prev']
        Sleep    2
        Click Element    //a[@class='flex-next']
        Sleep    1
        ${nextclienturl}      Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
        Log To Console      ${nextclienturl}
        Should Not Be Equal    """${currentclienturl}"""    """${nextclienturl}"""



        #Click Element    //a[@class='flex-prev']
        #Sleep    1
        #${prevclienturl}      Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
        #Log To Console      ${prevclienturl}
        #Should Be Equal    """${currentclienturl}"""    """${prevclienturl}"""
        #Sleep    2


        Close All Browsers
*** Keywords ***
read_xml_data
        ${url}     refleek.readxml     url
        ${browser}     refleek.readxml     browser
        ${fleektopmenubar}     refleek.readxml        fleektopmenubar
        ${servicessubmenuoption}       refleek.readxml      servicessubmenuoption
        Set Global Variable    ${url}
        Set Global Variable    ${browser}
        Set Global Variable    ${fleektopmenubar}
        Set Global Variable    ${servicessubmenuoption}