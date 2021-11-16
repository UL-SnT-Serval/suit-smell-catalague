*** Test Cases ***
Valid Login
    Open Browser To Login Page

*** Keywords ***
Open Browser To Login Page
    Open Browser    http://localhost/    chrome
    Set Selenium Speed    ${DELAY}
    Maximize Browser Window
    Title Should Be    ${LOGIN PAGE}

*** Variables ***
${DELAY}      0
${LOGIN PAGE}    ${LOGIN} Page
${LOGIN}    Login