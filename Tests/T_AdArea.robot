*** Settings ***
Resource    Resources/POM/P_AdArea.robot

*** Variables ***

${Name_NArea}    Cairo Test2
${Extali_NArea}    CT1
${Lat_NArea}    30.054832761952568
${Lng_NArea}    31.455402717024562
${Rad_NArea}    20

${NewCreatedArea}    //td//span[.="Cairo Test2"]

*** Test Cases ***

Create a new Area
    Log_In_NurseDash
    Click on SideBar Icons    ${Areas}
    Create a New Area    ${Name_NArea}    ${Extali_NArea}    ${Lat_NArea}    ${Lng_NArea}    ${Rad_NArea}
    close browser

Page should contain the new created Area
    Log_In_NurseDash
    Click on SideBar Icons    ${Areas}
    Verify that Created Area is Exist    ${NewCreatedArea}
    close browser