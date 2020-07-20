*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Variables         ../../environments.yaml

*** Variables ***
${SERVER}         ${${env}.SERVER}
${BROWSER}        Chrome
${DELAY}          0
${APP URL}        http://${SERVER}/
${WELCOME URL}    http://${SERVER}/welcome.html
${ERROR URL}      http://${SERVER}/error.html

*** Keywords ***

Browser is opened in my App page
    Open Browser    ${APP URL}    ${BROWSER}    None    http://127.0.0.1:4444/wd/hub
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open
