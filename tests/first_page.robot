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
    first_page.Log in from main page
    first_page.Log out from Your account page

*** Keywords ***


    







*** Variables ***

${sign_in_main_page}    //div[@id="_desktop_user_info"]
${header_page_of_autorisation}    //header[@class="page-header"]
${email_field_autorisation}    //div[@class="col-md-6"]/input[@type="email"]
${password_field_autorisation}    //input[@type="password"]
${button_sighn_in_form_of_autorisation}    //button[@id="submit-login"]
${header_page_witch_autorased}    //header[@class="page-header"]