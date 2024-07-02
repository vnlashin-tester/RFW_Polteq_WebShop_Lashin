#!/bin/bash

# Default to non-headless mode
HEADLESS="False"

# Check for command line arguments
for arg in "$@"
do
    case $arg in
        --headless)
        HEADLESS="True"
        shift
        ;;
    esac
done

export HEADLESS
robot --variable HEADLESS:$HEADLESS --variable BROWSER:chrome tests/


#!/bin/bash
source .venv/bin/activate
robot -d results/ tests/login_negative_1.robot
robot -d results/ tests/login_positive.robot
robot -d results/ tests/menu_items.robot
robot -d results/ tests/search_field.robot
robot -d results/ tests/product_card.robot
robot -d results/ tests/filter_page.robot
robot -d results/ tests/cart.robot
robot -d results/ tests/first_page.robot
robot -d results/ tests/complex_test.robot





