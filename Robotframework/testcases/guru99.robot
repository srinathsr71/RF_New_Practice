*** Settings ***
Resource    H:/Robot framework practice/Robotframework/keywords/guru99.robot
Library  SeleniumLibrary

*** Test Cases ***
loginpage
    checking login functionality
    Entering name into input field
    Entering password into input field
    clicking the submit button