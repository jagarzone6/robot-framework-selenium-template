*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          ../steps/login_steps.robot
Resource          ../steps/common_steps.robot
Test Teardown     Close Browser
Test Setup        Given browser is opened in my App page
*** Variables ***
${VALID USER}     demo
${VALID PASSWORD}    mode

*** Test Cases ***
Valid Login
    When user "demo" logs in with password "mode"
    Then welcome page should be open

Invalid Username
    Login With Invalid Credentials Should Fail    invalid    ${VALID PASSWORD}

Invalid Password
    Login With Invalid Credentials Should Fail    ${VALID USER}    invalid

Invalid Username And Password
    Login With Invalid Credentials Should Fail    invalid    whatever

Empty Username
    Login With Invalid Credentials Should Fail    ${EMPTY}    whatever

Empty Password
    Login With Invalid Credentials Should Fail    ${VALID USER}    ${EMPTY}
