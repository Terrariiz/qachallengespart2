***Settings***
Resource    ../resources/imports.robot

# robot --i CASE001 testcase.robot
***Test Cases***

[CASE001] Add Product to Cart and Check Cart
    [Tags]    CASE001
    Open Pomelo Website
    Click Product Category  1
    Click Product  1
    Click Add to Bag button
    Click Close Notice Item Added to Bag
    Click Shopping Bag Button
    Close All Browsers

[CASE002] Adjust Quantity of Product items or items
    [Tags]    CASE002
    Open Pomelo Website
    Click Product Category  1
    Add Product to Bag  1
    Click View My Shopping Bag Button
    Adjust Product Quantity  3
    Adjust Product Quantity  1
    Close All Browsers

[CASE003] Adjust Size of Product items or items
    [Tags]    CASE003
    Open Pomelo Website
    Click Product Category  3
    Click Product  2
    Select Product Size  S
    Click Add to Bag Button
    Click View My Shopping Bag Button
    Adjust Product Size  M
    Adjust Product Size  L
    Close All Browsers

[CASE004] Adjust or Delete Product items or items
    [Tags]    CASE004
    Open Pomelo Website
    Click Product Category  1
    Add Product to Bag  1
    Click View My Shopping Bag Button
    Adjust Product Quantity  3
    Adjust Product Quantity  1
    Remove Product from Shopping Bag
    Close All Browsers

[CASE005] Fill-in and Click Apply Promo Code
    [Tags]    CASE005
    Open Pomelo Website
    Click Product Category  1
    Add Product to Bag  1
    Click View My Shopping Bag Button
    Enter Promo Code  ${promocode}
    Click Apply Promo Code
    Close All Browsers

[CASE006] Validate Proceed and Checkout
    [Tags]    CASE006
    Open Pomelo Website
    Click Product Category  1
    Add Product to Bag  1
    Click View My Shopping Bag Button
    Validate My Shopping Bag
    Click Checkout Button
    Close All Browsers