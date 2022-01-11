*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# Shifts Exist in Shift Types Table
${CFA_ShType}    //td//span[.="CFA "]
${CMA/Med-Tech_ShType}    //td//span[.="CMA/Med-Tech"]
${CNA_ShType}    //td//span[.="CNA"]
${LPN_ShType}    //td//span[.="LPN"]
${LVN_ShType}    //td//span[.="LVN"]
${RN_ShType}    //td//span[.="RN"]
${STNA_ShType}    //td//span[.="STNA"]
${Tech_ShType}    //td//span[.="Tech"]




${Name_ShiftTypes}    //span[@data-sort="name"]
${Description_ShiftTypes}    //span[@data-sort="description"]
${ShiftCount_ShiftTypes}    //span[@data-sort="shiftCount"]
${CreatedAt_ShiftTypes}    //span[@data-sort="createdAt"]
${Edit_ShiftTypes}
${Delete_ShiftTypes}

# After Clicking on "Edit" Button for a specific shift type
${Name_ShiftType}    //div//input[@id="name"]
${Description_ShiftType}    //div//textarea[@id="description"]
${Save_ShiftType}    //div//button[@aria-label="Save"]
${Delete_ShiftType}    //div//button[@aria-label="Delete"]

