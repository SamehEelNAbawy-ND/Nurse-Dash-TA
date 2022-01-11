*** Settings ***
Library    SeleniumLibrary
Resource    P_AdCommon.robot
Library    SeleniumLibrary

*** Variables ***

# Sorting Area's Data in the Table
${SelectAll_Area}    //table//thead//tr//th//span[@class="MuiButtonBase-root MuiIconButton-root jss293 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]
${Id_Area}    //span[@data-sort="id"]
${Name_Area}    //span[@data-sort="name"]
${CreatedAt_Area}    data-sort="createdAt"

${Id_Filter}    //li[@data-key="id"]

# After Clicking on create to create a new Area
${Name_CreateArea}    //input[@id="name"]
${ExternalAllina_CreateArea}    //input[@id="externalAlias"]
${Lat_CreateArea}    //input[@id="lat"]
${Lng_CreateArea}    //input[@id="lng"]
${Radius_CreateArea}    //input[@id="radius"]
${AddSupportedPosition_CreateArea}    //span//span[.="Add"]

# Changable >> The relation between each add new supported position fields must be related to no. 1 or 2 or ....*** Variables ***

${Save_CreateArea}    //button[@aria-label="Save"]

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




