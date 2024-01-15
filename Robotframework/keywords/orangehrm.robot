*** Settings ***
Resource  H:/Robot framework practice/Robotframework/variables/orangehrm.robot
Library  SeleniumLibrary



*** Keywords ***
checking login functionality
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    # IF    "${text}" == "${text}"
    #     Log To Console    text found
    #     ELSE
    #     Log To Console    text not found    
    # END
    #Log To Console    ${title}
    # Log To Console    Get Title
    # Log To Console    Get Text    ${title}    
        
username    
    username entering    ${name}    ${data1}
password
    password entering    ${password}    ${data2}
button
    button clicked    ${button}
timelink
    checking link    ${link}

#user defined methods        
username entering
    [Arguments]  ${uname}    ${da}
    Wait Until Page Contains Element  ${name}  5
    Click Element    ${name}  
    Input Text    ${name}    ${data1}

password entering
    [Arguments]    ${pwd}    ${dat}
    Wait Until Page Contains Element  ${password}  6
    Click Element  ${password}        
    Input Password  ${password}    ${data2}
button clicked
    [Arguments]    ${btn}   
    Wait Until Page Contains Element  ${button}  5
    Click Button  ${button}


#user define method
checking link
    [Arguments]  ${element}    
    Wait Until Page Contains Element  ${element}  10
    Click Link    ${element}
    