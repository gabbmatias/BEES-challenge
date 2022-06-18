*** Settings ***
Resource    ../environment.robot

*** Variables ***
&{result}       a_first=//span[contains(text(), "Cerveja Leffe Blonde")]


*** Keywords ***
I select the first option
    Wait Until Element Is Visible       ${result.a_first}   5
    Click Element                       ${result.a_first}