*** Settings ***
Library   SeleniumLibrary
Library    Collections
*** Variables ***
${url} =  https://www.flipkart.com/
${browser} =  chrome
${ecategory} =  xpath =  //*[@class='_37M3Pb']/div[2]
${mob} =  xpath =  (//div[@class='_HYyiu']//img)[2]
${sele} =  xpath =  //div[@data-id='MOBGBEU7YYZGFMYB']  
${btn} =  xpath =  //button[text()='Add to cart'] 
#${change} =  xpath =  //a[text()='128 GB']
${acart} =  xpath =  //a[.='Cart']

*** Keywords ***
opening browser
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep  10
Category Electronics Page
    Wait Until Page Contains Element    ${ecategory}    20
    Click Element  ${ecategory}
    Sleep    10
    Click Element  ${mob}
Mobile scrolling select
    Sleep    10s
    Scroll Element Into View    ${sele}
    Click Element    ${sele}
    Sleep    10
add to cart
    Sleep    10
    ${hand} =  Get Window Handles
    Switch Window    ${hand}[1]
    Click Button    ${btn}    
    Sleep    20
    #Scroll Element Into View    ${change}        
clickling cart button
    Click Element    ${acart}
    Sleep    20    
    









    
  
      

*** Test Cases ***
User Logging
    opening browser
    Category Electronics Page
    Mobile scrolling select
    add to cart
    clickling cart button
