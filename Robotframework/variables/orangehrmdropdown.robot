*** Variables ***
${url} =  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser} =  chrome
${username} =  xpath =  //*[@class='oxd-input oxd-input--active']
${password} =  xpath =  //*[@type='password']
${data1} =  Admin
${data2} =  admin123
${login} =  xpath =  //*[@type='submit']
${leave} =  xpath =  //*[@class='oxd-main-menu']/li[3]
${leavelist} =  xpath =  //*[@class='oxd-topbar-body-nav']/ul/li[6]
${userdropdown} =  xpath =  //*[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']
${logout} =  xpath =  //*[@class='oxd-dropdown-menu']/li[4]
${timelink} =  xpath =  //*[@href='/web/index.php/time/viewTimeModule']
${recriutment} =  xpath =  //*[@href='/web/index.php/recruitment/viewRecruitmentModule']
${text} =  xpath =  //div[text()='Network Administrator']
${dropdown} =  xpath =  //*[@class='oxd-select-wrapper'][1]/div/div[2]/i