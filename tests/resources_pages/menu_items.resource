*** Settings ***

Documentation    This is resource file for menu_items tests. Plus check that search field avaliable.
Library    SeleniumLibrary
Resource    ../../main.resource
Variables   ../../variables.py


*** Keywords ***

Check the Clothes menu and Clothes > sub-menus
    Click Element    ${main_logo_in_the_header}
    Page Should Contain Element    ${search_field}
    Mouse Over    ${drop_down_menu_clothes}
    Wait Until Element Is Visible    ${submenu_drop_down_menu_clothes_men}
    
    Page Should Contain Element    ${drop_menu_items_men}
    Page Should Contain Element    ${drop_menu_items_women}
    
    # Check that Men section is visible
    Click Element    ${submenu_drop_down_menu_clothes_men}
    Wait Until Element Is Visible    ${header_of_men_clothes_men}
    Page Should Contain Element    ${search_field}
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
    Page Should Contain Element    ${search_field}
    Page Should Contain Element    ${filter_by_block}

    # Check that Women contains products and each of there are avaliable:
    Element Should Be Visible    ${PRODUCTS}
    ${children_count}=    Get Element Count    ${CHILD_ELEMENT}
    Should Be True    ${children_count} > 0
    ${children}=    Get WebElements    ${CHILD_ELEMENT}
    FOR  ${child}  IN  @{children}
        Element Should Be Visible    ${child}
    END

Check the Clothes menu and both Men and Women pages
    Click Element    ${main_logo_in_the_header}
    Click Element   ${drop_down_menu_clothes}

    Page Should Contain Element  ${clothes_menu_men}
    Page Should Contain Element    ${clothes_menu_women}
    Page Should Contain Element    ${search_field}  
    Page Should Contain Element    ${filter_by_block}

Check the Accessories menu and Accessories > sub-menus
    Click Element    ${main_logo_in_the_header}
    Mouse Over    ${drop_down_menu_accessories} 
    Wait Until Element Is Visible    ${drop_menu_items_stationery}
    
    Page Should Contain Element    ${drop_menu_items_stationery}
    Page Should Contain Element    ${drop_menu_items_home_accessories}

     # Check that Stationary section is visible
    Click Element    ${drop_menu_items_stationery}
    Wait Until Element Is Visible    ${header_of_accessories_stationery}
    Page Should Contain Element    ${search_field}
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
    Page Should Contain Element    ${search_field} 
    Page Should Contain Element    ${filter_by_block}

    # Check that Home Accessories contains products and each of there are avaliable:
    Element Should Be Visible    ${PRODUCTS}
    ${children_count}=    Get Element Count    ${CHILD_ELEMENT}
    Should Be True    ${children_count} > 0
    ${children}=    Get WebElements    ${CHILD_ELEMENT}
    FOR  ${child}  IN  @{children}
        Element Should Be Visible    ${child}
    END

Check the Accessories menu and both Stationery and Home Accessories pages
    Click Element    ${main_logo_in_the_header}
    Click Element   ${drop_down_menu_accessories}

    Page Should Contain Element  ${accessories_menu_stationery} 
    Page Should Contain Element    ${accessories_menu_home_accessories}
    Page Should Contain Element    ${search_field} 
    Page Should Contain Element    ${filter_by_block}

Check the Art - menu
    Click Element    ${main_logo_in_the_header}
    Wait Until Element Is Visible    ${menu_art}

    Click Element   ${menu_art} 
    Wait Until Element Is Visible    ${header_of_art}
    Page Should Contain Element    ${search_field} 
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

${CHILD_ELEMENT}    //div[@class="products row"]
${PRODUCTS}    //section[@id="products"]

#  For check menu_items_clothes "Clothes" and submenus "Men" and "Women":

${submenu_drop_down_menu_clothes_men}    //li[@id="category-4"]/a[contains(text(), "Men")]
${header_of_men_clothes_men}    //h1[contains(text(), "Men")]
${header_of_menu_clothes_women}    //h1[contains(text(), "Women")]

${clothes_menu_men}    //ul[@ class="category-sub-menu"]//a[contains(text(), "Men")]
${clothes_menu_women}    //ul[@ class="category-sub-menu"]//a[contains(text(), "Women")]


#  For check menu_items_accessories "Accessories" and submenus "Stationerry" and "Home Accessories":


${header_of_accessories_stationery}        //h1[contains(text(), "Stationery")]
${header_of_accessories_home_accessories}    //h1[contains(text(), "Home Accessories")]

${accessories_menu_stationery}    //ul[@ class="category-sub-menu"]//a[contains(text(), "Stationery")]
${accessories_menu_home_accessories}    //ul[@ class="category-sub-menu"]//a[contains(text(), "Home Accessories")]

#  For check menu_items_art "Art":


${header_of_art}    //h1[contains(text(), "Art")]

