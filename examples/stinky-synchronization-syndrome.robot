*** Test Cases ***
Valid Login
    Open Browser To Login Page

*** Keywords ***
Open Browser To Login Page
    Open Browser    http://localhost/    chrome
    Set Selenium Speed    ${DELAY}
    Maximize Browser Window
    Sleep    3 seconds
    Title Should Be    Login Page

*** Variables ***
${DELAY}      0