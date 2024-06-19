*** Settings ***

Documentation    This is positive test of LogIN and LogOut. 
Library    SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/resources_pages/login_logout.resource   
Variables   ../variables.py

Test Setup            main.Open Page     
Test Teardown         main.Close Page



*** Test Cases ***

Positive LogIn and Log Out
    login_logout.Log in from main page
    login_logout.Log out from Your account page

