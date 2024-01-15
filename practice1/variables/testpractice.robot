*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser} =  googlechrome
${url} =  https://testautomationpractice.blogspot.com/
${sel} =  xpath =  //*[@name='files']
${dpvalue} =  xpath =  //*[@value='3']
${data} =  DOC file