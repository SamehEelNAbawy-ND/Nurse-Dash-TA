*** Settings ***
Library    SelenumLibrary

*** Variables ***
# Table Sorting
${Id_Sorting}    //span//span[.="Id"]
${Name_Sorting}    //span//span[.="Name"]
${Address_Sorting}    //span//span[.="Address"]
${Location_Sorting}    //span//span[.="Location"]
${CreatedAt_Sorting}    //span//span[.="Created at"]

# After Clicking on "Edit" Button
${Main_Facility}    //div//a[@href="#/Facility/746"]
${Rates_Facility}    //div//a[@href="#/Facility/746/1"]
${Activity_Facility}    //div//a[@href="#/Facility/746/2"]
${TimeVerifies_Facility}    //div//a[@href="#/Facility/746/3"]
${Settings_Facility}    //div//a[@href="#/Facility/746/4"]
${Save_Facility}    //div//button[@aria-label="Save"]
${Delete_Facility}

# After Clicking on "Edit" and be in "Main" Section
${Name_Main_Facility}    //div//input[@id="name"]
${ShortName_Main_Facility}    //div//input[@id="short_name"]
${DropYourImage_Main_Facility}    //div[@class="jss1049 jss1046"]
${DropYouPDFFile_Main_Facility}    //div//div[@class="jss1049"]
${EmailField_Main_Facility}    //input[@name="emailList[0].email"]

${ShowForAllNurses_Main_Facility}    //span//input[@id="isOrientationMaterialsShowForAll"]


${AllowedQualifications_Main_Facility}    //div[@id="mui-component-select-allowedQualifications"]
${CFA_AllowedQual_Main_Facility}    //ul//li[@data-value="CFA"]
${COVIDSingle_AllowedQual_Main_Facility}    //ul//li[@data-value="COVID Single-Dose Vaccine"]
${CPR_AllowedQual_Main_Facility}    //ul//li[@data-value="COVID Single-Dose Vaccine"]
${COVIDVaccine_AllowedQual_Main_Facility}    //ul//li[@data-value="COVID Vaccine"]
${COVIDNegative_AllowedQual_Main_Facility}    //ul//li[@data-value="COVID Negative"]
${Oakbend_AllowedQual_Main_Facility}    //ul//li[@data-value="Oakbend"]
${MTF_AllowedQual_Main_Facility}    //ul//li[@data-value="MTF"]
${LVN_AllowedQual_Main_Facility}    //ul//li[@data-value="LVN"]
${TNCC_AllowedQual_Main_Facility}    //ul//li[@data-value="TNCC"]
${PALS_AllowedQual_Main_Facility}    //ul//li[@data-value="PALS"]
${BLS_AllowedQual_Main_Facility}    //ul//li[@data-value="BLS"]
${ACLS_AllowedQual_Main_Facility}    //ul//li[@data-value="ACLS"]

${Address_Main_Facility}    //input[@id="address"]
${TimeZone_Main_Facility}    //input[@id="timezone"]
${LogIn_Main_Facility}    //input[@id="login"]
${Password_Main_Facility}    //input[@id="password"]
${Lat_Main_Facility}    //input[@id="lat"]
${Lng_Main_Facility}    //input[@id="lng"]

${SelectArea_Main_Facility}    //div[@id="selectArea"]
${Cairo_SelectArea_Main_Facility}    //li[.="Cairo"]
${Lagos_SelectArea_Main_Facility}    //li[.="Lagos"]
${Columbus_SelectArea_Main_Facility}    //li[.="Columbus"]
${SanAntonio_SelectArea_Main_Facility}    //li[.="San Antonio"]
${Austin_SelectArea_Main_Facility}    //li[.="Austin"]
${DFW_SelectArea_Main_Facility}    //li[.="DFW"]
${NortheastOhio_SelectArea_Main_Facility}    //li[.="Northeast Ohio"]
${Houston_SelectArea_Main_Facility}    //li[.="Houston"]

${SelectSegment_Main_Facility}    //div[@id="segmentId"]
${HealthCare_SelectSeg_MAin_Facility}    //li[.="Healthcare"]
${SeniorLiving_SelectSeg_MAin_Facility}    //li[.="Senior Living"]
${Internal_SelectSeg_MAin_Facility}    //li[.="Internal"]

