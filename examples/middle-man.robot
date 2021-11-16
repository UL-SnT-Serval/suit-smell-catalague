*** Test Cases ***
Valid Login
    User "demo" logs in with password "mode"

*** Keywords ***

User "${username}" logs in with password "${password}"
    Input username    username_field    ${username}

Input Username
    [Arguments]    ${field}    ${username}
    Input Text    ${field}    ${username}