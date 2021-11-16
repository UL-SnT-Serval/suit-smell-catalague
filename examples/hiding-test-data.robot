*** Test Cases ***
Valid Login
    [Setup]    Open Browser To Login Page
    User logs in with password

*** Keywords ***
Open Browser To Login Page
    ${jsonfile}    Get File
    ${username}    Get Json Value    ${jsonfile}    /usr1/username
    Set Suite Variable    ${username}
    ${password}    Get Json Value    ${password}    /usr1/username
    Set Suite Variable    ${password}
    Open Browser    http://localhost/    chrome
    Maximize Browser Window

User logs in with password
    Input Text    username_field    ${username}
    Input Text    login_button    ${password}
    Click Button    login_button