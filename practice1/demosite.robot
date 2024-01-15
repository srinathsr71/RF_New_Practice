*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${url} =  https://dineshvelhal.github.io/testautomation-playground/login.html
${browser} =  chrome
${username} =  xpath =  //*[@placeholder='Username']
${uname} =  admin
${password} =  xpath =  //*[@placeholder='Password']
${pwd} =  admin
${btn} =  xpath =  //*[@id='login']
${psize} =  xpath =  //input[@value='MEDIUM']
${souce} =  xpath =  //input[@value='BARBEQUE']
${select} =  xpath =  //*[@id='select_flavor']
${toppings} =  xpath =  //input[@id='onions']
${quantity} =  xpath =  //*[@id='quantity']
${qua} =  3
${button} =  xpath =  //*[@name='submit_button']
${text} =  Pizza added to the cart!
*** Keywords ***
opening a url
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    ${username}
    Input Text    ${username}    ${uname}
    Click Element    ${password}
    Input Password    ${password}    ${pwd}
    Click Button    ${btn}

Adding details
    Click Element    ${psize}    
    Click Element    ${souce}    
    Select Checkbox    ${toppings}
    Wait Until Page Contains Element    ${select}    5
    Click Element    ${select}
    #Wait Until Page Contains Element    ${value}    5
    Select From List By Index    ${select}    2
    Wait Until Page Contains Element    ${quantity}    5
    Click Element    ${quantity}
    Input Text    ${quantity}    ${qua}
    Wait Until Page Contains Element    ${button}    10
    Click Button    ${button}
    Log To Console    ${text}
    



*** Test Cases ***
Testcase
    opening a url
    Adding details    