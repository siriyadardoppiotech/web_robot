*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click Product 
    SeleniumLibrary.Click Element    ${product_locator_clickPD} 

Wait For PD Show
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator_PDshow}   
    SeleniumLibrary.Click Element   ${product_locator_click_btn}

Wait For Add to cart Success
    # SeleniumLibrary.Wait Until Element Is Visible    ${product_locator_addTC_success}   
    SeleniumLibrary.Click Element   ${product_locator_click_ok} 
   

  
