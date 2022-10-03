*** Settings ***
Library     SeleniumLibrary
Library     String
Library     ../Reusable/refleek.py

*** Variables ***
${newurl}       https://www.fleekitsolutions.com/software-testing-agency-contact/
*** Test Cases ***
testcase2_fleek
        read_xml_data
        contact_details_read
        fill_contact_details
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Sleep    2
        
        Wait Until Element Is Visible    (//span[text()='Contact Us'])[1]
        Sleep    2
        Click Element    (//span[text()='Contact Us'])[1]
        Sleep    2
        ${currentlink}=     Get Location
        Should Be True    """${currentlink}"""=="""${newurl}"""


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

testcase1_fleek
        read_xml_data
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Sleep    2
        #   validate logo
        Wait Until Page Contains Element        //img[@class='mobile']
        Sleep    2
        #    split fleektopmenubars   @ = array of string

        @{fleektopmenubar}=      Split String    ${fleektopmenubar}  ,

        # to iterate through string of array  $ = string validate primary bars using xml dynamic xpath
        FOR    ${ele}    IN    @{fleektopmenubar}
            Log    ${ele}
            ${runtimexpath}     refleek.fleektopmenubars    ${ele}
            Log To Console      ${runtimexpath}
            Wait Until Page Contains Element    ${runtimexpath}

        END

        #   hover on services & validate sub links
        Mouse Over    //nav[@class='main_menu drop_down right']/ul/li/a/span[text()='Services']
        Sleep    2

        #    split servicessubmenuoption   @ = array of string

        @{servicessubmenuoption}=      Split String    ${servicessubmenuoption}  ,

        # to iterate through string of array  $ = string validate primary bars using xml dynamic xpath
        FOR    ${ele}    IN    @{servicessubmenuoption}
            Log    ${ele}
            ${runtimexpath}     refleek.servicessubmenuoptions    ${ele}
            Log To Console    ${runtimexpath}
            Wait Until Page Contains Element    ${runtimexpath}

        END

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
        Input Text    ///input[@name='your-email']    ${email}
        Input Text    //input[@name='your-phone']    ${phone}
        Input Text    //input[@name='your-subject']    ${subject}
        Input Text    //textarea[@name='your-message']    ${message}