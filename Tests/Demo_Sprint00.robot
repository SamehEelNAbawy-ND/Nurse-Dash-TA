*** Settings ***
Documentation    Demo Sprint00
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdArea.robot
Resource    ../Resources/POM/P_AdFacilities.robot
Resource    ../Resources/POM/P_AdShift Units.robot
Resource    ../Resources/POM/P_AdShift Types.robot
Resource    ../Resources/POM/P_AdNurses.robot
Resource    ../Resources/POM/P_AdShifts.robot
Resource    ../Resources/POM/P_AdShift Application.robot
Resource    ../Resources/POM/P_AdArea.robot

*** Variables ***
#Create New Area Variables
${Name_NArea}    Cairo Trial2
${Extali_NArea}    CT 2
${Lat_NArea}    30.054832761952568
${Lng_NArea}    31.455402717024562
${Rad_NArea}    20
${NewCreatedArea}    //td//span[.="Cairo Trial2"]

#Create New Facility Data
${Name_NewFacility}  Sameh Trial2
${ShortName_NewFacility}  ST2
${Image_NewFacility}    ${EXECDIR}/Resources/Test Data/Hospital1.jpg
${Pdf_NewFacility}      ${EXECDIR}/Resources/Test Data/OrintationFacility.pdf
${Email_NewFacility}    Sameh1@Test.com
${Phone_NewFacility}    89756392
${Address_NewFacility}    6 Chicaggo, USA
${LogIn_NewFacility}    Sameh TD1
${Password_NewFacility}    SamehTD1
${Lat_NewFacility}    30.033844615152024
${Lng_NewFacility}    31.212852419413874

#Create New Shift Unit Data
${ShiftNumber}    20
${Name_NewShiftUnit}    Shift Unit Trial 2
${Description_NewShiftUnit}    Shift Unit For Trial2

#Create New Shift Type Data
${Name_NewShiftType}    Shift Type Trial 4
${Description_NewShiftType}     Shift type for Trial 4
${ShiftType_Checeked}       //td//span[.="Shift Type Trial 4"]

#Edit Facility Data
${Facility_Edit}    //a[@href="#/Facility/707"]
${ShiftUnit1_Targeted}    //ul//li[@data-value="28"]
${ShiftType1_Targeted}    //ul//li[@data-value="${Name_NewShiftType}"]

*** Test Cases ***

#First Scenario

Create a new Area
    Log_In_NurseDash
    Click on SideBar Icons    ${Areas}
    Create a New Area    ${Name_NArea}    ${Extali_NArea}    ${Lat_NArea}    ${Lng_NArea}    ${Rad_NArea}

Page should contain the new created Area
    Click on SideBar Icons    ${Areas}
    Verify that Created Area is Exist    ${NewCreatedArea}
    close browser

Create New Facility TC
    Log_In_NurseDash
    Click on SideBar Icons    ${Facilities}
    wait until page contains element    ${Create_Facility}
    Create New Facility    ${Name_NewFacility}    ${ShortName_NewFacility}     ${Image_NewFacility}   ${Pdf_NewFacility}    ${Email_NewFacility}    ${Phone_NewFacility}    ${Address_NewFacility}    ${LogIn_NewFacility}    ${Password_NewFacility}    ${Lat_NewFacility}    ${Lng_NewFacility}
    close browser

Create New Shift Unit TC
    Log_In_NurseDash
    Click on SideBar Icons    ${ShiftUnits}
    Create New Shift Unit    ${Name_NewShiftUnit}   ${Description_NewShiftUnit}

Verify that able to Create New Shift Type
    Click on SideBar Icons    ${ShiftTypes}
    Create New Shift Type   ${Name_NewShiftType}   ${Description_NewShiftType}
    Check that New Shift Type Created       ${ShiftType_Checeked}


Verift ability to Edit in Facility Rate Section
    Log_In_NurseDash
    Edit Rates Of Facility    ${Facility_Edit}    ${ShiftUnit1_Targeted}    ${ShiftType1_Targeted}
    close browser
