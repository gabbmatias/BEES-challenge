*** Settings ***
Resource    ../environment.robot

*** Variables ***
&{product}       i_buy_now_button=//input[@id="buy-now-button"]

*** Keywords ***
I select buy now
    Wait Until Element Is Visible       ${product.i_buy_now_button}   5
    Click Element                       ${product.i_buy_now_button}