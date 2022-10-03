*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# //span[@title='Area of Interest *']
${searchlink}=      Corporate Training
*** Test Cases ***
print_all_links_using_robot
        Open Browser        https://techedtrainings.com/contact/        Chrome
        Maximize Browser Window
        Sleep    2
        ${runtimelinkscount}=        Get Element Count    //a
        Log To Console    ${runtimelinkscount}
        Should Be True    ${runtimelinkscount}==27
        ${alllinks}=        Get WebElements    //a
        FOR    ${a}    IN    @{alllinks}
            ${runtimelinks}     Get Text    ${a}
            Log To Console    ${runtimelinks}
            Exit For Loop If    """${searchlink}"""=="""${runtimelinks}"""

            
        END



        Close All Browsers
*** Keywords ***