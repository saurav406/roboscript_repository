*** Settings ***
Test Setup  Keyword 1
Test Teardown   Keyword 2

*** Test Cases ***
Test Case 1
    [Documentation]  test case 1
    Keyword 1

Test Case 2
    [Documentation]  test case 2
    Keyword 2



*** Keywords ***
Keyword 1
    Log  Keyword 1

Keyword 2
    Log  Keyword 2