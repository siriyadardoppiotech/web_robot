*** Settings ***
Resource    ../import.robot

*** Keywords ***
SEARCH Phone
    [Arguments]    ${product}
    SeleniumLibrary.Input Text    ${search__locator_input_PD}     ${product}

Click Search Button
    SeleniumLibrary.Click Button    ${search_locator_click_btnsearch}

Wait For search PD Success
    SeleniumLibrary.Wait Until Element Is Visible    ${search_locator_PD_success}    
    