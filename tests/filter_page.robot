*** Settings ***

Documentation    Tests of folter by field
Library    SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/resources_pages/login_logout.resource
Resource    ../tests/resources_pages/search_field.resource 


Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page


*** Test Cases ***

First test
    login_logout.Log in from main page



    login_logout.Log out from Your account page


*** Keywords ***


*** Variables ***

