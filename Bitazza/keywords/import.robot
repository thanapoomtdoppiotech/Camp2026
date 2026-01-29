*** Settings ***
Library     BuiltIn
Library     SeleniumLibrary
Library     String
Library     DebugLibrary
Library     Collections

# Fearures
Resource    ${CURDIR}/features/home_feature.robot
Resource    ${CURDIR}/features/market_feature.robot

# Pages
Resource    ${CURDIR}/pages/home_page.robot
Resource    ${CURDIR}/pages/market_page.robot

# Common
Resource    ${CURDIR}/common.robot

# Locators
Resource    ${CURDIR}/../resources/locators/home_locator.robot
Resource    ${CURDIR}/../resources/locators/market_locator.robot

# Setting
Resource   ${CURDIR}/../resources/setting/setting.robot
    
# Testdata
Variables    ${CURDIR}/../resources/testdata/market_data.yaml