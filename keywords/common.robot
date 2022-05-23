***Settings***
Resource    ../resources/imports.robot
Library     Selenium2Library

# python -m robot --i CASEXXX  common.robot

***Keywords***

Open Pomelo Website
    Open Browser    ${url}     chrome
    Maximize Browser Window

Click Shopping Bag Button
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_bag}
    Click Element    ${btn_bag}

Click Product Category
    [Arguments]    ${num}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    (${div_category})[${num}]
    Click Element    (${div_category})[${num}]

Click Product
    [Arguments]    ${num}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    (${div_product})[${num}]
    Click Element    (${div_product})[${num}]

Click Add to Bag Button
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_addtobag}
    Click Element    ${btn_addtobag}

Click View My Shopping Bag Button
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_viewbag}
    Click Element    ${btn_viewbag}

Click Close Notice Item Added to Bag
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_closebagnotice}
    Click Element    ${btn_closebagnotice}

Click Close Shopping Bag Button
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_closebag}
    Click Element    ${btn_closebag}

Add Product to Bag
    [Arguments]    ${num}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    (${div_product})[${num}]
    Execute JavaScript    window.scrollTo(0, 500)
    Mouse Over    (${div_product})[${num}]
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    (${btn_addtobaghover})[${num}]    
    Click Element    (${btn_addtobaghover})[${num}]

Adjust Product Quantity
    [Arguments]    ${num}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${ddl_productquantity}
    Click Element    ${ddl_productquantity}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    //option[@value='${num}']
    Click Element    //option[@value='${num}']

Select Product Size
    [Arguments]    ${char}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    //button[@class='button pdp__options-item' and (text()='${char}')]
    Click Element    //button[@class='button pdp__options-item' and (text()='${char}')]

Adjust Product Size
    [Arguments]    ${char}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${ddl_productsize}
    Click Element    ${ddl_productsize}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    //option[text()='${char}']
    Click Element    //option[text()='${char}']

Remove Product from Shopping Bag
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_removeproduct}
    Click Element    ${btn_removeproduct}

Enter Promo Code
    [Arguments]    ${text}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_promocode}
    Input Text    ${txt_promocode}    ${text}

Click Apply Promo Code
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_applypromocode}
    Click Button    ${btn_applypromocode}

Validate My Shopping Bag            #Validate all element in Shopping Bag
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_bagheader}
    Element Text Should Be    ${txt_bagheader}    ${my_shopping_bag}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_closebag}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_productname}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_productprice}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    //label[@for='Size']
    Element Text Should Be    //label[@for='Size']    ${size}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    //label[@for='Quantity']
    Element Text Should Be    //label[@for='Quantity']    ${quantity}    
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_justforyouheader}
    Element Text Should Be    ${txt_justforyouheader}    ${just_for_you}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_justforyousubtitle}
    Element Text Should Be    ${txt_justforyousubtitle}    ${discover_handpicked_styles_and_trends}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${div_justforyouproduct}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_promotionandiscount}
    Element Text Should Be    ${txt_promotionandiscount}    ${promotions_and_discounts}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_promocode}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_applypromocode}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_summaryheader}
    Element Text Should Be    ${txt_summaryheader}    ${payment_summary}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_subtotal}
    Element Text Should Be    ${txt_subtotal}    ${subtotal}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_subtotalprice}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_total}
    Element Text Should Be    ${txt_total}    ${total}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${txt_totalprice}
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_checkout}

Click Checkout Button
    Wait Until Keyword Succeeds    20s    2s      Wait Until Element Is Visible    ${btn_checkout}
    Click Button    ${btn_checkout}