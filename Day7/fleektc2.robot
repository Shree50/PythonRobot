*** Settings ***
Library     SeleniumLibrary
Library     String
Library     ../Reusable/refleek.py

*** Variables ***
${expectedstringinurl}       software-testing-agency-contact
*** Test Cases ***
testcase2_fleek
        read_xml_data
        contact_details_read
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Sleep    2

        Wait Until Element Is Visible    (//span[text()='Contact Us'])[1]
        Sleep    2
        Click Element    (//span[text()='Contact Us'])[1]
        Sleep    2
        ${currentlink}=     Get Location
        Should Be True    """${currentlink}"""  in """${expectedstringinurl}"""
        fill_contact_details
        Sleep    5
        ${netherlandadrress}        Get Text    (//h2[text()='THE NETHERLANDS']/..//p)[1]
        Should Be True    """Vijzelstraat 68-78"""  in """${netherlandadrress}"""
        Should Be True    """1017 HL | Amsterdam"""  in """${netherlandadrress}"""
        Should Be True    """The Netherlands"""  in """${netherlandadrress}"""
        Sleep    2
        Go Back
        Sleep    2


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

contact_details_read

        ${firstname}     refleek.readxml     firstname
        ${lastname}     refleek.readxml     lastname
        ${email}     refleek.readxml        email
        ${phone}       refleek.readxml      phone
        ${subject}     refleek.readxml     subject
        ${message}     refleek.readxml     message
        Set Global Variable    ${firstname}
        Set Global Variable    ${lastname}
        Set Global Variable    ${email}
        Set Global Variable    ${phone}
        Set Global Variable    ${subject}
        Set Global Variable    ${message}

fill_contact_details
        contact_details_read
        Input Text    //input[@name='your-name']    ${firstname}
        Input Text    //input[@name='LastName']    ${lastname}
        Input Text    //input[@name='your-email']    ${email}
        Input Text    //input[@name='your-phone']    ${phone}
        Input Text    //input[@name='your-subject']    ${subject}
        Input Text    //textarea[@name='your-message']    ${message}