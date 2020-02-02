*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${deal_of_the_day_link} =  https://www.hepsiburada.com/gunun-firsati-teklifi
${product_found} =  ürün bulduk

*** Keywords ***
Select Deal Of The Day Product
    Click Link  ${deal_of_the_day_link}
    # TODO: The first product could not be located, test fails here
    #Click Button  xpath=//*[@id="df421f95-177c-4d67-9270-fd1e48d2d725"]/div/div/div/a/div[2]/div[5]/button
    Click Link  xpath=//*[@id="shoppingCart"]

Proceed To Payment
    Click Button  xpath=//div[@id="short-summary"]/div[1]/div[2]/button
    #Wait Until Page Contains Element  xpath://div[@id="short-summary"]//button
    Sleep  5s  # TODO: Replace with something like Wait Until
    Click Button  xpath://div[@id="short-summary"]//button

Search Product
    [Arguments]  ${product_name}
    Input Text  id=productSearch  ${product_name}
    Click Button  id=buttonProductSearch
    Wait Until Page Contains  ${product_found}

Select Brand
    [Arguments]  ${brand_name}
    Page Should Contain Checkbox  // *[ @ id = "brand-jbl"]
    # TODO: Test fails here. Although the above statement checks the presence of checkbox,
    # it cannot be located, "Not Interactable Exception" is received.
    Select Checkbox  // *[ @ id = "brand-jbl"]

Select Price Range
    [Arguments]  ${price}
    # TODO: Use ${price}
    Page Should Contain Checkbox  // *[ @id="attr-fiyat-750-1000"]
    # TODO: The same problem in Select Brand
    Select Checkbox  // *[ @id="attr-fiyat-750-1000"]

Select Color
    [Arguments]  ${color}
    # TODO: Use ${color}
    Page Should Contain Checkbox  // *[ @id="attr-renktipi-Siyah"]

Select Model
    # TO DO: Add code
    Log  Select Model code shall be added!

Go To Comments
    # TO DO: Add code
    Log  Go To Comments code shall be added!

Like Comment
    # TO DO: Add code
    Log  Like Comment code shall be added!