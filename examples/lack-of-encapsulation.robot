*** Test Cases ***
Valid Login
    Input username    user
    Input password    password
    Click Button    dfp-tlb

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}