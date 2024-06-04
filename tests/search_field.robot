*** Settings ***

Documentation    This is positive test of Search_field. Tests for check avaliability of search field on the major pages were realised in menu_itema.robot
Library    SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/resources_pages/login_logout.resource
Resource    ../tests/resources_pages/search_field.resource 


Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page


*** Test Cases ***

First test
    login_logout.Log in from main page
    search_field.Positive test of search result
    search_field.Negative test of search result
    login_logout.Log out from Your account page

