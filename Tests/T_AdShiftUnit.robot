*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdShift Units.robot

*** Variables ***
${ShiftNumber}    20
${Name_NewShiftUnit}    Shift Unit Test 1
${Description_NewShiftUnit}    Shift Unit For Test


*** Test Cases ***
Create New Shift Unit TC
    Log_In_NurseDash
    Click on SideBar Icons    ${ShiftUnits}
    wait until page contains element    ${Create_ShiftUnit}
    Create New Shift Unit    ${Name_NewShiftUnit}   ${Description_NewShiftUnit}
    close browser

