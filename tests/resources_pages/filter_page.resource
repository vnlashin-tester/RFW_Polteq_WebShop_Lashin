*** Settings ***

Documentation    This is resource file for testing of folter by field. 
Library    SeleniumLibrary
Resource    ../../main.resource
Variables   ../../variables.py



*** Keywords ***
Check one of items check-box
    
    Click Element    ${main_logo_in_the_header}
    Click Element   ${drop_down_menu_accessories}
    Wait Until Element Is Visible  ${accessories_menu_stationery} 
    
    Click Element    ${stationary_check_box}
    Wait Until Element Is Visible    ${active_filters_with_wrigh_result}

Check two of items check-box
    Click Element    ${main_logo_in_the_header}
    Click Element   ${drop_down_menu_clothes}
    Wait Until Element Is Visible  ${clothes_menu_men}

    Click Element    ${men_check_box}
    Wait Until Element Is Visible    ${active_filters_with_men}
    Click Element    ${size_L_check_box}
    Wait Until Element Is Visible    ${active_filters_with_L}

*** Variables ***

${stationary_check_box}       //label[@class="facet-label"]/a[contains(text(), "Stationery")]
${active_filters_with_wrigh_result}    //li[contains(text(), "Categories") and contains(text(), "Stationery")]

${men_check_box}    //label[@class="facet-label"]/a[contains(text(), "Men")]
${size_L_check_box}    //label[@class="facet-label"]/a[contains(text(), "L")] [1]
${active_filters_with_men}    //li[contains(text(), "Categories") and contains(text(), "Men")]
${active_filters_with_L}    //li[contains(text(), "Size") and contains(text(), "L")]