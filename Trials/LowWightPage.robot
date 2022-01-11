*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdArea.robot

*** Variables ***
${Name_NArea}    Cairo Test
${Extali_NArea}    CT1
${Lat_NArea}    30.054832761952568
${Lng_NArea}    31.455402717024562
${Rad_NArea}    20

*** Test Cases ***
Test Case One
    Log_In_NurseDash
    Click on SideBar Icons    ${Areas}
    sleep    10s
    Create a New Area

*** Keywords ***

Create a New Area
    [Arguments]    ${Name_NArea}    ${Extali_NArea}    ${Lat_NArea}    ${Lng_NArea}    ${Rad_NArea}
    Click Any Element  ${CreatedAt_Area}
    wait until element is visible    ${Name_Area}
    input text    ${Name_Area}    ${Name_NArea}
    input text    ${ExternalAllina_CreateArea}    ${Extali_NArea}
    input text    ${Lat_CreateArea}    ${Lat_NArea}
    input text    ${Lng_CreateArea}    ${Lng_NArea}
    input text    ${Radius_CreateArea}    ${Rad_NArea}