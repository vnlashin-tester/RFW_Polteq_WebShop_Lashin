*** Settings ***

Documentation    This is first test
Library     SeleniumLibrary
Resource    ../main.resource
Resource    ../tests/first_page.resource
Variables   ../variables.py

Test Setup            main.Open Page     web_page=https://testshop.polteq-testing.com/
Test Teardown         main.Close Page

*** Test Cases ***

First case
    first_page.Log in from main page
    first_page.Log out from Your account page
    Confirm that discount banner is avaliable on the page

*** Keywords ***

Confirm that discount banner is avaliable on the page
    Click Element    ${main_logo_in_the_header}
    Wait Until Element Is Visible    ${carousel_on_main_page}
    Page Should Contain Element  ${discount_banner_on_the_main_page}  

    







*** Variables ***

${main_logo_in_the_header}    //div[@id="_desktop_logo"]
${carousel_on_main_page}    //div[@id="carousel"]
${discount_banner_on_the_main_page}    //a[@class="banner"]