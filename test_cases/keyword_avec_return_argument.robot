*** Settings ***
Library     SeleniumLibrary
Library     XML


*** Variables ***
${URL}          https://admin-demo.nopcommerce.com/login
${BROWSER}      chrome


*** Test Cases ***
Login test
    ${Titre}=    Lancer le navigateur    ${URL}    ${BROWSER}
    Clear Element Text    css:Input[id="Email"]
    Input Text    css:Input[id="Email"]    admin@yourstore.com
    Clear Element Text    css:Input[name="Password"]
    Input Text    css:Input[name="Password"]    admin
    Click Button    xpath://button[@type="submit"]
    Sleep    3
    Wait Until Page Contains    Dashboard
    Log To Console    ${Titre}


*** Keywords ***
Lancer le navigateur
    [Arguments]    ${URL1}    ${BROWSER1}
    Open Browser    ${URL1}    ${BROWSER1}
    Maximize Browser Window
    ${Titre_page}=    Get Title
    RETURN    ${Titre_page}
