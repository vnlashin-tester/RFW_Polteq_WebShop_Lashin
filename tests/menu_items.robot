*** Settings ***

Documentation    This is tests for Check the availability of pages and menu elements, as well as the operation (redirection) of menu elements. 
Library    SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/resources_pages/login_logout.resource   
Resource    ../tests/resources_pages/menu_items.resource

Test Setup            main.Open Page     
Test Teardown         main.Close Page

*** Test Cases ***
Menu_items
    login_logout.Log in from main page
    #  Group of tests for Clothes menu
    menu_items.Check the Clothes menu and Clothes > sub-menus
    menu_items.Check the Clothes > Women sub-menu
    menu_items.Check the Clothes menu and both Men and Women pages
    #  Group of tests for Accessories menu
    menu_items.Check the Accessories menu and Accessories > sub-menus
    menu_items.Check the Accessories > Home accessories
    menu_items.Check the Accessories menu and both Stationery and Home Accessories pages
    #  Group of tests for Art menu
    menu_items.Check the Art - menu

    login_logout.Log out from Your account page















