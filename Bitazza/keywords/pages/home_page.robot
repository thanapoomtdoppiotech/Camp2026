*** Keywords ***
Click menu market
    SeleniumLibrary.Wait until element is visible    ${home_locator.btn_market}    ${wait}
    SeleniumLibrary.Click element    ${home_locator.btn_market}

Click dropdowm list market
    SeleniumLibrary.Wait until element is visible    ${home_locator.ddl_market}    ${wait}
    SeleniumLibrary.Click element    ${home_locator.ddl_market}