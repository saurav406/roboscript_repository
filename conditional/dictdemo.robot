*** Settings ***
Library  Collections

*** Variables ***
&{DICTVAR} =  ITEM1=VAL1  ITEM2=VAL2  ITEM3=VAL3  ITEM4=VAL4

*** Test Cases ***
Check Dictionary Demo
    [Documentation]  This is a demo of dictionary
    Log  ${DICTVAR.ITEM1}
    Log  ${DICTVAR.ITEM2}
    Log  ${DICTVAR.ITEM3}
    Log  ${DICTVAR.ITEM4}
    ${dict_keys} =  get dictionary keys   ${DICTVAR}
    Log  ${dict_keys}
    ${dict_values} =  get dictionary values  ${DICTVAR}
    Log  ${dict_values}