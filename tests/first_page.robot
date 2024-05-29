*** Settings ***

Documentation    This is first test
Library     SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/first_page.resource
Variables   ../variables.py

Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page

*** Test Cases ***

First case
    Log in from main page
    Log out from Your account page

*** Keywords ***

Log in from main page
    Click Element    ${sign_in_main_page}
    Wait Until Element Is Visible    ${header_page_of_autorisation}
    Click Element    ${email_field_autorisation}    clear
    Input Text    ${email_field_autorisation}     ${LOGIN}
    Click Element    ${password_field_autorisation}    clear
    Input Password    ${password_field_autorisation}    ${PASSWORD}
    Click Button    ${button_sighn_in_form_of_autorisation}
    Wait Until Element Is Visible    ${header_page_witch_autorased}
    Sleep    3s
    
Log out from Your account page    
    Click Element    //a[contains(text(), "Sign out")]
    Wait Until Element Is Visible    ${header_page_of_autorisation}
    







*** Variables ***

${sign_in_main_page}    //div[@id="_desktop_user_info"]
${header_page_of_autorisation}    //header[@class="page-header"]
${email_field_autorisation}    //div[@class="col-md-6"]/input[@type="email"]
${password_field_autorisation}    //input[@type="password"]
${button_sighn_in_form_of_autorisation}    //button[@id="submit-login"]
${header_page_witch_autorased}    //header[@class="page-header"]