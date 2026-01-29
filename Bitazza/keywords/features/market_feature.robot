*** Keywords ***
Verify market display correctly
    [Arguments]    ${coin_onscreen}    ${list_testdata}
    market_page.Verify coin name display correctly    ${coin_onscreen}    ${list_testdata}

Verify if the coin is worth more than the specified amount
    [Arguments]    ${list_coin_name}    ${min_price}
    ${locator}    String.Replace string    ${market_locator.lbl_price_coin}    ***replace***    ${list_coin_name}
    ${raw}    SeleniumLibrary.Get text    ${locator}
    ${clean}    String.Replace string    ${raw}    ,    ${EMPTY}
    ${clean}    String.Replace string    ${clean}    THB    ${EMPTY}
    ${clean}    String.Strip string      ${clean}
    ${price}    BuiltIn.Convert to number    ${clean}
    IF    ${price} >= ${min_price}
        BuiltIn.Log to console    เหรียญ ${list_coin_name} มีราคามากกว่า ${min_price} THB
    ELSE
        BuiltIn.Fail    เหรียญ ${list_coin_name} มีราคาน้อยกว่า ${min_price} THB
    END