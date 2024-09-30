*** Settings ***
Resource    ../keyword/import.robot
Test Teardown    Close All Browsers

*** Test Cases ***
ADD PRODUCT TO CART
    SeleniumLibrary.Set Selenium Speed    0.5s
    common.Open Browser  
    home_page.Click user Icon 
    login_page.Input Email    ${email}
    login_page.Input Password    ${password}        
    login_page.Click Login Button   
    login_page.Wait For Login Success
    searh_page.SEARCH Phone   ${product} 
    searh_page.Click Search Button
    searh_page.Wait For search PD Success
    product_page.Click Product
    product_page.Wait For PD Show
    product_page.Wait For Add to cart Success
    cart_page.wait For Product
    cart_page.Click cart
    cart_page.Wait For cart page show
    delivery_page.Input Name    ${name}
    delivery_page.Input SurName    ${surname}
    delivery_page.Input Shipping Address    ${Shipping_Ad}
    delivery_page.Input Phone number    ${Phone}
    delivery_page.Scroll To Button
    delivery_page.Wait For click pay Success
    delivery_page.Select payment QR
    delivery_page.Select payment credit
    delivery_page.Wait For Selcet pay Success
    delivery_page.Click Next button
    paymentDT_page.Wait For Payment Details
    paymentDT_page.Input Card number    ${Card_num}
    paymentDT_page.Input Expiration Date    ${Expir_Date}
    paymentDT_page.Input CV Codde    ${CV_code}  
    paymentDT_page.Input Card owner    ${Card_owner}
    paymentDT_page.Click Confirm Payment button
    paymentDT_page.Wait For add payment Success
    paymentDT_page.Wait For payment complete
    paymentDT_page.Click Continue Shopping
    userinfo_page.Click user Icon
    userinfo_page.Scroll To My Order
    userinfo_page.Wait For Preparing display
    userinfo_page.Wait For Order detail