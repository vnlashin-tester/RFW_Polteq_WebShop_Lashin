*** Settings ***

Documentation    This is first test
Library     SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/first_page.resource

Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page

*** Test Cases ***

First case
    Click Element    //button[@aria-label="Language dropdown"]
    Sleep    3s