*** Settings ***

Documentation    This is resource file for Search field. 
Library    SeleniumLibrary
Resource    ../../main.resource
Variables   ../../variables.py




*** Keywords ***

Positive test of search result
    Click Element    ${main_logo_in_the_header}
    Page Should Contain Element    ${search_field}
    Click Element    ${search_field}    clear
    Input Text    ${search_field}    SWEATER
    Click Element    ${button_search_submit}
    Wait Until Element Is Visible    ${items_search_results}

Negative test of search result
    Click Element    ${search_field}    clear
    Input Text    ${search_field}    $%^&
    Click Element    ${button_search_submit}
    Wait Until Element Is Visible    ${error_search_message}






*** Variables ***

${button_search_submit}    //button[@type="submit"]
${error_search_message}    //section[@class="page-content page-not-found"]
${items_search_results}    //*[contains(text(), "sweater")]