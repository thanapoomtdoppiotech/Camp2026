*** Variables ***
${market_locator.btn_header_market}    xpath=//a[@id="header_market"]
${market_locator.lbl_count_coin}       xpath=//tr[***replace***]/td[1]//div[contains(@class,'text-product_h6')]
${market_locator.lbl_coin_name}        xpath=//div[contains(@class,'text-product_h6') and text()='***replace***']
${market_locator.lbl_price_coin}       xpath=//tr[td//div[text()='***replace***']]/td[2]

${market_locator.wait_until}           xpath=//tr[1]/td[1]//div[contains(@class,'text-product_h6')]   #ใช้ Wait until