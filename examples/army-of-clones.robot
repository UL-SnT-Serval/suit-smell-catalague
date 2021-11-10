#
# SMELL NAME: Army of Clone
#
# Keyword Open Browser To Login Page from line 12 and Open Again To Login Page from line 17 implement the same code.
#

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Open Again Browser To Login Page

*** Keywords ***
Open Browser To Login Page
    Open Browser    http://localhost/    chrome
    Set Selenium Speed    ${DELAY}
    Maximize Browser Window
    Title Should Be    Login Page
Open Again Browser To Login Page
    Open Browser    http://localhost/    chrome
    Set Selenium Speed    ${DELAY}
    Maximize Browser Window
    Title Should Be    Login Page

*** Variables ***
${DELAY}      0