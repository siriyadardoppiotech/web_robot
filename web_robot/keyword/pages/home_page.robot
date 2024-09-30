*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click user Icon
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator_click_user_icon}    
    SeleniumLibrary.Click Element     ${home_locator_click_user_icon} 


   