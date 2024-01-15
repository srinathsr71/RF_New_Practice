*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser} =  googlechrome
${url} =  https://demo.guru99.com/test/newtours/index.php
${text} =  Login
${name} =  xpath =  //*[@name='userName'] 
${data1} =  admin
${password} =  xpath =  //*[@name='password']
${data2} =  admin
${button} =  xpath =  //*[@name='submit']