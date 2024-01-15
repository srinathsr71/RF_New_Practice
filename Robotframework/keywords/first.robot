*** Settings ***
Resource    H:/Robot framework practice/Robotframework/variables/demo1.robot
Library  SeleniumLibrary



*** Keywords ***
Browser is open
  Open Browser  ${url}  ${browser}
  Maximize Browser Window
  Click Element  ${search}
  Input Text  ${search}    ${data}    
  Click Button    ${button}
    