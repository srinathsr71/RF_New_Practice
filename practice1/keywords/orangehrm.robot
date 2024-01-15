*** Settings ***
Resource    H:/Robot framework practice/practice1/variables/orangehrm.robot
Library     SeleniumLibrary


*** Keywords ***
Checking login feature
    Open Browser    ${url1}    ${browser1}
    Maximize Browser Window
    Wait Until Page Contains Element  ${name1}  5
    Click Element    ${name1}
    Input Text    ${name1}    ${data1}
    Wait Until Page Contains Element  ${pwd}  5
    Click Element    ${pwd}
    Input Password    ${pwd}    ${data2}
    Wait Until Page Contains Element  ${btn}  10
    Click Button    ${btn}
    Wait Until Page Contains Element  ${dropdown}  10
    

    