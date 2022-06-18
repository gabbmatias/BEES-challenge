*** Settings ***
Resource        ../../resources/environment.robot
Documentation   Validate a beer purchase at Amazon website
Test Teardown   Close All Browsers

*** Test Cases ***
Scnario 01: Buy a beer creating a new account with different passwords  
    Given I'm at home page
    When I search for cerveja leffe blonde
    And I select the first option
    And I select buy now
    And I select create account
    When I type the name Gabriel
    And I type the email bees.challenge@ambev.com
    And I type the password "000000"
    And I type the password again to confirm "000001"
    And I select the option verify email
    Then the error message "As senhas não são iguais" should appear
    