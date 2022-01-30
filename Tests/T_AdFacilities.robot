*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdFacilities.robot

*** Variables ***
${Name_NewFacility}  Sameh SUTVOnly1
${ShortName_NewFacility}  ST5
${Image_NewFacility}    ${EXECDIR}/Resources/Test Data/Hospital1.jpg
${Pdf_NewFacility}      ${EXECDIR}/Resources/Test Data/OrintationFacility.pdf
${Email_NewFacility}    Sameh1@Test.com
${Phone_NewFacility}    89756392
${Address_NewFacility}    6 Chicaggo, USA
${LogIn_NewFacility}    Sameh T1
${Password_NewFacility}    SamehT1
${Lat_NewFacility}    30.033844615152024
${Lng_NewFacility}    31.212852419413874

*** Test Cases ***
Create New Facility TC
    Log_In_NurseDash
    Click on SideBar Icons    ${Facilities}
    wait until page contains element    ${Create_Facility}
    Create New Facility    ${Name_NewFacility}    ${ShortName_NewFacility}     ${Image_NewFacility}   ${Pdf_NewFacility}    ${Email_NewFacility}    ${Phone_NewFacility}    ${Address_NewFacility}    ${LogIn_NewFacility}    ${Password_NewFacility}    ${Lat_NewFacility}    ${Lng_NewFacility}
    close browser


Edit Rates Of Facility    ${Facility_Edit}    ${ShiftUnit1_Targeted}    ${ShiftType1_Targeted}


