*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Related to Log In to Nurse Dash Website
${Link}    https://admin-staging.nursedash.com
${Browser}    chrome
${UserName}    sameh
${Password}    Sameh12345%

${UserName_LogIn}    //input[@name="username"]
${Password_LogIn}    //input[@id="password"]
${SignInButton_LogIn}    //span[.="Sign in"]

#Upper Bar Icons XPath
${SideBarIcon_Common}    //button[@aria-label="open drawer"]
${RefreshIcon_Common}    //div//button[@aria-label="Refresh"]
${ProfileIcon_Common}    //div//button[@aria-label="Profile"]
${LogOutProfileIcon_Common}    //div//li[@tabindex="0"]
${AddFilterButton_Common}    //div//button[@aria-label="Add filter"]
${ExportButton_Common}    //div//button[@aria-label="Export"]
${NextButton_Common}    //button//span[.="Next"]
${RowPerPage_Common}    //div[@class="MuiSelect-root MuiSelect-select MuiTablePagination-select MuiSelect-selectMenu MuiInputBase-input MuiInputBase-inputSelect"]

#Side Bar Icons XPath
${Calender}    //div//a[@href="#/Calendar"]
${Shifts}    //div//a[@href="#/ViewShift"]
${Payments}    //div//a[@href="#/ViewShiftPayment"]
${ShiftApplications}    //div//a[@href="#/ViewShiftApplication"]
${Facilities}    //div//a[@href="#/Facility"]
${Holidays}    //div//a[@href="#/Holiday"]
${ShiftTypes}    //div//a[@href="#/FacilityType"]
${ShiftUnits}    //div//a[@href="#/ShiftUnit"]
${Areas}    //div//a[@href="#/Area"]
${DocumentTypes}    //div//a[@href="#/QualificationType"]
${Nurses}    //div//a[@href="#/Nurse"]
${Documents}    //div//a[@href="#/ViewDocument"]
${TimeManagment}    //div//a[@href="#/TimeManagement"]
${BroadCast}    //div//a[@href="#/Broadcast"]
${Messages}    //div//a[@href="#/Messages"]
${Users}    //div//a[@href="#/User"]
${Roles}    //div//a[@href="#/Role"]
${SystemLog}    //div//a[@href="#/SystemLog"]
${LogOut}    //div//li[@tabindex="-1"]

*** Keywords ***
## I wanna to add keywords to the most used steps related to this part
# Clicking on side bar [Opened/closed]
# Parts in side bar Opened
#Loged out from profil
#Click on refresh page

Log_In_NurseDash
    open browser    ${Link}    ${Browser}
    maximize browser window
    #wait until element is visible    ${UserName_LogIn}
    sleep    35s
    input text    ${UserName_LogIn}  ${UserName}
    input password    ${Password_LogIn}    ${Password}
    click element    ${SignInButton_LogIn}

Select All Parameters From the table


#Check that number of Selected Parameters Equal to Expected


#Select Specific Row From the Table

#Edit Specific Element

#Delete Specific Element

#Sort Rows depend on Specific Parameter

Click on Specific Button
    [Arguments]    ${AnyButton}
    wait until element is visible    ${AnyButton}
    click button    ${AnyButton}

Click on SideBar Icons
    [Arguments]    ${SideBarIcon}
    wait until element is visible    ${SideBarIcon}
    click link    ${SideBarIcon}

Click Any Element
    [Arguments]    ${AnyElement}
    wait until page contains element    ${AnyELement}
    click element    ${AnyELement}

Click on Check Box ND Tables
    [Arguments]    ${ChkB_Page}
    Click Any Element    ${ChkB_Page}

Log Out NurseDash
    click button    ${LogOut}


