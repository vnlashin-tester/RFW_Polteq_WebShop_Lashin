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
    Drop Down Menu, add to cart, order
    # first_page.Log out from Your account page
    
    # Confirm that discount banner is avaliable on the page
    

*** Keywords ***

Confirm that discount banner is avaliable on the page
    Click Element    ${main_logo_in_the_header}
    Wait Until Element Is Visible    ${carousel_on_main_page}
    Page Should Contain Element  ${discount_banner_on_the_main_page}  

Drop Down Menu, add to cart, order
    Click Element    ${main_logo_in_the_header}
    Mouse Over    ${drop_down_menu_clothes}
    Wait Until Element Is Visible    ${submenu_drop_down_menu_clothes}
    Click Element    ${submenu_drop_down_menu_clothes}
    Wait Until Element Is Visible    ${header_of_men_clothes}
    Click Element    ${article_from_men_clothes}
    Wait Until Element Is Visible    ${button_add_to_cart}
    Click Element    ${button_add_to_cart}
    Wait Until Element Is Visible    ${modal_window_of_cart}
    Click Element    ${button_proceed_to_checkout}
    Wait Until Element Is Visible    ${header_of_shopping_cart}
    Click Element    ${button_proceed_to_checkout}
    Wait Until Element Is Visible    ${section_personal_information}
    Click Element    ${button_confirm_adress_continue}
    Element Attribute Value Should Be    locator=${radio_with_first_position}    attribute=value    expected=1,
    Click Button    ${button_continue_in_cart}
    Wait Until Element Is Visible    ${check_i_agree_in_cart}
    Click Element    ${check_i_agree_in_cart}
    Element Attribute Value Should Be    locator=${button_place_order}    attribute=disabled    expected=true
    



*** Variables ***

${main_logo_in_the_header}    //div[@id="_desktop_logo"]

${carousel_on_main_page}    //div[@id="carousel"]

${discount_banner_on_the_main_page}    //a[@class="banner"]
# Drop Down menu and Men submenu
${drop_down_menu_clothes}    //li[@ id="category-3" ]/a[@class="dropdown-item"]
${submenu_drop_down_menu_clothes}    //li[@id="category-4"]/a[contains(text(), "Men")]
${header_of_men_clothes}    //h1[contains(text(), "Men")]

# Men clothes 
${article_from_men_clothes}    //article[@data-id-product="1"]


# Add To Cart
${button_add_to_cart}    //button[@data-button-action="add-to-cart"]
${modal_window_of_cart}    //h4[@id="myModalLabel"]

# Shopping Cart
${header_of_shopping_cart}    //h1[contains(text(), "Shopping Cart")]
${button_proceed_to_checkout}    //a[@class="btn btn-primary"]
${section_personal_information}    //section[@id="checkout-personal-information-step"]
${button_confirm_adress_continue}    //button[@name="confirm-addresses"]
${radio_with_first_position}    //span/input[@id="delivery_option_1"]
${button_continue_in_cart}    //button[@name="confirmDeliveryOption"]
${check_i_agree_in_cart}    //form[@id="conditions-to-approve"]/ul/li[1]
${button_place_order}    //div[@id="payment-confirmation"]//button[@type="submit"]

