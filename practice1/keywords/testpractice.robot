*** Settings ***
Resource  H:/Robot framework practice/practice1/variables/testpractice.robot
Library  SeleniumLibrary



*** Keywords ***

checking login functionality
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
            
dplink
    check link    ${sel}
    title click dropdown
#user define method
check link
    [Arguments]  ${element}  
    Wait Until Page Contains Element  ${element}  10
    Click Element    ${element}    
#dropdown
title click dropdown
    FOR  ${i}  IN RANGE  1  10
        Press Keys    none    ARROW_DOWN
        ${j} =  Run Keyword And Return Status  Element Should Be Visible    ${data} 
           
        IF    ${j}
             #Log To Console    isdisplayed
             Wait Until Element Is Visible    ${j}
             #Press Keys    ${dpvalue}    ENTER
             Click Element    ${j}
             Exit For Loop 
        ELSE
            Log  continue         
        END
        

    END
  
        
