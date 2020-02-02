*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${login_verification_string} =   Günün Fırsatları

*** Keywords ***
Login Webpage
    [Arguments]  ${email}  ${password}
    Click Account
    Enter Account Info  ${email}  ${password}

Click Account
    Click Element  id=myAccount
    Click Element  id=login

Enter Account Info
    [Arguments]  ${email}  ${password}
    Input Text  id=email  ${email}
    Input Text  id=password  ${password}
    Submit Form
    Wait Until Page Contains  ${login_verification_string}