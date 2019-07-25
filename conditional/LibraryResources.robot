*** Settings ***
Library  ../Library/addition.py
Library  ../Library/csvreader.py

*** Keywords ***
Calculate addition
    [Arguments]  ${arg1}  ${args2}
    ${result} =  addition  ${arg1}  ${arg2}
    [Return]  ${result}

Open CSV file
    [Arguments]  ${filename}
    ${fileObj} =  open CSV File from device   ${filename}
    [Return]  ${fileObj}
Read First Line from File
    [Arguments]  ${fileobject}
    ${line} =  read first line from device   ${fileobject}
    [Return]  ${line}

Close CSV File
    [Arguments]  ${fileobject}
    close csv file from device  ${fileobject}
