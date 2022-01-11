*** Settings ***
Resource    Resources/POM/P_AdCommon.robot
Resource    Resources/POM/P_AdShifts.robot

*** Variables ***
${SpecificShift_Edit}    //td//a[@href="#/ViewShift/240978"]
# I want to replace it with Xpath of preceding sibling to that shift I target
${SpecificShift_Clone}    //td//a[@href="#/ViewShift/create?source=%7B%22applicants%22:0,%22autoSelectApplicant%22:false,%22autoSelectApplicantSelected%22:false,%22autoSelectType%22:%22standard%22,%22breakTime%22:0,%22createdAt%22:%222021-09-25T08:54:48.367Z%22,%22end_time%22:%222022-05-02T20:54:00.000Z%22,%22facility_id%22:145,%22facilityId%22:145,%22facilityName%22:%22Test%20Facility%22,%22facilityShortName%22:%22GOTF%22,%22facilityTimezone%22:%22America/Chicago%22,%22segmentId%22:3,%22segmentName%22:%22Healthcare%22,%22id%22:229019,%22isMinPaymentEnabled%22:false,%22payment.id%22:129700,%22role%22:%22Assisted%20Living%20/%20CNA%22,%22start_time%22:%222022-05-02T15:54:00.000Z%22,%22status%22:%22opened%22,%22type%22:%22CNA%22,%22unit%22:1,%22updatedAt%22:%222021-12-02T15:56:43.633Z%22%7D"]
${SpecificShift_Select}

*** Test Cases ***

#Ability to create a new shift
#    Log_In_NurseDash
#
#    wait until element is visible    ${Shifts}
#    click element    ${Shifts}
#
#    # Create New Shift
#
#    wait until element is visible    ${CreateButton}
#    click link    ${CreateButton}
#    wait until element is visible    //input[@id="facility_id"]
#    Click element    //input[@id="facility_id"]
#    wait until element is visible    //li[@id="downshift-0-item-1"]
#    click element    //li[@id="downshift-0-item-1"]
#
#    click element    ${Unit_CreateShift}
#    wait until element is visible    //li[.="Hospice"]
#    click element    //li[.="Hospice"]
#    click element    ${Type_CreateShift}
#    wait until element is visible   //li[.="Tech"]
#    click element    //li[.="Tech"]
#    click element    ${UnitClassification_CreateShifts}
#    WAIT UNTIL ELEMENT IS VISIBLE    //li[@data-value="COVID Unit"]
#    click element    //li[@data-value="COVID Unit"]
#
#    click element    ${Qualifications_CreateShift}
#    wait until element is visible    //li[.="COVID Vaccine"]
#    click element    //li[.="COVID Vaccine"]
#
#    # input text    ${Description_CreateShift}    The Description of the shift
#
#    click element    ${STARTTIME_CREATESHIFT}
#    input text    ${STARTTIME_CREATESHIFT}    12292021
#
#    # Check that new shift is exist in shifts table

#Able to Select All Shifts in the page
#    Log_In_NurseDash
#    wait until element is visible    ${Shifts}
#    click element    ${Shifts}
#
#    #Check box of select all
#    #wait until element is visible
#    wait until page contains element  ${Delet_Shifts}
#
#    click element    ${SelectAllCheckBox_Shifts}
#    checkbox should be selected    ${SelectAllCheckBox_Shifts}
#
#    #Check the number in the Top of the page is exist

Verify that able to Edit Specific shift
    Log_In_NurseDash
    Click on SideBar Icons    ${Shifts}
    Edit Specific Shift    ${SpecificShift_Edit}

