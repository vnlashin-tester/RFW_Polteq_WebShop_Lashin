*** Settings ***
Suite Setup       Run Keywords    Log    Starting suite
Suite Teardown    Run Keywords    Log    Ending suite

*** Test Cases ***
Run Cart Tests
    Run Test Suite    tests/cart.robot

Run Login Positive Tests
    Run Test Suite    tests/login_positive.robot

Run Login Negative Tests
    Run Test Suite    tests/login_negative_1.robot

Run Menu Items Tests
    Run Test Suite    tests/menu_items.robot

Run Filter Page Tests
    Run Test Suite    tests/filter_page.robot

Run Product Card Tests
    Run Test Suite    tests/product_card.robot

Run Search Field Tests
    Run Test Suite    tests/search_field.robot

Run Complex Test
    Run Test Suite    tests/complex_test.robot
