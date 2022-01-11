*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdArea.robot
Resource    Resources/POM/P_AdCommon.robot
Resource    Resources/POM/P_AdArea.robot

*** Variables ***

${Name_NArea}    Cairo Test
${Extali_NArea}    CT1
${Lat_NArea}    30.054832761952568
${Lng_NArea}    31.455402717024562
${Rad_NArea}    20

*** Test Cases ***

Create a new Area
    Log_In_NurseDash
    Click on SideBar Icons    ${Areas}
    Create a New Area    ${Name_NArea}    ${Extali_NArea}    ${Lat_NArea}    ${Lng_NArea}    ${Rad_NArea}