${Free_CovidStatus_Main_Facility}    //li[@data-value="free"]
${Unkown_CovidStatus_Main_Facility}    //li[@data-value="unknown"]
${OnSite_CovidStatus_Main_Facility}    //li[@data-value="on_site"]

${COVIDVaccRequired_Main_Facility}    //input[@id="covidVaccineRequired"]
${AllowSingleDose_Main_Facility}    //input[@id="allowSingleDoseVaccine"]
${AllowMedicalExemption_Main_Facility}    //input[@id="covidMedicalExemption"]
${AllowReligiousExemption_Main_Facility}    //input[@id="covidReligiousExemption"]

# After Clicking on "Edit" and be in "Rates" Section

${Add_Rates_Facility}    //button[@class="MuiButtonBase-root MuiButton-root MuiButton-text button-add button-add-rates MuiButton-textSizeSmall MuiButton-sizeSmall"]

# After Clicking on "Edit" and be in "Activity" Section

${IdSort_Activity_Facility}    //th//span[@data-sort="id"]
${EventDate_Activity_Facility}    //th//span[@data-sort="createdAt"]

# After Clicking on "Edit" and be in "Time Verifies" Section
${AddTimeVerifies_TimeVerifies_Facility}    //div//a[@aria-label="Add Time Verifiers"]
${PageTitle_TimeVerifies_Facility}    //span[.="Create Facilitysupervisor"]
${Name_TimeVerifies_Facility}    //div//input[@id="fullName"]
${Email_TimeVerifies_Facility}    //div//input[@id="email"]
${Phone_TimeVerifies_Facility}    //div//input[@id="phone"]

# After Clicking on "Edit" and be in "Settings" Section

${SuperFacMood_Settings_Facility}    //span//input[@id="isSuper"]
${LimitVisibility_Settings_Facility}    //span//input[@id="checkReliability"]
${EnforceGeoFence_Settings_Facility}    //span//input[@id="geofenceRadius"]
${SupervisionSigniture_Settings_Facility}    //span//input[@id="isSignatureRequired"]
${SupervisionEmail_Settings_Facility}    //span//input[@id="isSupervisorEmailRequired"]
${SupervisionPhone_Settings_Facility}    //span//input[@id="isSupervisorPhoneRequired"]
${DefultSelection_Settings_Facility}    //div//div[@id="selectionType"]
${FacilitySelect_Settings_Facility}    //ul//li[@data-value="facility"]
${NDSelect_Settings_Facility}    //ul//li[@data-value="nursedash"]
${AutoSelect_Settings_Facility}    //div//div[@id="autoSelectType"]
${Standard_AutoSelect_Settings_Facility}    //ul//li[@data-value="standard"]
${BestAvailable_AutoSelect_Settings_Facility}    //ul//li[@data-value="best_available"]
${TopTier_AutoSelect_Settings_Facility}    //ul//li[@data-value="top_tier"]
${AddUnitClassification_Settings_Facility}    //span//button[@class="MuiButtonBase-root MuiButton-root MuiButton-text button-add button-add-unitDescriptions MuiButton-textSizeSmall MuiButton-sizeSmall"]
${COVIDStatus_Settings_Facility}    //div//div[@id="covidStatus"]
${UnknownStatus_Settings_Facility}  //ul//li[@data-value="unknown"]
${COVIDFreeStatus_Settings_Facility}    //ul//li[@data-value="free"]
${COVIDOnSiteStatus_Settings_Facility}    //ul//li[@data-value="on_site"]

${COVIDVaccRequired_Main_Facility}    //input[@id="covidVaccineRequired"]
${AllowSingleDose_Main_Facility}    //input[@id="allowSingleDoseVaccine"]
${AllowMedicalExemption_Main_Facility}    //input[@id="covidMedicalExemption"]
${AllowReligiousExemption_Main_Facility}    //input[@id="covidReligiousExemption"]


# AFter Click on "Create" Button

${Main_Facility}    //div//a[@href="#/Facility/create"]

${Name_Main_Facility}    //div//input[@id="name"]
${ShortName_Main_Facility}    //div//input[@id="short_name"]

