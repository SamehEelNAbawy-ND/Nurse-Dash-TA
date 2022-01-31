*** Settings ***
Library    SeleniumLibrary
Resource   P_AdCommon.robot

*** Variables ***
${ShiftNumber}    229019
${Specific_Shift}    //td//span[.="${ShiftNumber}"]

# Main Information for facility we will test with
${FacilityName}    Sameh
${Unit}    //li[.="Hospice"]

                #### Main Page of Shift ####
${CreateButton}    //div//a[@aria-label="Create"]
${EditShiftButton}    //td//a[@aria-label="Edit"]
${SelectAllCheckBox_Shifts}    //span[@class="MuiButtonBase-root MuiIconButton-root jss293 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]//span//input[@type="checkbox"]
${DeletAfterClickCheckBox}    //div//button[@aria-label="Delete"]

                #### After Click on Add Filtter####
${Id_Filter}    //ul//li[@data-key="id"]
${Facility_Filter}    //ul//li[@data-key="facility_id"]
${Segment_Filter}    //ul//li[@data-key="segmentId"]
${Location_Filter}    //ul//li[@data-key="areas"]
${ShiftType_Filter}    //ul//li[@data-key="type"]
${ShiftUnit_Filter}    //ul//li[@data-key="unit"]
${Status_Filter}    //ul//li[@data-key="status"]
${UcwRisk_filter}    //ul//li[@data-key="ucwRisk"]
${NurseProximity_Filter}    //ul//li[@data-key="nurseProximity"]
${PreviousStatus_Filter}    //ul//li[@data-key="prevStatus"]
${HasApplicants_Filter}    //ul//li[@data-key="hasApplicants"]
${Nurse_Filter}    //ul//li[@data-key="assigned_nurse_id"]
${Date_Filter}    //ul//li[@data-key="date"]
${DateRange_Filter}    //ul//li[@data-key="dateRange"]
${StartTime_Filter}    //ul//li[@data-key="timeRange"]


            ##### After Clicking on Create Button #####
${Facility_CreateShift}    //input[@id="facility_id"]
${Unit_CreateShift}    //div[@id="unit"]
${Type_CreateShift}    //div[@id="type"]
${UnitClassification_CreateShifts}    //div[@id="unitDescription"]
${Qualifications_CreateShift}    //div[@id="mui-component-select-qualifications"]
${Description_CreateShift}    //div[@class="MuiInputBase-root MuiFilledInput-root MuiFilledInput-underline MuiInputBase-fullWidth MuiInputBase-formControl MuiInputBase-multiline MuiFilledInput-multiline MuiInputBase-marginDense MuiFilledInput-marginDense"]
${StartTime_CreateShift}    //label[contains(text(),"Start time")]//following-sibling::div[@class="MuiInputBase-root MuiFilledInput-root MuiFilledInput-underline MuiInputBase-formControl"]//input[@class="MuiInputBase-input MuiFilledInput-input"]
${EndTime_CreateShift}    //label[contains(text(),"End time")]//following-sibling::div[@class="MuiInputBase-root MuiFilledInput-root MuiFilledInput-underline MuiInputBase-formControl"]//input[@class="MuiInputBase-input MuiFilledInput-input"]
${RateRepHoure_CreateShift}    //div//input[@aria-describedby="rate-helper-text"]
${NetPayPerHoure_CreateShift}    //div//input[@name="net_pay"]
${BreakTime_CreateShift}    //div//input[@name="breakTime"]


            #### After Clicking on Edit Button for a specific shift####
${PaymentSection_Shifts}    //div//a[@href="#/ViewShift/91335/1"]
${Save_Shifts}    //div//button[@aria-label="Save"]
${Delet_Shifts}    //div//button[@aria-label="Delete"]

#Main Section in Editing Shift
${MainSection_Shifts}    //div//a[@href="#/ViewShift/91335"]
${Facility_Main}    //div//input[@id="facility_id"]
${Unit_Main}    //div//div[@aria-labelledby="unit-label unit"]
${Type_Main}    //div//div[@aria-labelledby="type-label type"]
${Qualification_Main}    //div//div[@aria-labelledby=" mui-component-select-qualifications"]
${Description_Main}    //div[@class="MuiInputBase-root MuiOutlinedInput-root MuiInputBase-fullWidth MuiInputBase-formControl MuiInputBase-multiline MuiOutlinedInput-multiline MuiInputBase-marginDense MuiOutlinedInput-marginDense"]
${RatePerHoure_Main}    //div//input[@id="rate"]
${NetPayPerHoure_Main}    //div//input[@id="net_pay"]
${Status_Main}    //div//div[@id="status"]
${StartTime_Main}    //label[text()="Start time"]//following-sibling::div//input
${EndTime_Main}    //label[text()="End time"]//following-sibling::div//input
${AutoSelect_Main}    //span//input[@id="autoSelectApplicant"]
${AutoSelectionType_Main}    //div//div[@id="autoSelectType"]

*** Keywords ***

Filter Shifts upon specific parameter
    [Arguments]    ${Targeted_Filter}
    Click on Specific Button    ${AddFilterButton_Common}
    Click Button Element    ${Targeted_Filter}

Create New Shift
    wait until element is visible    ${CreateButton}
    click link    ${CreateButton}
    #input text    ${Facility_CreateShift}    {Facility_Name}
    wait until element is visible    //input[@id="facility_id"]
    Click element    //input[@id="facility_id"]
    wait until element is visible    //li[@id="downshift-0-item-0"]
    click element    //li[@id="downshift-0-item-0"]


Export Report for shifts
    Click on Specific Button    ${ExportButton_Common}

Edit Specific Shift
    [Arguments]    ${Shift_EditButton}
    wait until page contains element    ${Shift_EditButton}
    Click Button Element    ${Shift_EditButton}


Delete a specific Shift
    [Arguments]    ${Shift_DeleteButton}
    wait until page contains element    ${Shift_DeleteButton}
    Click on Specific Button    ${Shift_DeleteButton}

Clone Shift
    [Arguments]
    wait until page contains element  ${Specific_Shift}


Select All Shifts in the page
    wait until page contains element    ${SelectAllCheckBox_Shifts}
    Click Button Element    ${SelectAllCheckBox_Shifts}






