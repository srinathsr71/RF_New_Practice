*** Settings ***
Resource    H:/Robot framework practice/practice1/variables/orangehrm1.robot
Library    SeleniumLibrary

*** Keywords ***
Checking login feature
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Print  Get Title