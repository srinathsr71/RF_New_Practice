*** Settings ***
Library    AppiumLibrary
#Library    Zoomba.GUILibrary
Library    SeleniumLibrary
*** Variables ***
#${platformname} =  Android
${sear} =  xapth =  //*[@class='']
${tes} =  Flipkart
${mobile} =  xpath =  //*[@class='css-1dbjc4n r-13awgt0']
${text} =  xpath =  //*[@class='css-1dbjc4n r-13awgt0']
${titl} =  hello world

#${url} =  https://www.flipkart.com
#${searbtn} =  xpath =  //*[@class='Tg7LZd search_button_suggest']
*** Test Cases ***
open application
    # ${options}=    Create Dictionary    
    # ${caps}=    Create Dictionary    chromeOptions=${options}
    #Create Webdriver    Remote    command_executor=http://localhost:9515    desired_capabilities=${caps}
    Open Application    http://localhost:4723/wd/hub   
    ...    platformName=Android    deviceName=emulator-5554    
    ...    appPackage=com.android.chrome    appActivity=org.chromium.chrome.browser.ChromeTabbedActivity 
    ...    automationName=Uiautomator2    
    Log To Console    ${titl}
    Sleep    10s
    Go To    https://www.flipkart.com
    ${title} =  Get Window Title
    Log To Console    ${title}
    
    
    # Wait Until Element Is Visible    ${mobile}    20s
    # Click Element    ${mobile}
    # Wait Until Element Is Visible    ${text}    20s
    # Click Element    ${text}
    # Sleep    2m
    # # Input Text     ${search}    ${text}
    # #Click Element    ${searbtn}    
    # Sleep    10
    