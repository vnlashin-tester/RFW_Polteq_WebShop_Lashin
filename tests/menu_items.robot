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
    Check the Clothes menu and Clothes > sub-menus
    Check the Clothes > Women sub-menu
    Check the Accessories menu and Accessories > sub-menus
    
    Check the Accessories > Home accessories
    Check the Art - menu

    login_logout.Log out from Your account page



*** Keywords ***

Check the Clothes menu and Clothes > sub-menus
    Click Element    ${main_logo_in_the_header}
    Mouse Over    ${drop_down_menu_clothes}
    Wait Until Element Is Visible    ${submenu_drop_down_menu_clothes_men}
    
    Page Should Contain Element    ${drop_menu_items_men}
    Page Should Contain Element    ${drop_menu_items_women}
    
    # Check that Men section is visible
    Click Element    ${submenu_drop_down_menu_clothes_men}
    Wait Until Element Is Visible    ${header_of_men_clothes_men}
    Page Should Contain Element    ${filter_by_block}

    # Check that Men contains products and each of there are avaliable:
    Element Should Be Visible    ${PRODUCTS}
    ${children_count}=    Get Element Count    ${CHILD_ELEMENT}
    Should Be True    ${children_count} > 0
    ${children}=    Get WebElements    ${CHILD_ELEMENT}
    FOR  ${child}  IN  @{children}
        Element Should Be Visible    ${child}
    END

Check the Clothes > Women sub-menu
    Click Element    ${main_logo_in_the_header}
    Mouse Over    ${drop_down_menu_clothes}
    Wait Until Element Is Visible    ${drop_menu_items_women}

    Click Element    ${drop_menu_items_women}
    Wait Until Element Is Visible    ${header_of_menu_clothes_women}
    Page Should Contain Element    ${filter_by_block}

    # Check that Women contains products and each of there are avaliable:
    Element Should Be Visible    ${PRODUCTS}
    ${children_count}=    Get Element Count    ${CHILD_ELEMENT}
    Should Be True    ${children_count} > 0
    ${children}=    Get WebElements    ${CHILD_ELEMENT}
    FOR  ${child}  IN  @{children}
        Element Should Be Visible    ${child}
    END
    
Check the Accessories menu and Accessories > sub-menus
    Click Element    ${main_logo_in_the_header}
    Mouse Over    ${drop_down_menu_accessories} 
    Wait Until Element Is Visible    ${drop_menu_items_stationery}
    
    Page Should Contain Element    ${drop_menu_items_stationery}
    Page Should Contain Element    ${drop_menu_items_home_accessories}

     # Check that Stationary section is visible
    Click Element    ${drop_menu_items_stationery}
    Wait Until Element Is Visible    ${header_of_accessories_stationery}
    Page Should Contain Element    ${filter_by_block}
    
    # Check that Stationery contains products and each of there are avaliable:
    Element Should Be Visible    ${PRODUCTS}
    ${children_count}=    Get Element Count    ${CHILD_ELEMENT}
    Should Be True    ${children_count} > 0
    ${children}=    Get WebElements    ${CHILD_ELEMENT}
    FOR  ${child}  IN  @{children}
        Element Should Be Visible    ${child}
    END

Check the Accessories > Home accessories
    Click Element    ${main_logo_in_the_header}
    Mouse Over    ${drop_down_menu_accessories}
    Wait Until Element Is Visible    ${drop_menu_items_home_accessories} 

    Click Element    ${drop_menu_items_home_accessories} 
    Wait Until Element Is Visible    ${header_of_accessories_home_accessories} 
    Page Should Contain Element    ${filter_by_block}

    # Check that Home Accessories contains products and each of there are avaliable:
    Element Should Be Visible    ${PRODUCTS}
    ${children_count}=    Get Element Count    ${CHILD_ELEMENT}
    Should Be True    ${children_count} > 0
    ${children}=    Get WebElements    ${CHILD_ELEMENT}
    FOR  ${child}  IN  @{children}
        Element Should Be Visible    ${child}
    END

Check the Art - menu
    Click Element    ${main_logo_in_the_header}
    
    Wait Until Element Is Visible    ${menu_art}

    Click Element   ${menu_art} 
    Wait Until Element Is Visible    ${header_of_art} 
    Page Should Contain Element    ${filter_by_block}

    # Check that Art contains products and each of there are avaliable:
    Element Should Be Visible    ${PRODUCTS}
    ${children_count}=    Get Element Count    ${CHILD_ELEMENT}
    Should Be True    ${children_count} > 0
    ${children}=    Get WebElements    ${CHILD_ELEMENT}
    FOR  ${child}  IN  @{children}
        Element Should Be Visible    ${child}
    END


*** Variables ***

# General
${filter_by_block}    //p[contains(text(), "Filter By")]
${CHILD_ELEMENT}    //div[@class="products row"]
${PRODUCTS}    //section[@id="products"]

#  For check menu_items_clothes "Clothes" and submenus "Men" and "Women":

${main_logo_in_the_header}    //div[@id="_desktop_logo"]
${drop_down_menu_clothes}    //li[@ id="category-3" ]/a[@class="dropdown-item"]
${drop_menu_items_men}    //a[@class="dropdown-item dropdown-submenu" and contains(text(), "Men")]
${drop_menu_items_women}    //a[@class="dropdown-item dropdown-submenu" and contains(text(), "Women")]
${submenu_drop_down_menu_clothes_men}    //li[@id="category-4"]/a[contains(text(), "Men")]
${header_of_men_clothes_men}    //h1[contains(text(), "Men")]
${header_of_menu_clothes_women}    //h1[contains(text(), "Women")]


#  For check menu_items_accessories "Accessories" and submenus "Stationerry" and "Home Accessories":

${drop_down_menu_accessories}      //li[@id="category-6"]
${drop_menu_items_stationery}          //a[@class="dropdown-item dropdown-submenu" and contains(text(), "Stationery")] 
${drop_menu_items_home_accessories}        //a[@class="dropdown-item dropdown-submenu" and contains(text(), "Home Accessories")]
${header_of_accessories_stationery}        //h1[contains(text(), "Stationery")]
${header_of_accessories_home_accessories}    //h1[contains(text(), "Home Accessories")]

#  For check menu_items_art "Art":

${menu_art}    //li[@id="category-9"]
${header_of_art}    //h1[contains(text(), "Art")]









