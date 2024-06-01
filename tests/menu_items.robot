*** Settings ***

Documentation    This is tests for Check the availability of pages and menu elements, as well as the operation (redirection) of menu elements. 
Library    SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/login_logout.resource   
Resource    ../tests/menu_items.resource

Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page



*** Test Cases ***

Menu_items
    login_logout.Log in from main page
    Check the Clothes menu and Clothes > Men sub-menu
    Check the Clothes > Women sub-menu
    login_logout.Log out from Your account page



*** Keywords ***

Check the Clothes menu and Clothes > Men sub-menu
    Click Element    ${main_logo_in_the_header}
    Mouse Over    ${drop_down_menu_clothes}
    Wait Until Element Is Visible    ${submenu_drop_down_menu_clothes_men}
    
    Page Should Contain Element    ${drop_menu_items_men}
    Page Should Contain Element    ${drop_menu_items_women}
    
    
    Click Element    ${submenu_drop_down_menu_clothes_men}
    Wait Until Element Is Visible    ${header_of_men_clothes_men}
    Page Should Contain Element    ${filter_by_block}

Check the Clothes > Women sub-menu
    Click Element    ${main_logo_in_the_header}
    Mouse Over    ${drop_down_menu_clothes}
    Wait Until Element Is Visible    ${drop_menu_items_women}

    Click Element    ${drop_menu_items_women}
    Wait Until Element Is Visible    ${header_of_menu_clothes_women}
    Page Should Contain Element    ${filter_by_block}
    





*** Variables ***

#  For check menu_items_clothes and submenus "Men" and "Women":

${main_logo_in_the_header}    //div[@id="_desktop_logo"]
${drop_down_menu_clothes}    //li[@ id="category-3" ]/a[@class="dropdown-item"]
${drop_menu_items_men}    //a[@class="dropdown-item dropdown-submenu" and contains(text(), "Men")]
${drop_menu_items_women}    //a[@class="dropdown-item dropdown-submenu" and contains(text(), "Women")]
${submenu_drop_down_menu_clothes_men}    //li[@id="category-4"]/a[contains(text(), "Men")]
${header_of_men_clothes_men}    //h1[contains(text(), "Men")]
${header_of_menu_clothes_women}    //h1[contains(text(), "Women")]
${filter_by_block}    //p[contains(text(), "Filter By")]










