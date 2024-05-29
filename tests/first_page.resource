*** Settings ***

Documentation    This are resources for first_test
Library    SeleniumLibrary
Resource    ../main.resource
Variables   ../variables.py

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