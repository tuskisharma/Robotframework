*** Settings ***
Library    SeleniumLibrary
Resource    C:/robotframework/variables/variable2.robot   

*** Keywords ***
browser should be open
    Open Browser    ${url}    ${browser} 
    Maximize Browser Window
    Wait Until Page Contains Element    ${search}    5
    Click Element    ${search}
    Input Text    ${search}    ${movies}
    Click Button    ${button}