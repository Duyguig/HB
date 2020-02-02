*** Settings ***
Resource  ../Resources/PageObjects/StartPage.robot
Resource  ../Resources/PageObjects/TopNavigation.robot
Resource  ../Resources/PageObjects/Login.robot
Resource  ../Resources/PageObjects/Product.robot

*** Variables ***

*** Keywords ***
Buy Product from Deal Of The Day
    Product.Select Deal Of The Day Product
    Product.Proceed To Payment

Visit Webpage
    [Arguments]  ${url}
    StartPage.Visit Webpage  ${url}

Login Webpage
    [Arguments]  ${email}  ${password}
    Login.Login Webpage  ${email}  ${password}

Search Product
    [Arguments]  ${product_name}
    Product.Search Product  ${product_name}

Select Brand
    [Arguments]  ${brand_name}
    Product.Select Brand  ${brand_name}

Select Price Range
    [Arguments]  ${price}
    Product.Select Price Range  ${price}

Select Color
    [Arguments]  ${color}
    Product.Select Color  ${color}

Select Model
    Product.Select Model

Go To Comments
    Product.Go To Comments

Like Comment
    Product.Go To Comments