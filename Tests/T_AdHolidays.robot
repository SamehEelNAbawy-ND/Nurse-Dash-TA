*** Settings ***
Resource    ../Resources/POM/Holidays.robot
Resource    ../Resources/POM/Common.robot

*** Test Cases ***
Create New Holiday
    Log_In_NurseDash
    Click on SideBar Icons    ${Holidays}
    Click on SideBar Icons    ${CreateHoliday}
    wait until element is visible    ${HolidayName_Holidays}
    INPUT TEXT    ${HolidayName_Holidays}    Test Holiday

    click element    //div[@class="MuiInputBase-root MuiInput-root MuiInput-underline MuiInputBase-formControl MuiInput-formControl"]
    Click on Button    /html/body/div[3]/div[3]/div/div[1]/div/div[2]/div[1]/div[1]/button[2]
#    Click on Button    //span//p[.="7"]
#    Click on Button    ${Save_Holidays}




