*** Settings ***

Documentation    In this file are main resources for project
Library    SeleniumLibrary

*** Keywords ***

Open Page 
    [Arguments]        ${web_page}    ${browser}=chrome
    
    Open Browser    ${web_page}    ${browser}
    Maximize Browser Window

Close Page
    Delete All Cookies
    Close All Browsers
