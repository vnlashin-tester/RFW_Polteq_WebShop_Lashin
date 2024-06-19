*** Settings ***

Documentation    Tests of folter by field
Library    SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/resources_pages/login_logout.resource
Resource    ../tests/resources_pages/menu_items.resource
Resource    ../tests/resources_pages/filter_page.resource


Test Setup            main.Open Page     
Test Teardown         main.Close Page


*** Test Cases ***

First test
    login_logout.Log in from main page
    filter_page.Check one of items check-box
    filter_page.Check two of items check-box
    login_logout.Log out from Your account page



