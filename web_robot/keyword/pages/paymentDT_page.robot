*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait For Payment Details 
    SeleniumLibrary.Wait Until Element Is Visible    ${paymentDT_locator_display} 

Input Card number
    [Arguments]    ${Card_num}
    SeleniumLibrary.Input Text    ${paymentDT_locator_inpu_cardnum}    ${Card_num}    

Input Expiration Date
    [Arguments]    ${Expir_Date}
    SeleniumLibrary.Input Text    ${paymentDT_locator_inpu_ExpirDate}    ${Expir_Date}  

Input CV Codde
    [Arguments]    ${CV_code}
    SeleniumLibrary.Input Text    ${paymentDT_locator_inpu_CV_code}   ${CV_code}  

Input Card owner
    [Arguments]    ${Card_owner}
    SeleniumLibrary.Input Text    ${paymentDT_locator_inpu_Card_owner}   ${Card_owner}  

Click Confirm Payment button
    SeleniumLibrary.Click Button    ${paymentDT_locator_click_btn}


Wait For add payment Success
    SeleniumLibrary.Wait Until Element Is Visible    ${paymentDT_locator_popup-success}   
    SeleniumLibrary.Click Element   ${paymentDT_locator_click_btnOk}

Wait For payment complete 
    SeleniumLibrary.Wait Until Element Is Visible    ${paymentDT_locator_display_success}

Click Continue Shopping
    SeleniumLibrary.Click Element    ${paymentDT_locator_click_continue} 
