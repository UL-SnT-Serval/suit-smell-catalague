*** Test Cases ***
Valid Login
    User "demo" logs in with password "mode"

*** Keywords ***

User "${username}" logs in with password "${password}"
    Open Browser    http://localhost/    chrome
    Should Be Equal    ${Delay}    0
    Should Be Equal As Numbers    ${Delay}    0
    Set Selenium Speed    ${DELAY}
    Maximize Browser Window
    Title Should Be    Login Page
    Page Should Not Contain Image    http://localhost/
    Input Text    username_field    ${username}
    Input Text    login_button    ${password}
    Click Button    login_button
    Title Should Be    Login Page