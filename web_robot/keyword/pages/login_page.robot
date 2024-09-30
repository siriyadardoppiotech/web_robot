*** Settings ***
Resource    ../import.robot

*** Keywords ***
Input Email
    [Arguments]    ${email}
    SeleniumLibrary.Input Text    ${login_locator_input-mail}    ${email}

Input Password
    [Arguments]    ${password}
    SeleniumLibrary.Input Text    ${login_locator_input-pass}       ${password}

Click Login Button
    SeleniumLibrary.Click Button    ${login_locator_Click_btn}

Wait For Login Success
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator_Success}  
    SeleniumLibrary.Click Element   ${login_locator_Click_btn_ok}
    






