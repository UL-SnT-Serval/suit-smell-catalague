#
# SMELL NAME: Conditional Assertion
#
# The execution of the Assertion "Should be empty" is dependent on the value of "${Condition}" at line 13
#

*** Test Cases ***
Some very interesting test
    Make some clever assertion

*** Keywords ***
Make some clever assertion
    Run Keyword If  ${Condition}  Should be empty  ${Container}