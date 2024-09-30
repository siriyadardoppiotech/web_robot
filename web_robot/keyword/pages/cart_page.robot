*** Settings ***
Resource    ../import.robot

*** Keywords ***
wait For Product
    SeleniumLibrary.Wait Until Element Is Visible    ${cart_locator_wait_For_Product} 

Click cart 
     SeleniumLibrary.Click Element    ${cart_locator_click_cart}


Wait For cart page show
    SeleniumLibrary.Wait Until Element Is Visible    ${cart_locator_wait_For_Product} 