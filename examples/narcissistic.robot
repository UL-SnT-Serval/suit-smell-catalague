*** Test Cases ***

Test case with all personal pronoun
    Given I am on login page
    When I put my username and password
    Then I should be on the welcome page

*** Keywords ***
I am on login page
    Log    I am on login page

I put my username and password
    Log    I put my username and password

I should be on the welcome page
    Log    I should be on the welcome page