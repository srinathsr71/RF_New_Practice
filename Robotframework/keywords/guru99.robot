*** Settings ***
Resource  H:/Robot framework practice/Robotframework/variables/guru99.robot
Library  SeleniumLibrary

# *** Tasks ***
# IF    Page Should Contain    ${text}
#     Log    text is showing
# else
#     Log    text is not showing
# End
*** Keywords ***
checking login functionality
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    10    
    #Run Keyword If    ${text}    Log    text is showing  
Entering name into input field
    Click Element    ${name}  
    Log To Console  element got clicked
    Input Text    ${name}    ${data1}
    Log To Console  username is entered
Entering password into input field
    Click Element  ${password}        
    Log To Console  element got clicked
    Input Password  ${password}    ${data2}
    Log To Console  password is entered
clicking the submit button
    Click Button  ${button}
    Log To Console  button is