*** Settings ***
Library     SeleniumLibrary
Library     String
Library     DateTime

*** Variables ***
${testurl}      https://www.docker.com/
${browser}      Chrome
${newwindowurl}     https://twitter.com/docker

*** Test Cases ***
#print_current_date
Docker_comp_shares_TC

        Open Browser       ${testurl}       ${browser}
        Maximize Browser Window
        Wait Until Page Contains Element    (//a[text()='Get Started'])[1]
        Click Element    //div[@id='onetrust-close-btn-container']/button

        #   click on twitter logo
        Click Element       (//ul[@class='social-wrap']//a/img)[2]
        Sleep    3

        #   switch to child window
        ${window}=  Switch Window       locator=NEW
        ${getUrl}=      Get Location
        Log To Console    ${getUrl}
        Should Be True    """${newwindowurl}"""=="""${getUrl}"""

        Close Window
        Sleep    2


        Close All Browsers
    
    
*** Keywords ***
date_time_check
    ${dateandtime}=     Get Current Date
    Log To Console    ${dateandtime}
    ${dateandtime}=     Add Time To Date    ${dateandtime}      10 days
    Log To Console    ${dateandtime}
    ${dateandtime}=     Add Time To Date    ${dateandtime}      -10 days
    Log To Console    ${dateandtime}