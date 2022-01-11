*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SelectAll_DocumentType}    //span[@class="MuiButtonBase-root MuiIconButton-root jss632 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]

# Sorting Table Elemnts
${Id_Sorting}    //span[@data-sort="id"]
${Name_Sorting}    //span[@data-sort="name"]
${Description_Sorting}    //span[@data-sort="description"]
${Avilable_Sorting}    //span[@data-sort="isAvailable"]
${DocumentExpire_Sorting}    //span[@data-sort="expires"]
${Category_Sorting}    //span[@data-sort="category"]
${ShiftCount_Sorting}    //span[@data-sort="shiftCount"]
${CreatedAt_Sorting}    //span[@data-sort="createdAt"]

# After Click on Create
${Name_DocumentType}    //input[@id="name"]
${Description_DocumentType}    //div//textarea[@id="description"]
${Category_DocumentType}    //div//div[@id="category"]
# After Click on category
${Vaccination_Category}    //ul//li[@data-value="vaccination"]
${TestResult_Category}    //ul//li[@data-value="test"]
${Certification_Category}    //ul//li[@data-value="certification"]
${Other_Category}    //ul//li[@data-value="other"]

${DocumentIsAvailable_DocumentType}    //input[@name="isAvailable"]
${DocumentCanExpire_DocumentType}    //input[@name="expires"]

*** Keywords ***

