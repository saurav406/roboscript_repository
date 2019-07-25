*** Settings ***
Resource  ../Resources/LibraryResources.robot

*** Variables ***
${CSV_FILENAME} =   Reaources/demoCSVFile.csv

*** Test Cases ***
Validated Successful addition of numbers
    [Documentation]  Test case to validate user defined library import
    [Tags]  lastRun
    ${param1} =   set variable  2
    ${param2} =   set variable  3

    ${value1} =  convert to number  ${param1}
    ${value2} =  convert to number  ${param2}

    ${result} =   Calculate addition  ${value1}  ${value2}
    should be equal as numbers   5  ${result}


Read from CSV File
    [Documentation]  This is test to read from csv file
    [Tags]  currentRun
    ${fileobj} =   Open CSV File   ${CSV_FILENAME}
    should not be equal  ${None}   ${fileobj}

    ${line} =  Read First Line from  ${fileObj}
    should not be empty  ${line}
    Close CSV File  ${fileObj}
