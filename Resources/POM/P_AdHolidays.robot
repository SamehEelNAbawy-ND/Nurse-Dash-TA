*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CreateHoliday}    //a[@href="#/Holiday/create"]

##### Sorting
${Id_Sorting}    //th//span[@data-sort="id"]
${Name_Sorting}    //th//span[@data-sort="name"]
${HolidayDate_Sorting}    //th//span[@data-sort="holidayDate"]

# After Clicking on "Edit" Button
${HolidayName_Holidays}    //input[@id="name"]
${HolidayDate_Holidays}    //div//span[@id="holidayDate"]
${Save_Holidays}    //div//button[@aria-label="Save"]
${Delete_Holidays}    //div//button[@aria-label="Delete"]


