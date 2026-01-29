*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot

Test Setup       common.Open bitazza browser
Test Teardown    common.Close bitazza browser
*** Test Cases *** 
TC001 Verify if the Ethereum coin is worth more than 30,000 THB
    [Tags]    TC001
    home_feature.Click market menu
    market_page.Click header market
    ${listcoin}    market_page.Get coin name
    market_feature.Verify market display correctly    ${listcoin}    ${coin_name}
    market_feature.Verify if the coin is worth more than the specified amount   ${TC001.verify.coinname}    ${TC001.verify.price}