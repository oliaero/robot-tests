*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${home_url}             https://www.w3schools.com
${browser}              chrome
${header_home_page}     //h1[text()="Learn to Code"]
${cookies_id}           //*[@id="accept-choices"]
${login_link}           //div[@class="tnb-right-section"]/*[@aria-label="Login to your account"]
${login_url}            https://profile.w3schools.com/
${email_locator}        //input[@type="text"]
${email}                oliaero@gmail.com
${password_locator}     //input[@type="password"]
${password}             RobotSelenium@24
${login_button}         //button[@type="submit"]
${welcome_url}          https://pathfinder.w3schools.com/
${welcome_header}       //h2[contains(text(),'Welcome to Pathfinder')]

*** Keywords ***

Open Browser To Home Page
    Open Browser    ${home_url}  ${browser}
    Maximize Browser Window
    #Set Selenium Speed    2 seconds

Handle Cookies Banner
    Wait Until Element Is Visible   ${cookies_id}
    Click Element                   ${cookies_id}

The User Put In Valid Email
    Input Text    ${email_locator}   ${email}

The User Put In Valid Password
    Input Password    ${password_locator}   ${password}

The User Is On The Home Page
    Page Should Contain Element  ${header_home_page}
    Handle Cookies Banner

The User Clicks On Log In Button
    Click Element      ${login_link}

The User Put In Valid Credientials
    Wait Until Element Is Visible  ${email_locator}  timeout=5s

    The User Put In Valid Email
    The User Put In Valid Password

Submit Credentials
    Click Button    ${login_button}

The User Is Redirected To The Home Page
    Sleep  3s
    Page Should Contain Element  ${header_home_page}



