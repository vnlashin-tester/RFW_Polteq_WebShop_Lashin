*** Settings ***

Documentation    In this file are main resources for project
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem
Library    test_setup.py


*** Keywords ***

Get Chrome Options
    ${options}=    Evaluate    test_setup.get_chrome_options()    modules=test_setup
    RETURN    ${options}
Open Page 
    [Arguments]        ${web_page}=https://testshop.polteq-testing.com    ${browser}=chrome
    ${options}=    Get Chrome Options

    SeleniumLibrary.Open Browser  ${web_page}  ${browser}  options=${options}
    Maximize Browser Window

Close Page
    Delete All Cookies
    Close All Browsers


*** Variables ***

# General variables that are actual for most pages:
${options}=    Evaluate    sys.modules['browser_options'].get_browser_options()    sys, browser_options
# Filter_by (each page)
${filter_by_block}    //p[contains(text(), "Filter By")]
# Logo (to the maim_page)
${main_logo_in_the_header}    //div[@id="_desktop_logo"]
# For Clothes_menu
${drop_down_menu_clothes}    //li[@ id="category-3" ]/a[@class="dropdown-item"]
${drop_menu_items_men}    //a[@class="dropdown-item dropdown-submenu" and contains(text(), "Men")]
${drop_menu_items_women}    //a[@class="dropdown-item dropdown-submenu" and contains(text(), "Women")]
#  For Accessories_menu
${drop_down_menu_accessories}      //li[@id="category-6"]
${drop_menu_items_stationery}          //a[@class="dropdown-item dropdown-submenu" and contains(text(), "Stationery")] 
${drop_menu_items_home_accessories}        //a[@class="dropdown-item dropdown-submenu" and contains(text(), "Home Accessories")]
#  For Art_menu
${menu_art}    //li[@id="category-9"]
#  For Search field
${search_field}    //input[@type="text"]

# For CI
${REMOTE_URL}    http://localhost:4444/wd/hub

${HEADLESS}    False

${HEADLESS}   ${HEADLESS}