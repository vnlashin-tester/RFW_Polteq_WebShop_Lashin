*** Settings ***

Documentation    This is resource file for LogIN and LogOut. 
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
   
    
Log out from Your account page    
    Click Element    ${go_to_your_account}
    Click Element    //a[contains(text(), "Sign out")]
    Wait Until Element Is Visible    ${header_page_of_autorisation}



*** Variables ***
# Sign In in header > nav on each pages:
${sign_in_main_page}    //div[@id="_desktop_user_info"]
# Sign In window:
${header_page_of_autorisation}    //header[@class="page-header"]
${email_field_autorisation}    //div[@class="col-md-6"]/input[@type="email"]
${password_field_autorisation}    //input[@type="password"]
${button_sighn_in_form_of_autorisation}    //button[@id="submit-login"]
# Control that we were autorased:
${header_page_witch_autorased}    //header[@class="page-header"]
# Go to your account "Polteq Tester" in header > nav on each pages:
${go_to_your_account}    //span[contains(text(), "Polteq Tester")]