*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          ../steps/login_steps.robot
Resource          ../steps/common_steps.robot
Test Teardown     Close Browser
Test Setup        Given browser is opened in my App page
Default Tags      login

*** Variables ***
${VALID USER}     demo
${VALID PASSWORD}    mode

*** Test Cases ***
Valid Login
    [Tags]    hpath
    When user "demo" logs in with password "mode"
    Then welcome page should be open

Invalid Username
    [Tags]    negative
    When user "invalid" logs in with password "${VALID PASSWORD}"
    Then Login Should Have Failed

Invalid Password
    [Tags]    negative
    When user "${VALID USER}" logs in with password "invalid"
    Then Login Should Have Failed

Invalid Username And Password
    [Tags]    negative
    When user "invalid" logs in with password "whatever"
    Then Login Should Have Failed

Empty Username
    [Tags]    negative
    When user "${EMPTY}" logs in with password "whatever"
    Then Login Should Have Failed

Empty Password
    [Tags]    negative
    When user "${VALID USER}" logs in with password "${EMPTY}"
    Then Login Should Have Failed
