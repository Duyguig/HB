*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ensure_page_loaded_string} =  hepsiburada

*** Keywords ***
Visit Webpage
    [Arguments]  ${url}
    Go To  ${url}

Verify Page Loaded
    Wait Until Page Contains  ${ensure_page_loaded_string}
