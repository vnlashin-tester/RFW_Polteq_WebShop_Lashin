*** Settings ***

Documentation    This is resource file for testing of product card. 
Library    SeleniumLibrary
Resource    ../../main.resource
Variables   ../../variables.py



*** Keywords ***

Check short type of Product Card
    Click Element    ${main_logo_in_the_header}
    Wait Until Element Is Visible    ${header_of_popular_products}
    Mouse Over    ${first_items_of_popular_products} 
    Scroll Element Into View    ${hidden_quick_view}
        
    Wait Until Element Is Visible    ${hidden_quick_view}
    Click Element    ${hidden_quick_view}    
    Sleep    2s
    Wait Until Element Is Visible   ${text_from_first_items_of_popular_products}
    
    # Compare text (Case Insensitive):
    ${text1} =    Get Text     ${text_from_first_items_of_popular_products}
    ${text2} =    Get Text     ${header_from_card_page}
    ${result}=    Run Keyword If    '${text1}'.lower() == '${text2}'.lower()    
    ...    Set Variable    True    ELSE    Set Variable    False
    Should Be True    ${result}
    
    Click Element    ${close_short_card_page}
Check normal type of Product Card
    ${text3} =    Get Text     ${text_from_third_items_of_popular_products}
    Click Element    ${third_items_of_popular_products}
    Wait Until Element Is Visible    ${header_from_card_page}
    ${text4} =    Get Text    ${header_from_card_page}
    
    # Due to the result of two strings was different (in the first word was shorter form than in the second
    # and I need CUT first 21 letters of each words ans then compare there)
    ${trimmed_text3} =    Set Variable    ${text3[:21]}  
    ${trimmed_text4} =    Set Variable    ${text4[:21]}  
    ${result2} =    Run Keyword If    '${trimmed_text3}'.lower() == '${trimmed_text4}'.lower()    
    ...    Set Variable    True    ELSE    Set Variable    False
    Should Be True    ${result2}


*** Variables ***

${header_from_card_page}    //h1[@class="h1"]

${header_of_popular_products}    //h2[contains(text(), "Popular Products")]
${first_items_of_popular_products}    //div[@class="products row"]/div [1]
${third_items_of_popular_products}    //div[@class="products row"]/div [3]
${text_from_third_items_of_popular_products}    //div[@class="products row"]/div [3]//h3/a

${hidden_quick_view}    //a[@class="quick-view"]

${text_from_first_items_of_popular_products}    //div[@class="products row"]/div [1]//h3/a

${close_short_card_page}    //button[@class="close"] 
