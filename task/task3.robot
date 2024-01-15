*** Settings ***
Library    AppiumLibrary
Library    Zoomba.GUILibrary
#Library    SeleniumLibrary
Library    collections  

*** Variables ***
${li} =  ['plarfomeName:Android','deviceName:emulator-5554','browserName:chrome']  
# ${browser} =  chrome  
# ${ANDROID_PLATFORM_NAME} =  Android
# ${Android_Automation_Name} =  UIAutomator2
# ${devicename} =  emulator-5554               
# ${app_package} =  com.android.chrome  
# *** Keywords ***
# open chrome application
#     Open Application     http://localhost:4723/wd/hub    alias=myapp   chr=${browser}    platformName=${ANDROID_PLATFORM_NAME}    devicename=${devicename}               
#      ...    automationname=${Android_Automation_Name}    apppackage=${app_package}    
*** Test Cases ***
# opening browser
#     open chrome application   
AndroidConnection
    # ${Options}    Create Dictionary    androidPackage    com.android.chrome
    # ${caps}    Create Dictionary    chromeOptions    ${Options}
    # Set To Dictionary    ${caps}    platformName    Android
    # Set To Dictionary    ${caps}    deviceName    emulator-5554
    # Set To Dictionary    ${caps}    browserName    Chrome
    # Create Webdriver    Remote    command_executor=http://localhost:4723/wd/hub    desired_capabilities=${caps}
    # Go To    http://www.google.com
    ${Options}    Create Dictionary    androidPackage    com.android.chrome
    Create Dictionary    chromeOptions    ${Options}
    Create Webdriver    Remote    command_executor=http://localhost:4723/wd/hub    desired_capabilities=${li}
    Go To    http://www.google.com











