*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${product_found} =  ürün bulduk

*** Keywords ***
Search Product
    Enter Search Term
    Submit Search

Enter Search Term
    [Arguments]  ${product_name}
    Input Text  id=productSearch  ${product_name}

Submit Search
    Click Button  id=buttonProductSearch
    Wait Until Page Contains  ${product_found}