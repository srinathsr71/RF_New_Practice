*** Settings ***
Library   SeleniumLibrary
Library    Collections
*** Variables ***
${url} =  https://dineshvelhal.github.io/testautomation-playground/login.html
${browser} =  chrome
${username} =  xpath =  //*[@id='user']
${password} =  xpath =  //*[@id='password']
${Login} =  xpath =  //*[@id='login']
${userdata} =  admin
${passwordata} =  admin
${palyground} =  xpath =  //*[@href='index.html']
${viewpage} =  xpath =  //*[@href='forms.html']
${exper} =  xpath =  //*[@id='exp']
${experdata} =  5
${langu} =  xpath =  //*[@id='check_javascript']
${ide} =  xpath =  //*[@id='rad_selenium']
${skill} =  xpath =  //*[@id='select_tool']
${lanug1} =  xpath =  //*[@id='select_lang']
${note} =  xpath =  //*[@id='notes']
${notedata} =  iam interested
${german} =  xpath =  //*[@class='custom-control-label']
${fluncy} =  xpath =  //*[@class='custom-range']
${city} =  xpath =  //*[@id='validationCustom03']
${citydata} =  Bangalore
${state} =  xpath =  //*[@id='validationCustom04']
${statedata} =  Karnataka
${pincode} =  xpath =  //*[@id='validationCustom05']
${pindata} =  560037
${agree} =  xpath =  //*[@id='invalidCheck']
${submit} =  xpath =  //*[@type='submit']

*** Keywords ***
opening browser
  Open Browser  ${url}  ${browser}
  Maximize Browser Window
  Sleep  10
Login Page
  Wait Until Page Contains Element    ${username}  10
  Click Element  ${username}
  Input Text  ${username}  ${userdata}
  Click Element  ${password}
  Input Password  ${password}  ${passwordata}
  Wait Until Page Contains Element  ${Login}  10
  Click Button  ${Login}
  Log To Console  User Logged in the page
Click on playground
  Wait Until Page Contains Element    ${palyground}  10
  Click Link  ${palyground}
Select Forms
  Wait Until Page Contains Element    ${viewpage}  30
  Scroll Element Into View  ${viewpage}
  Click Link  ${viewpage}
Form Filling
  Sleep  10
  Wait Until Page Contains Element   ${exper}  10
  Click Element  ${exper}
  Input Text  ${exper}  ${experdata}
  Click Button  ${langu}
  Click Button   ${ide}
  Click Element  ${skill}
  Select From List By Index  ${skill}  0
  Click Element  ${lanug1}
  Select From List By Index  ${lanug1}  2
  Click Element  ${note}
  Input Text  ${note}  ${notedata}
  Sleep  10

  
      
  #Click Button  ${german}
  #Execute Javascript    ${fluncy}    scrollby(3,0)
  Sleep  30
*** Test Cases ***
User Logging
  opening browser
  Login Page
Selecting Forms
  Click on playground
  Select Forms
User able to Form
  Form Filling