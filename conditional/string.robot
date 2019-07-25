*** Variables ***
${MAY_VALUE} =  "babbbcccc"

*** Test Cases ***
Test Regular Expression
    Validate Input String  ${MAY_VALUE}


*** Keywords ***
Validate Input String
    [Arguments]  ${input}
    should match regexp  ${input}  "(a|c)*b((b(a|c)*b)*(a|c)*)*"