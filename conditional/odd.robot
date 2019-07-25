*** Settings ***
Library  String

*** Test Cases ***
Printing odd numbers from the List
    @{ITEMS} =    Create List  0  5  8  3  4  9  6  7  8  11  10
    :FOR  ${INDEX}  IN  @{ITEMS}
    \  run keyword if  ${INDEX} %2 != 0   print numbers  ${INDEX}


*** Keywords ***

print numbers
    [Arguments]  ${INDEX}
    Log  ${INDEX}