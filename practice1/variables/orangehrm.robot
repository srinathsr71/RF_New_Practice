*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url1} =  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser1} =  gc
${name1} =  xpath =  //*[@name='username']
${data1} =  Admin
${pwd} =  xpath =  //*[@name='password']
${data2} =  admin123
${btn} =  xpath =  //*[@type='submit']
${dropdown} =  xpath =  //*[@class='oxd-userdropdown']
${logout} =  xpath =  //*[@class='oxd-dropdown-menu']/li[4]/a