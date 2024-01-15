*** Settings ***
Resource  H:/Robot framework practice/Robotframework/variables/orangehrmloop.robot
Library  SeleniumLibrary



*** Keywords ***
checking login functionality
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
            
username    
    username entering    ${name}    ${data1}
password
    password entering    ${password}    ${data2}
button
    button clicked    ${button}
timelink
    Sleep    10
    check link    ${rec}    ${job_title}
    Sleep    5
    job title click dropdown
    Sleep    10 

#user defined methods        
username entering
    [Arguments]  ${uname}    ${da}
    Wait Until Page Contains Element  ${uname}  5
    Click Element    ${uname}  
    Input Text    ${uname}    ${da}

password entering
    [Arguments]    ${pwd}    ${dat}
    Wait Until Page Contains Element  ${pwd}  6
    Click Element  ${pwd}        
    Input Password  ${pwd}    ${dat}
button clicked
    [Arguments]    ${btn}   
    Wait Until Page Contains Element  ${btn}  5
    Click Button  ${btn}


#user define method
check link
    [Arguments]  ${element}    ${element2}    
    Wait Until Page Contains Element  ${element}  10
    Click Link    ${element}
    Wait Until Page Contains Element  ${element2}  10
    Click Element    ${element2}    
#dropdown
job title click dropdown
    # FOR  ${i}  IN RANGE  1  25 
    #     Press Keys    none    ARROW_DOWN
    #     ${j} =  Run Keyword And Return Status  Element Should Be Visible    ${var}
           
    #     IF    ${j}
    #          #Log To Console    isdisplayed
    #          Wait Until Element Is Visible    ${var}
    #          Press Keys    ${var}    ENTER
             
    #          #Click Element    ${j}
    #          Exit For Loop 
    #     ELSE
    #         Log  continue         
    #     END
        

    # END
  FOR  ${i}  IN RANGE  1  40
    Press Keys  none  ARROW_DOWN
    ${element2} =  Run Keyword And Return Status  Element Should Be Visible  ${text}
    IF    ${element2}
        Wait Until Element Is Visible  ${text}
        Press Keys  ${text}  ENTER
        Exit For Loop
    ELSE
        Log  continue
    END
  END 
    # FOR  ${i}  IN RANGE  1  40
    #     Press Keys  none  ARROW_DOWN
    #     ${element5} =  Run Keyword And Return Status  Element should be Visible  ${text}
    #     IF    ${element5}
    #         Wait Until Element Is Visible  ${text}    10
    #         Press Keys  ${text}  ENTER
    #         Exit For Loop
    #     ELSE
    #         Log  continue
    #     END
    # END
        
