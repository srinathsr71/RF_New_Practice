*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser} =  googlechrome
${url} =  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${name} =  xpath =  //*[@name='username']
${title} =  xpath =  //*[@class='oxd-text oxd-text--h5 orangehrm-login-title']
${text} =  Login
${data1} =  Admin
${password} =  xpath =  //*[@name='password']
${data2} =  admin123
${button} =  xpath =  //*[@type="submit"]
${link} =  xpath =  //*[@href='/web/index.php/performance/viewPerformanceModule']
