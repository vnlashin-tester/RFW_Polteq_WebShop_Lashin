*** Settings ***

Documentation    This is positive test of Search_field. 
Library    SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/login_logout.resource
Resource    ../tests/search_field.resource  


Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page


*** Test Cases ***

First test
    login_logout.Log in from main page

    login_logout.Log out from Your account page


*** Keywords ***




*** Variables ***

${search_field}    //input[@type="text"]
${error_search_message}    //section[@class="page-content page-not-found"]