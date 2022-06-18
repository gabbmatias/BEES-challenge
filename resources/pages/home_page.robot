*** Settings ***
Resource    ../environment.robot


*** Variables ***
&{home}
...     i_search=//input[@id="twotabsearchtextbox"]
...     i_search_button=//input[@id="nav-search-submit-button"]


*** Keywords ***
Given I'm at home page
    Open Browser    ${general.URL}  ${general.Browser}
    Maximize Browser Window

I search for ${text}
    Wait Until Element Is Visible   ${home.i_search}        5
    Input Text                      ${home.i_search}        ${text}
    Click Element                   ${home.i_search_button}