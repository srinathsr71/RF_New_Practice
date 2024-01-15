*** Settings ***
Library    AppiumLibrary
Library    Zoomba.GUILibrary
#Library    SeleniumLibrary

*** Variables ***
${browser} =  chrome  
${ANDROID_PLATFORM_NAME} =  Android
${Android_Automation_Name} =  UIAutomator2
${devicename} =  emulator-5554               
${app_package} =  com.android.chrome  
#${app_activity} =  org.chromium.chrome.browser.LauncherShortcutActivity 
${chrome_executable} =  C:/Users/S R SRINATH/AppData/Local/Programs/Python/Python311/Scripts/chromedriver.exe


*** Keywords ***
open chrome application
    Open Application     http://localhost:4723/wd/hub    chr=${browser}    excutable_path=${chrome_executable}    platformName=${ANDROID_PLATFORM_NAME}    devicename=${devicename}               
     ...    automationname=${Android_Automation_Name}    apppackage=${app_package}           
    
*** Test Cases ***
opening browser
    open chrome application   

