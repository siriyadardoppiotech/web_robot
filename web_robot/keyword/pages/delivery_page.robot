*** Settings ***
Resource    ../import.robot

*** Keywords ***
Input Name
    [Arguments]    ${name}
    SeleniumLibrary.Input Text    ${delivery_locator_input-name}     ${name}
Input SurName
    [Arguments]    ${surname}
    SeleniumLibrary.Input Text    ${delivery-locator_input-surN}     ${surname}

Input Shipping Address
    [Arguments]    ${Shipping_Ad}
    SeleniumLibrary.Input Text    ${delivery_locator_input_shipping}     ${Shipping_Ad}

Input Phone number
    [Arguments]    ${Phone}
    SeleniumLibrary.Input Text    ${delivery_locator_input_phone}     ${Phone}

Scroll To Button
    SeleniumLibrary.Scroll Element Into View    ${delivery_locator_click_btn}
    SeleniumLibrary.Click Element    ${delivery_locator_click_btn}

Wait For click pay Success
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_locator_click_btn}

#Select Payment Method
Select payment QR
     SeleniumLibrary.Click Element    ${delivery_locator_selectpay_QR}

Select payment credit
     SeleniumLibrary.Click Element    ${delivery_locator_selectpay_credit}

Wait For Selcet pay Success
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_locator_selectpay_credit}

Click Next button
    SeleniumLibrary.Click Button    ${delivery_locator_click_next}   