*** Settings ***
Library     SeleniumLibrary
Library     XML


*** Variables ***
${URL1}         https://admin-demo.nopcommerce.com/login
${BROWSER1}     chrome

${URL2}         https://www.google.com/
${BROWSER2}     chrome


*** Test Cases ***
Login test
    Lancer le navigateur    ${URL1}    ${BROWSER1}
    Clear Element Text    css:Input[id="Email"]
    Input Text    css:Input[id="Email"]    admin@yourstore.com
    Clear Element Text    css:Input[name="Password"]
    Input Text    css:Input[name="Password"]    admin
    Click Button    xpath://button[@type="submit"]
    Sleep    3
    Wait Until Page Contains    Dashboard

Search google
    Lancer le navigateur    ${URL2}    ${BROWSER2}


*** Keywords ***
Lancer le navigateur
    [Arguments]    ${URL_SITE}    ${NAVIGATEUR}
    Open Browser    ${URL1}    ${BROWSER1}
    Maximize Browser Window
