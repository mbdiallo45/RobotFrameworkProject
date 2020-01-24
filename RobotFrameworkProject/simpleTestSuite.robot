*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
MyFirstTest
    Log    Hello World...   
    
FirstSeleniumTest
    # use proxy for Firefox
    ${proxy}    Evaluate    sys.modules['selenium.webdriver'].Proxy() 	sys, selenium.webdriver 	
    ${proxy.http_proxy}= 	Set Variable 	w3p2.atos-infogerance.fr:8080 	
    Create Webdriver 	Firefox 	proxy=${proxy}
    Go To    ${url}
    Select From List By Value    id=pscope    ut3
    Input Text    id=username    ${user}   
    Input Password    id=password   ${pwd} 
    Click Button    name=button    
    Sleep    ${timeToSleep}      
    Close Browser


*** Variables ***
${url}     https://authc.univ-toulouse.fr/login?service=https%3A%2F%2Fscout.univ-toulouse.fr%2Fsw%3Ftype%3DL%26state%3D7%26undefined
${user}    dlm1288a
${pwd}    Halimatou1995@
${timeToSleep}    10