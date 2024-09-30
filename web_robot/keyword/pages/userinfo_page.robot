*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click user Icon
    SeleniumLibrary.Wait Until Element Is Visible    ${userinfo_locator_click_user_icon}    
    SeleniumLibrary.Click Element     ${userinfo_locator_click_user_icon} 

Scroll To My Order
    SeleniumLibrary.Scroll Element Into View    ${userinfo_locator_scoll_myorder}
    SeleniumLibrary.Click Element    ${userinfo_locator_click_element} 

Wait For Preparing display
     SeleniumLibrary.Wait Until Element Is Visible    ${userinfo_locator_preparing} 
     SeleniumLibrary.Scroll Element Into View    ${userinfo_locator_scoll_orderid} 
     SeleniumLibrary.Click Element    ${userinfo_locator_scoll_orderid}  

Wait For Order detail
    SeleniumLibrary.Wait Until Element Is Visible    ${userinfo_locator_Order_detail}


    #${userinfo_locator_scoll_deli-status} 