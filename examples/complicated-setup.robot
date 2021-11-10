*** Test Cases ***
Valid Login
    User \"demo\" logs in with password \"mode\"

*** Keywords ***
User \"${username}\" logs in with password \"${password}\"
    Input Text    username_field    ${username}
    Input Text    login_button    ${password}
    Click Button    login_button

User \"${username}\" logs in with password \"${password}\"
    Input Text    username_field    ${username}
    Input Text    login_button    ${password}
    Click Button    login_button