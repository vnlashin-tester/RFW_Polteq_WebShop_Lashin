*** Settings ***

Documentation    Tests for product card
Library    SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/resources_pages/login_logout.resource





Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page
