*** Settings ***

Documentation    This is group of negative tests  for login page (invalid login/password)
Library     SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/resources_pages/login_logout.resource


Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page

Test Template    Invalid login template

*** Test Cases ***            user_name        user_password        

Invalid User Name                invalid@email.com       ${PASSWORD}
Invalid Password                 ${LOGIN}                invalid
Invalid User Name and Password    invalid@email.com      invalid


*** Keywords ***

Invalid login template
    [Documentation]    This is temlate for invalid data login
    [Arguments]    ${user_name}    ${user_password}
    Log Many       ${user_name}    ${user_password}
    
    Click Element    ${sign_in_main_page}
    Wait Until Element Is Visible    ${header_page_of_autorisation}
    Click Element    ${email_field_autorisation}    clear
    Input Text    ${email_field_autorisation}     ${user_name}
    Click Element    ${password_field_autorisation}    clear
    Input Password    ${password_field_autorisation}    ${user_password}
    Click Button    ${button_sighn_in_form_of_autorisation}
    Wait Until Element Is Visible    ${message_autirisation_failed}


*** Variables ***

${message_autirisation_failed}    //li[contains(text(), "Authentication failed")]
