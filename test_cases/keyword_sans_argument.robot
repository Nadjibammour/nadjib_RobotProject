*** Settings ***
Library     SeleniumLibrary
Library     XML


*** Variables ***
${URL}          https://admin-demo.nopcommerce.com/login
${BROWSER}      chrome


*** Test Cases ***
Login test
    Lancer le navigateur
    Clear Element Text    css:Input[id="Email"]
    Input Text    css:Input[id="Email"]    admin@yourstore.com
    Clear Element Text    css:Input[name="Password"]
    Input Text    css:Input[name="Password"]    admin
    Click Button    xpath://button[@type="submit"]
    Sleep    3
    Wait Until Page Contains    Dashboard

Search google
    Lancer le navigateur


*** Keywords ***
Lancer le navigateur
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
