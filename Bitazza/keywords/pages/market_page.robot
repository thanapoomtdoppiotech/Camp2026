*** Keywords ***
Click header market
    SeleniumLibrary.Wait until element is visible    ${market_locator.btn_header_market}    ${wait}
    SeleniumLibrary.Click element    ${market_locator.btn_header_market}
  
Get coin name
    [Arguments]    ${start}=1    ${stop}=5
    SeleniumLibrary.Wait until element is visible    ${market_locator.wait_until}    ${wait}
    ${listcoin}     Create list
    FOR    ${index}    IN RANGE     ${start}    ${stop}
            ${index}    BuiltIn.Convert to string    ${index}
            ${locator}    String.Replace string       ${market_locator.lbl_count_coin}    ***replace***        ${index}
            ${coinname}      SeleniumLibrary.Get text    ${locator}
            Collections.Append to list   ${listcoin}    ${coinname} 
    END
    RETURN    ${listcoin}

Verify coin name display correctly
    [Arguments]    ${coin_onscreen}    ${list_testdata}
    FOR    ${coinname}    IN    @{list_testdata}
        ${locator}    String.Replace string    ${market_locator.lbl_coin_name}    ***replace***    ${coinname}
        SeleniumLibrary.Wait until element is visible    ${locator}        ${wait}
        Collections.List should contain value    ${coin_onscreen}    ${coinname}
    END