${DropImage_Main_Facility}    # Need Following sibling tech in writing xpath
${DropPDF_Main_Facility}    # Need Following sibling tech in writing xpath

${AddEmail_Main_Facility}    //button[@class="MuiButtonBase-root MuiButton-root MuiButton-text button-add button-add-emailList MuiButton-textSizeSmall MuiButton-sizeSmall"]
${AddPhone_Main_Facility}    //button[@class="MuiButtonBase-root MuiButton-root MuiButton-text button-add button-add-phones MuiButton-textSizeSmall MuiButton-sizeSmall"]

${ShowForAllNurses_Main_Facility}    //span//input[@id="isOrientationMaterialsShowForAll"]


${AllowedQualifications_Main_Facility}    //div[@id="mui-component-select-allowedQualifications"]
${CFA_AllowedQual_Main_Facility}    //ul//li[@data-value="CFA"]
${COVIDSingle_AllowedQual_Main_Facility}    //ul//li[@data-value="COVID Single-Dose Vaccine"]
${CPR_AllowedQual_Main_Facility}    //ul//li[@data-value="COVID Single-Dose Vaccine"]
${COVIDVaccine_AllowedQual_Main_Facility}    //ul//li[@data-value="COVID Vaccine"]
${COVIDNegative_AllowedQual_Main_Facility}    //ul//li[@data-value="COVID Negative"]
${Oakbend_AllowedQual_Main_Facility}    //ul//li[@data-value="Oakbend"]
${MTF_AllowedQual_Main_Facility}    //ul//li[@data-value="MTF"]
${LVN_AllowedQual_Main_Facility}    //ul//li[@data-value="LVN"]
${TNCC_AllowedQual_Main_Facility}    //ul//li[@data-value="TNCC"]
${PALS_AllowedQual_Main_Facility}    //ul//li[@data-value="PALS"]
${BLS_AllowedQual_Main_Facility}    //ul//li[@data-value="BLS"]
${ACLS_AllowedQual_Main_Facility}    //ul//li[@data-value="ACLS"]

${Address_Main_Facility}    //input[@id="address"]
${TimeZone_Main_Facility}    //input[@id="timezone"]
${LogIn_Main_Facility}    //input[@id="login"]
${Password_Main_Facility}    //input[@id="password"]
${Lat_Main_Facility}    //input[@id="lat"]
${Lng_Main_Facility}    //input[@id="lng"]

${SelectArea_Main_Facility}    //div[@id="selectArea"]
${Cairo_SelectArea_Main_Facility}    //li[.="Cairo"]
${Lagos_SelectArea_Main_Facility}    //li[.="Lagos"]
${Columbus_SelectArea_Main_Facility}    //li[.="Columbus"]
${SanAntonio_SelectArea_Main_Facility}    //li[.="San Antonio"]
${Austin_SelectArea_Main_Facility}    //li[.="Austin"]
${DFW_SelectArea_Main_Facility}    //li[.="DFW"]
${NortheastOhio_SelectArea_Main_Facility}    //li[.="Northeast Ohio"]
${Houston_SelectArea_Main_Facility}    //li[.="Houston"]

${SelectSegment_Main_Facility}    //div[@id="segmentId"]
${HealthCare_SelectSeg_MAin_Facility}    //li[.="Healthcare"]
${SeniorLiving_SelectSeg_MAin_Facility}    //li[.="Senior Living"]
${Internal_SelectSeg_MAin_Facility}    //li[.="Internal"]

${Free_CovidStatus_Main_Facility}    //li[@data-value="free"]
${Unkown_CovidStatus_Main_Facility}    //li[@data-value="unknown"]
${OnSite_CovidStatus_Main_Facility}    //li[@data-value="on_site"]

${COVIDVaccRequired_Main_Facility}    //input[@id="covidVaccineRequired"]
${AllowSingleDose_Main_Facility}    //input[@id="allowSingleDoseVaccine"]
${AllowMedicalExemption_Main_Facility}    //input[@id="covidMedicalExemption"]
${AllowReligiousExemption_Main_Facility}    //input[@id="covidReligiousExemption"]

${Save_Main_Facility}    //button[.="Save"]


