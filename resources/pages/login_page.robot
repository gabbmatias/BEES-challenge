*** Settings ***
Resource    ../environment.robot

*** Variables ***
&{login}       
...     a_create_account=//a[@id="createAccountSubmit"]
...     i_name=//input[@id="ap_customer_name"]
...     i_email=//input[@id="ap_email"]
...     i_password=//input[@id="ap_password"]
...     i_confirm_password=//input[@id="ap_password_check"]
...     s_continue=//span[@id="auth-continue"]
...     d_error_message=//div[@id="auth-password-mismatch-alert"]/div/div

*** Keywords ***
I select create account
    Wait Until Element Is Visible       ${login.a_create_account}     5
    Click Element                       ${login.a_create_account}

I type the name ${name}
    Wait Until Element Is Visible       ${login.i_name}     5
    Input Text                          ${login.i_name}     ${name}

I type the email ${email}
    Wait Until Element Is Visible       ${login.i_email}     5
    Input Text                          ${login.i_email}     ${email}

I type the password "${password}"
    Wait Until Element Is Visible       ${login.i_password}     5
    Input Text                          ${login.i_password}     ${password}

I type the password again to confirm "${password}"
    Wait Until Element Is Visible       ${login.i_confirm_password}     5
    Input Text                          ${login.i_confirm_password}     ${password}

I select the option verify email
    Wait Until Element Is Visible       ${login.s_continue}     5
    Click Element                       ${login.s_continue}

The error message "${message}" should appear
    Element Text Should Be      ${login.d_error_message}    ${message}