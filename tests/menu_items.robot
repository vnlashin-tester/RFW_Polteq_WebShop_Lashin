*** Settings ***

Documentation    This is tests for Check the availability of pages and menu elements, as well as the operation (redirection) of menu elements. 
Library    SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/login_logout.resource   
Resource    ../tests/menu_items.resource

Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page



*** Test Cases ***



*** Keywords ***




*** Variables ***