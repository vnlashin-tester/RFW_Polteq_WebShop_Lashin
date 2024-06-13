*** Settings ***

Documentation    Tests for Cart (added and order places)
Library    SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/resources_pages/login_logout.resource
Resource    ../tests/resources_pages/menu_items.resource
Resource    ../tests/resources_pages/cart.resource

Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page



*** Test Cases ***

First test
    login_logout.Log in from main page    
    cart.Main positive scenario
    login_logout.Log out from Your account page
















    