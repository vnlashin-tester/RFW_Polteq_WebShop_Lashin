*** Settings ***

Documentation    Tests for product card
Library    SeleniumLibrary

Resource    ../main.resource
Resource    ../tests/resources_pages/login_logout.resource
Resource    ../tests/resources_pages/product_card.resource

Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page

*** Test Cases ***
Test1
    login_logout.Log in from main page
    Check short type of Product Card
    Check normal type of Product Card
    login_logout.Log out from Your account page



