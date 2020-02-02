*** Settings ***
Resource  ../Resources/PageObjects/StartPage.robot
Resource  ../Resources/PageObjects/TopNavigation.robot
Resource  ../Resources/PageObjects/Login.robot
Resource  ../Resources/PageObjects/Product.robot

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome
    Maximize Browser Window

End Web Test
    Close Browser