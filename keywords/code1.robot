*** Settings ***
Library  SeleniumLibrary
Resource    C:/robotframework/variables/variable.robot  

*** Keywords ***
open the url
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    10
    Page Should Contain    Login
    Log To Console    login found
enter username
    Wait Until Page Contains Element    ${username}    5
    Log To Console    username found
    Click Element    ${username}
    Log To Console    element clicked
    Input Text    ${username}    ${name}
    Log To Console    username entered
enter password
    Wait Until Page Contains Element    ${password}    5
    Log To Console    password is found
    Click Element    ${password}
    Log To Console    element clicked
    Input Password    ${password}    ${pwd}
    Log To Console    password entered
login to orangehrm
    Wait Until Page Contains Element    ${submit}    5
    Log To Console    login found
    Click Element    ${submit}
    Log To Console    element clicked
    
timelink method
    click on side menu    ${timelink}
    Sleep    3

Different module
    click on side menu  ${reclink}
    Sleep    5
    Click Element    ${job_dropdown}
    job title dropdown
    Wait Until Page Contains Element    ${rec_search}    5
    Click Element    ${rec_search}
    Sleep    10


#navigating through dropdown
job title dropdown
    FOR    ${i}     IN RANGE    1    50
        Press Keys    none    ARROW_DOWN
        ${element_2} =    Run Keyword And Return Status    Element Should Be Visible    ${test}    
        IF    ${element_2}
            Wait Until Element Is Visible    ${test}
            Press Keys    ${test}    ENTER
            Exit For Loop
        ELSE
            Log    continue
        END
    END
        

#clicking on side menu
click on side menu
    [Arguments]    ${element}    
    Wait Until Page Contains Element    ${element}    10
    Click Element    ${element}


    

    