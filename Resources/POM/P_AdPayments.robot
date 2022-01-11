*** Settings ***
Library    SeleniumLibrary
Resource
*** Variables ***

# Main Payment Page Locators
${AddUserPaymentButton}    //div//a[@aria-label="Add User Payment"]
${SelectAllCheckBox}    //th//span[@class="MuiButtonBase-root MuiIconButton-root jss843 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]
${Id_Sorting}    //th//span[@data-sort="id"]
${ClinicalName_Sorting}    //span[@data-sort="nurseId"]
${Facility_Sorting}    //span[@data-sort="facilityId"]
${Shift_Sorting}    //span//span[.="Shift"]
${Scheduled_Sorting}    //span//span[.="Scheduled"]
${Duration_Sorting}    //span//span[.="Duration"]
${NetPay_Sorting}    //span//span[.="Net pay"]
${PreAdjustmentPay_Sorting}    //span//span[.="Pre-Adjustment Pay"]
${Adjustments_Sorting}    //span//span[.="Adjustments"]
${PaymentMethod_Sorting}    //span//span[.="Payment Method"]
${HasTCR_Sorting}    //span//span[.="Has TCR"]
${PaymentType_Sorting}    //span//span[.="Payment Type"]
${SchedulType_Sorting}    //span//span[.="Schedule Type"]
${PayStatus_Sorting}    //span//span[.="Pay Status"]
${PayDate_Sorting}    //span//span[.="Pay Date"]
${Shift_Sorting}    //span//span[.="Shift"]

# After Clicking on AddFilter
${PaymentId_AddFilter}    //ul//li[@data-key="id"]
${Facility_AddFilter}    //ul//li[@data-key="facilityId"]
${HasTCR_AddFilter}    //ul//li[@data-key="hasTCR"]
${Nurse_AddFilter}    //ul//li[@data-key="nurseId"]
${PayStatus_AddFilter}    //ul//li[@data-key="status__in"]
${PaymentType_AddFilter}    //ul//li[@data-key="type__in"]
${SchedulType_AddFilter}    //ul//li[@data-key="scheduleType"]
${PaymentMethod_AddFilter}    //ul//li[@data-key="paymentMethod__in"]
${PayDate_AddFilter}    //ul//li[@data-key="date"]
${PatDateRange_AddFilter}    //ul//li[@data-key="dateRange"]
${ShiftId_AddFilter}    //ul//li[@data-key="shiftId"]
${ShiftStartDate_AddFilter}    //ul//li[@data-key="shiftStartDate"]
${ShiftStartDateRange_AddFilter}    //ul//li[@data-key="shiftStartDateRange"]
${ShiftEndDate_AddFilter}    //ul//li[@data-key="shiftEndDate"]
${ShiftEndDateRange_AddFilter}    //ul//li[@data-key="shiftEndDateRange"]

#After Click on "Add User Payment"
${Nurse_AddUserPayment}    //div//input[@id="beneficiaryId"]
${Shift_AddUserPayment}    //div//input[@id="shiftId"]
${PaymentSchedule_AddUserPayment}    //div//div[@id="scheduleType"]
${Standard_PaymentSchedule}    //ul//li[@data-value="standard"]
${DashPay_PaymentSchedule}    //ul//li[@data-value="dash_pay"]
${None_PaymentSchedule}    //ul//li[@data-value="none"]
${PayStatus_AddUserPayment}    //div//div[@id="status"]
${Scheduled_PayStatus}    //ul//li[@data-value="scheduled"]
${Pending_PayStatus}    data-value="pending"
${Paid_PayStatus}    //ul//li[@data-value="paid"]
${NoPay_PayStatus}    //ul//li[@data-value="no_pay"]
${Proccessing_PayStatus}    //ul//li[@data-value="processing"]
${PayDate_AddUserPayment}    //div//input[@class="MuiInputBase-input MuiInput-input"]
${PaymentAmount_AddUserPayment}    //div//input[@id="netPay"]
${Reason_AddUserPayment}    //div//div[@id="reason"]
${PayComment_AddUserPayment}    //div//div[@class="MuiInputBase-root MuiFilledInput-root MuiFilledInput-underline MuiInputBase-fullWidth MuiInputBase-formControl MuiInputBase-multiline MuiFilledInput-multiline MuiInputBase-marginDense MuiFilledInput-marginDense"]
${Save_AddUserPayment}    //div//button[@aria-label="Save"]

### After Clicking on Edit for a specific payment
## Just for not after clicking on edit it takes me
## to payment related to its shift so it is the same XPaths no need to get them again

#Payment Section in Shift
${PaymentSchedul_Payment}    //div//div[@id="payment.scheduleType"]
${PaymentType_Payment}    //div//div[@id="payment.type"]
${PayStatus_Payment}    //div//div[@id="payment.status"]
${PayDate_Payment}    //input[@class="MuiInputBase-input MuiInput-input"]
${RefreshPayDate_Payment}  //button[@class="MuiButtonBase-root MuiIconButton-root"]
${PayComment_Payment}    //textarea[@id="payment.comment"]
${ADD_Payment}    //button[@class="MuiButtonBase-root MuiButton-root MuiButton-text button-add button-add-paymentAdjustments MuiButton-textSizeSmall MuiButton-sizeSmall"]

*** Keywords ***

#Edit Specific Payment


#Filter Payments depend on a specific Parameter

#Add a Payment for a User

#Export Report for payments




