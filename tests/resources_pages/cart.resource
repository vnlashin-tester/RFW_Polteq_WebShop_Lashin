*** Settings ***

Documentation    This is resource file for cart testing. 
Library    SeleniumLibrary
Resource    ../../main.resource
Variables   ../../variables.py



*** Variables ***
${header_of_popular_products}    //h2[contains(text(), "Popular Products")]
${third_element_of_popular_products}    //div[@itemprop="itemListElement"][3]
${block_with_product_information}    //div[@class="product-information"] 
${button_add_to_cart}    //button[@data-button-action="add-to-cart"]
${modal_window_add_to_cart}    //h4[@ id="myModalLabel"]
${button_proceed_to_checkout}    //*[contains(text(), "Proceed to checkout")]
${header_shoping_cart}    //h1[contains(text(), "Shopping Cart")]
${section_with_addresses}    //section[@ id="checkout-addresses-step"]
${button_confirm_address}    //button[@name="confirm-addresses"]
${section_checkout_delivery}    //section[@ id="checkout-delivery-step"]
${button_confirm_delivery_option}    //button[@name="confirmDeliveryOption"]
${check_box_agree}    //span[@class="custom-checkbox"]
${button_place_order}    //button[contains(text(), "Place order")]
${logo_on_the_order_page}    //div[@id="_desktop_logo"]/a/img


*** Keywords ***
Main positive scenario 
    Click Element    ${main_logo_in_the_header}
    Wait Until Element Is Visible    ${header_of_popular_products}
    Click Element    ${third_element_of_popular_products}
    Wait Until Element Is Visible    ${block_with_product_information}
    Click Button    ${button_add_to_cart}
    Wait Until Element Is Visible    ${modal_window_add_to_cart}
    Click Element    ${button_proceed_to_checkout}
    Wait Until Element Is Visible    ${header_shoping_cart} 
    Click Element    ${button_proceed_to_checkout}
    Wait Until Element Is Visible    ${button_confirm_address}
    Click Element    ${button_confirm_address}
    Wait Until Element Is Visible    ${section_checkout_delivery}
    Click Element    ${button_confirm_delivery_option}
    Wait Until Element Is Visible    ${check_box_agree}
    
    Click Element    ${check_box_agree}
    Element Should Be Disabled    //button[contains(text(), "Place order")]
    Click Element    ${logo_on_the_order_page}
    Wait Until Element Is Visible   ${header_of_popular_products} 