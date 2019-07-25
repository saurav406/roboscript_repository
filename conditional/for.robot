*** Settings ***
Library  String


*** Test Cases ***
FOR loop with upper bound range
    [Documentation]  This gives us a 0 based range
    [Tags]   tag1
    :FOR  ${Index}  IN RANGE  5
    \  Do Something  ${Index}
    \  ${RANDOM_STRING} =  Generate Random String  ${Index}
    \  Log  ${RANDOM_STRING}

FOR loop with upper and lower bound range
    [Documentation]  This gives us a 0 based range
    [Tags]   tag2
    :FOR  ${Index}  IN RANGE  1  4
    \  Do Something  ${Index}
    \  ${RANDOM_STRING} =  Generate Random String  ${Index}
    \  Log  ${RANDOM_STRING}

FOR loop with upper and lower bound range and step range
    [Documentation]  This gives us a 2 based range
    [Tags]   tag3
    :FOR  ${Index}  IN RANGE  1  10  2
    \  Do Something  ${Index}
    \  ${RANDOM_STRING} =  Generate Random String  ${Index}
    \  Log  ${RANDOM_STRING}

FOR Loops with List
    @{ITEMS} =  Create List  Item 1   Item 2    Item 3   Item 4
    [Tags]  tag4
    :FOR  ${MY_ITEMS}  IN  @{ITEMS}
    \  Log  ${MY_ITEMS}

Exit a FOR loop
    [Tags]  tag5
    @{ITEMS} =  Create List  Item 1  Item 2  Item 3  Item 4

    :FOR  ${MY_ITEMS}  IN  @{ITEMS}
    \  Log  ${MY_ITEMS}
    \  run keyword if  "${MY_ITEMS}" == "Item 3"  exit for loop
    \  Log  Didn't exit yet

Repeat a keyword many times
    [Tags]  tag6
    repeat keyword  5  a repeatable keyword
    repeat keyword  3 s  a repeatable keyword
    repeat keyword  2 times  a repeatable keyword

*** Keywords ***
Do Something
    [Arguments]  ${Index}
    Log  For Loop ${Index}

a repeatable keyword
    Log  This is repeating
