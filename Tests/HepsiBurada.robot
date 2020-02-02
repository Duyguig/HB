*** Settings ***
Documentation  My first robot test cases

Resource  ../Resources/Common.robot  # Setup & Teardown
Resource  ../Resources/HepsiBuradaApp.robot  # Lower level keywords

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${web_page} =  http://hepsiburada.com
${email} =  bilsayig@gmail.com
${password} =  bilsayig1
${product_name} =  bluetooth kulaklık
${brand_name} =  jbl
${price_range} =  750-1000
${color} =  Siyah

*** Test Cases ***
Scenario 1
    [Documentation]  Selected product shall be bought
    [Tags]  Scenario1
    HepsiBuradaApp.Visit Webpage  ${web_page}
    HepsiBuradaApp.Login Webpage  ${email}  ${password}
    HepsiBuradaApp.Buy Product from Deal Of The Day

Scenario 2
    [Documentation]  Feedback shall be given for a comment of the selected product
    [Tags]  Scenario2
    HepsiBuradaApp.Visit Webpage  ${web_page}
    HepsiBuradaApp.Search Product  ${product_name}
    HepsiBuradaApp.Select Brand  ${brand_name}
    HepsiBuradaApp.Price Range  ${price_range}
    HepsiBuradaApp.Select Color  ${color}
    HepsiBuradaApp.Select Model
    HepsiBuradaApp.Go To Comments
    HepsiBuradaApp.Like Comment