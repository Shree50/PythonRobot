*** Settings ***
Library     SeleniumLibrary
Library     String
Library    XML

*** Variables ***
#   This is for testing1
${testurl}      https://www.docker.com/
${browser}      Chrome
${gettingStartedUrl}        https://www.docker.com/get-started/
${dockeratomistimagetitle}      Docker Acquires Atomist
${newwindowurl}     https://twitter.com/docker



*** Test Cases ***
#Docker_Header_Navigations_TC_01

        #Open Browser       ${testurl}       ${browser}
        #Maximize Browser Window
        #docker_doctopmenubars

#Docker_Atomist_Navigations_TC_02

        #Open Browser       ${testurl}       ${browser}
        #Maximize Browser Window

#Docker_comp_shares_TC_03

        #Open Browser       ${testurl}       ${browser}
        #Maximize Browser Window

#Docker_comp_shares_TC_04

        #Open Browser       ${testurl}       ${browser}
        #Maximize Browser Window

Docker_comp_shares_TC_05

        Open Browser       ${testurl}       ${browser}
        Maximize Browser Window
        #   get & match the count of social media connections
        ${socialmediacount}=        Get Element Count    xpath://ul[@class='social-wrap']//a/img
        Log To Console    ${socialmediacount}
        Should Be True    ${socialmediacount}==5

        #   click on twitter logo
        Click Element       (//ul[@class='social-wrap']//a/img)[2]
        Sleep    3

        #   switch to child window
        ${window}=  Switch Window       locator=NEW
        ${getUrl}=      Get Location
        Log To Console    ${getUrl}
        Should Be True    """${newwindowurl}"""=="""${getUrl}"""
        Sleep    3

        Close Window
        Sleep    2


        Close All Browsers
        




*** Keywords ***

docker_doctopmenubars

        #   validate docker primary navigation menu
        Wait Until Page Contains Element    xpath://li[@class='logo']/a
        Wait Until Page Contains Element    xpath:(//a[text()='Products'])[1]
        Wait Until Page Contains Element    xpath:(//a[text()='Developers'])[1]
        Wait Until Page Contains Element    xpath:(//a[text()='Pricing'])[1]
        Wait Until Page Contains Element    xpath:(//a[text()='Blog'])[1]
        Wait Until Page Contains Element    xpath:(//a[text()='About Us'])[1]
        Wait Until Page Contains Element    xpath:(//a[text()='Partners'])[1]

        #   to do a mouse hover on developer's menu
        Mouse Over    xpath:(//a[text()='Developers'])[1]
        Sleep    3
        Click Element    xpath:(//a[text()='Getting started'])[1]
        Sleep    3

        # Validating getting started page
        ${runTimeUrl}=    Get Location
        Log To Console    ${runTimeUrl}
        Should Be True    """${gettingStartedUrl}"""=="""${runTimeUrl}"""
        Wait Until Page Contains    Get Started with Docker

        #   Go back to Home page
        Go Back
        Sleep    3
        ${runTimeUrl}=    Get Location
        Log To Console    ${runTimeUrl}
        Should Be True    """${testurl}"""=="""${runTimeUrl}"""

        #   validate Develop faster. Run anywhere. in home page
        Wait Until Page Contains    Develop faster. Run anywhere.

        #   close the application
        Close All Browsers

docker_atomist

#   validate learn more button
        Wait Until Page Contains Element    xpath:(//a[text()='Learn more'])[5]
        Wait Until Page Contains Element    xpath://picture[@title='Docker Acquires Atomist']

        ${runtimetitle}=      Get Element Attribute    xpath://span/picture[@title='Docker Acquires Atomist']       title
        Log To Console      ${runtimetitle}
        Should Be True    """${dockeratomistimagetitle}"""=="""${runtimetitle}"""
        Wait Until Page Contains Element    xpath://span[text()='Docker Acquires Atomist']

        #   click on 'Read Now' link present under Docker Acquires Atomist
        Click Element    xpath://a[@class='arrow-link arrow']
        Sleep    3

        #   switch to child window
        ${window}=      Switch Window       locator=NEW
        ${runTimeUrl}=    Get Location
        Log To Console    ${runTimeUrl}
        Should Be True    """${newwindowurl}"""=="""${runTimeUrl}"""

        #   validate the logo present in "Docker Acquires Atomist" window
        Wait Until Page Contains Element    xpath://li[@class='logo']/a

        #   close "Docker Acquires Atomist"window
        Close Window
        Sleep    2
        #   close docker apllication
        Close All Browsers

docker_console
#Wait Until Page Contains Element    (//h2[contains(.,'Accelerate how you build')]/../../../div[2]//span)[1]
        ${develpoercount}=      Get Text    (//h2[contains(.,'Accelerate how you build')]/../../../div[2]//span)[1]
        Log To Console    ${develpoercount}
        Should Be True  "million"  in """${develpoercount}"""

        #Wait Until Page Contains Element    (//h2[contains(.,'Accelerate how you build')]/../../../div[2]//span)[2]
        ${applicationcount}=      Get Text    (//h2[contains(.,'Accelerate how you build')]/../../../div[2]//span)[2]
        Log To Console    ${applicationcount}
        Should Be True  "million"  in """${applicationcount}"""

        #Wait Until Page Contains Element    (//h2[contains(.,'Accelerate how you build')]/../../../div[2]//span)[3]
        ${monthlydownloadscount}=      Get Text    (//h2[contains(.,'Accelerate how you build')]/../../../div[2]//span)[3]
        Log To Console    ${monthlydownloadscount}
        Should Be True  "billion"  in """${monthlydownloadscount}"""

        Close All Browsers

docker_partners
        ${dockerpartnercount}=      Get Element Count    xpath://div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img
        Should Be True    ${dockerpartnercount}==13

        ${Bitbucket_Full}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[1]     alt
        Log To Console    ${Bitbucket_Full}
        Should Be True    """${Bitbucket_Full}"""=="""Bitbucket full"""

        ${Circleci_Full}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[2]      alt
        Log To Console    ${Circleci_Full}
        Should Be True    """${Circleci_Full}"""=="""Circleci full"""

        ${Elastic}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[3]    alt
        Log To Console    ${Elastic}
        Should Be True    """${Elastic}"""=="""Elastic"""

        ${Gitlab_Full}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[4]    alt
        Log To Console    ${Gitlab_Full}
        Should Be True    """${Gitlab_Full}"""=="""Gitlab full"""

        ${Jenkins_Logo}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[5]       alt
        Log To Console    ${Jenkins_Logo}
        Should Be True    """${Jenkins_Logo}"""=="""Jenkins logo"""

        ${Jfrog_Full}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[6]     alt
        Log To Console    ${Jfrog_Full}
        Should Be True    """${Jfrog_Full}"""=="""Jfrog full"""

        ${Kubernetes_Full}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[7]    alt
        Log To Console    ${Kubernetes_Full}
        Should Be True    """${Kubernetes_Full}"""=="""Kubernetes full"""

        ${Mongo}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[8]      alt
        Log To Console    ${Mongo}
        Should Be True    """${Mongo}"""=="""Mongo"""

        #${Nginx_Full}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[9]     alt
        #Log To Console    ${Nginx_Full}
        #Should Be True    """${Nginx_Full}"""=="""Nginx full"""

        ${Octocat_Full}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[10]      alt
        Log To Console    ${Octocat_Full}
        Should Be True    """${Octocat_Full}"""=="""Octocat full"""

        ${Redis_Full}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[11]    alt
        Log To Console    ${Redis_Full}
        Should Be True    """${Redis_Full}"""=="""Redis full"""

        ${Visualstudio_Code-Card}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[12]    alt
        Log To Console    ${Visualstudio_Code-Card}
        Should Be True    """${Visualstudio_Code-Card}"""=="""Visualstudio code card"""

        ${Vmware Tanzu Logo}=      Get Element Attribute      xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[13]     alt
        Log To Console    ${Vmware Tanzu Logo}
        Should Be True    """${Vmware Tanzu Logo}"""=="""Vmwaretanzu logo"""

        Close All Browsers