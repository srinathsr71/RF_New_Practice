*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url} =  https://www.google.com 
${browser} =  chrome 

*** Keywords ***
opening the application
        Open Browser    ${url}    ${browser}

*** Test Cases ***
Launch application
    opening the application