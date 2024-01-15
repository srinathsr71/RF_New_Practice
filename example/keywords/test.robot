*** Settings ***
Resource    H:/Robot framework practice/example/variables/test.robot
Library    SeleniumLibrary

*** Keywords ***
opening the application
        Open Browser    ${url}    ${browser}