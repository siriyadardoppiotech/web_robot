*** Variables ***
${paymentDT_locator_display}    xpath=//h1[@class='ant-typography css-eq3tly']
${paymentDT_locator_inpu_cardnum}    id=basic_bin
${paymentDT_locator_inpu_ExpirDate}    id=basic_exp
${paymentDT_locator_inpu_CV_code}    id=basic_cvc
${paymentDT_locator_inpu_Card_owner}    id=basic_owner
${paymentDT_locator_click_btn}    xpath=//button[@type='submit']
${paymentDT_locator_popup-success}    xpath=//span[@class='ant-modal-confirm-title']
${paymentDT_locator_click_btnOk}    xpath=//span[text()='OK']
${paymentDT_locator_display_success}    xpath=//*[@id="app"]/section/div/div/div
${paymentDT_locator_click_continue}    xpath=//span[text()='Continue Shopping']


# Expir_Date: 10/2025
# CV_code:  123
# Card_owner: test dop