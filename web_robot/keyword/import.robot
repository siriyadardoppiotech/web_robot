*** Settings ***
Library    SeleniumLibrary

Variables    ../resources/setting/setting.yaml
Variables    ../resources/testdata/testdata.yaml

Resource    ../keyword/common.robot

Resource    ../keyword/locator/home_locator.robot
Resource    ../keyword/locator/login_locator.robot
Resource    ../keyword/locator/search_locator.robot
Resource    ../keyword/locator/product_locator.robot
Resource    ../keyword/locator/cart_locator.robot
Resource    ../keyword/locator/delivery_locator.robot
Resource    ../keyword/locator/paymentDT_locator.robot
Resource    ../keyword/locator/userinfo_locator.robot

Resource    ../keyword/pages/home_page.robot
Resource    ../keyword/pages/login_page.robot
Resource    ../keyword/pages/searh_page.robot
Resource    ../keyword/pages/product_page.robot
Resource    ../keyword/pages/cart_page.robot
Resource    ../keyword/pages/delivery_page.robot
Resource    ../keyword/pages/paymentDT_page.robot
Resource    ../keyword/pages/userinfo_page.robot