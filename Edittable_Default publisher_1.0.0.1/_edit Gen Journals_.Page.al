page 50060 "edit Gen Journals"
{
    ApplicationArea = All;
    Caption = 'edit Gen Journals';
    PageType = List;
    SourceTable = "Gen. Journal Line";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Account Id"; Rec."Account Id")
                {
                    ToolTip = 'Specifies the value of the Account Id field.';
                }
                field("Account No."; Rec."Account No.")
                {
                    ToolTip = 'Specifies the account number that the entry on the journal line will be posted to.';
                }
                field("Account Type"; Rec."Account Type")
                {
                    ToolTip = 'Specifies the type of account that the entry on the journal line will be posted to.';
                }
                field("Additional-Currency Posting"; Rec."Additional-Currency Posting")
                {
                    ToolTip = 'Specifies the value of the Additional-Currency Posting field.';
                }
                field("Allocated Amt. (LCY)"; Rec."Allocated Amt. (LCY)")
                {
                    ToolTip = 'Specifies the amount that has been allocated when you have used the Allocations function in the Gen. Jnl. Allocation table.';
                }
                field("Allow Application"; Rec."Allow Application")
                {
                    ToolTip = 'Specifies the value of the Allow Application field.';
                }
                field("Allow Zero-Amount Posting"; Rec."Allow Zero-Amount Posting")
                {
                    ToolTip = 'Specifies the value of the Allow Zero-Amount Posting field.';
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the total amount (including VAT) that the journal line consists of.';
                }
                field("Amount (LCY)"; Rec."Amount (LCY)")
                {
                    ToolTip = 'Specifies the total amount in local currency (including VAT) that the journal line consists of.';
                }
                field("Applied Automatically"; Rec."Applied Automatically")
                {
                    ToolTip = 'Specifies that the general journal line has been automatically applied with a matching payment using the Apply Automatically function.';
                }
                field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
                {
                    ToolTip = 'Specifies the number of the posted document that this document or journal line will be applied to when you post, for example to register payment.';
                }
                field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
                {
                    ToolTip = 'Specifies the type of the posted document that this document or journal line will be applied to when you post, for example to register payment.';
                }
                field("Applies-to Ext. Doc. No."; Rec."Applies-to Ext. Doc. No.")
                {
                    ToolTip = 'Specifies the external document number that will be exported in the payment file.';
                }
                field("Applies-to ID"; Rec."Applies-to ID")
                {
                    ToolTip = 'Specifies the ID of entries that will be applied to when you choose the Apply Entries action.';
                }
                field("Applies-to Invoice Id"; Rec."Applies-to Invoice Id")
                {
                    ToolTip = 'Specifies the value of the Applies-to Invoice Id field.';
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                    ToolTip = 'Specifies the number of the general ledger, customer, vendor, or bank account to which a balancing entry for the acquisition line will be posted.';
                }
                field("Bal. Account Type"; Rec."Bal. Account Type")
                {
                    ToolTip = 'Specifies the type of account that a balancing entry is posted to, such as BANK for a cash account.';
                }
                field("Bal. Gen. Bus. Posting Group"; Rec."Bal. Gen. Bus. Posting Group")
                {
                    ToolTip = 'Specifies the general business posting group code associated with the balancing account that will be used when you post the entry.';
                }
                field("Bal. Gen. Posting Type"; Rec."Bal. Gen. Posting Type")
                {
                    ToolTip = 'Specifies the general posting type associated with the balancing account that will be used when you post the entry on the journal line.';
                }
                field("Bal. Gen. Prod. Posting Group"; Rec."Bal. Gen. Prod. Posting Group")
                {
                    ToolTip = 'Specifies the general product posting group code associated with the balancing account that will be used when you post the entry.';
                }
                field("Bal. Tax Area Code"; Rec."Bal. Tax Area Code")
                {
                    ToolTip = 'Specifies the value of the Bal. Tax Area Code field.';
                }
                field("Bal. Tax Group Code"; Rec."Bal. Tax Group Code")
                {
                    ToolTip = 'Specifies the value of the Bal. Tax Group Code field.';
                }
                field("Bal. Tax Liable"; Rec."Bal. Tax Liable")
                {
                    ToolTip = 'Specifies the value of the Bal. Tax Liable field.';
                }
                field("Bal. Use Tax"; Rec."Bal. Use Tax")
                {
                    ToolTip = 'Specifies the value of the Bal. Use Tax field.';
                }
                field("Bal. VAT %"; Rec."Bal. VAT %")
                {
                    ToolTip = 'Specifies the value of the Bal. VAT % field.';
                }
                field("Bal. VAT Amount"; Rec."Bal. VAT Amount")
                {
                    ToolTip = 'Specifies the amount of Bal. VAT included in the total amount.';
                }
                field("Bal. VAT Amount (LCY)"; Rec."Bal. VAT Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Bal. VAT Amount (LCY) field.';
                }
                field("Bal. VAT Base Amount"; Rec."Bal. VAT Base Amount")
                {
                    ToolTip = 'Specifies the value of the Bal. VAT Base Amount field.';
                }
                field("Bal. VAT Base Amount (LCY)"; Rec."Bal. VAT Base Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Bal. VAT Base Amount (LCY) field.';
                }
                field("Bal. VAT Bus. Posting Group"; Rec."Bal. VAT Bus. Posting Group")
                {
                    ToolTip = 'Specifies the code of the VAT business posting group that will be used when you post the entry on the journal line.';
                }
                field("Bal. VAT Calculation Type"; Rec."Bal. VAT Calculation Type")
                {
                    ToolTip = 'Specifies the value of the Bal. VAT Calculation Type field.';
                }
                field("Bal. VAT Difference"; Rec."Bal. VAT Difference")
                {
                    ToolTip = 'Specifies the difference between the calculate VAT amount and the VAT amount that you have entered manually.';
                }
                field("Bal. VAT Prod. Posting Group"; Rec."Bal. VAT Prod. Posting Group")
                {
                    ToolTip = 'Specifies the code of the VAT product posting group that will be used when you post the entry on the journal line.';
                }
                field("Balance (LCY)"; Rec."Balance (LCY)")
                {
                    ToolTip = 'Specifies the value of the Balance (LCY) field.';
                }
                field("Balance Account Id"; Rec."Balance Account Id")
                {
                    ToolTip = 'Specifies the value of the Balance Account Id field.';
                }
                field("Bank Payment Type"; Rec."Bank Payment Type")
                {
                    ToolTip = 'Specifies the code for the payment type to be used for the entry on the journal line.';
                }
                field("Bill-to/Pay-to No."; Rec."Bill-to/Pay-to No.")
                {
                    ToolTip = 'Specifies the number of the bill-to customer or pay-to vendor that the entry is linked to.';
                }
                field("Budgeted FA No."; Rec."Budgeted FA No.")
                {
                    ToolTip = 'Specifies the number of a fixed asset with the Budgeted Asset check box selected. When you post the journal or document line, an additional entry is created for the budgeted fixed asset where the amount has the opposite sign.';
                }
                field("Business Unit Code"; Rec."Business Unit Code")
                {
                    ToolTip = 'Specifies the code for the business unit that the fixed asset entry is linked to.';
                }
                field("Campaign No."; Rec."Campaign No.")
                {
                    ToolTip = 'Specifies the number of the campaign the journal line is linked to.';
                }
                field("Check Exported"; Rec."Check Exported")
                {
                    ToolTip = 'Specifies the value of the Check Exported field.';
                }
                field("Check Printed"; Rec."Check Printed")
                {
                    ToolTip = 'Specifies whether a check has been printed for the amount on the payment journal line.';
                }
                field("Check Transmitted"; Rec."Check Transmitted")
                {
                    ToolTip = 'Specifies the value of the Check Transmitted field.';
                }
                field(Comment; Rec.Comment)
                {
                    ToolTip = 'Specifies a comment about the activity on the journal line. Note that the comment is not carried forward to posted entries.';
                }
                field("Contact Graph Id"; Rec."Contact Graph Id")
                {
                    ToolTip = 'Specifies the value of the Contact Graph Id field.';
                }
                field("Copy VAT Setup to Jnl. Lines"; Rec."Copy VAT Setup to Jnl. Lines")
                {
                    ToolTip = 'Specifies the value of the Copy VAT Setup to Jnl. Lines field.';
                }
                field(Correction; Rec.Correction)
                {
                    ToolTip = 'Specifies the entry as a corrective entry. You can use the field if you need to post a corrective entry to an account.';
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ToolTip = 'Specifies the value of the Country/Region Code field.';
                }
                field("Credit Amount"; Rec."Credit Amount")
                {
                    ToolTip = 'Specifies the total of the ledger entries that represent credits.';
                }
                field("Creditor No."; Rec."Creditor No.")
                {
                    ToolTip = 'Specifies the vendor who sent the purchase invoice.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ToolTip = 'Specifies the Currency code that will be used for the acquisition line will be posted.';
                }
                field("Currency Factor"; Rec."Currency Factor")
                {
                    ToolTip = 'Specifies the value of the Currency Factor field.';
                }
                field("Customer Id"; Rec."Customer Id")
                {
                    ToolTip = 'Specifies the value of the Customer Id field.';
                }
                field("Data Exch. Entry No."; Rec."Data Exch. Entry No.")
                {
                    ToolTip = 'Specifies the value of the Data Exch. Entry No. field.';
                }
                field("Data Exch. Line No."; Rec."Data Exch. Line No.")
                {
                    ToolTip = 'Specifies the value of the Data Exch. Line No. field.';
                }
                field("Debit Amount"; Rec."Debit Amount")
                {
                    ToolTip = 'Specifies the total of the ledger entries that represent debits.';
                }
                field("Deferral Code"; Rec."Deferral Code")
                {
                    ToolTip = 'Specifies the deferral template that governs how expenses or revenue are deferred to the different accounting periods when the expenses or revenue were incurred.';
                }
                field("Deferral Line No."; Rec."Deferral Line No.")
                {
                    ToolTip = 'Specifies the value of the Deferral Line No. field.';
                }
                field("Depr. Acquisition Cost"; Rec."Depr. Acquisition Cost")
                {
                    ToolTip = 'Specifies if, when this line was posted, the additional acquisition cost posted on the line was depreciated in proportion to the amount by which the fixed asset had already been depreciated.';
                }
                field("Depr. until FA Posting Date"; Rec."Depr. until FA Posting Date")
                {
                    ToolTip = 'Specifies if depreciation was calculated until the FA posting date of the line.';
                }
                field("Depreciation Book Code"; Rec."Depreciation Book Code")
                {
                    ToolTip = 'Specifies the code for the depreciation book to which the line will be posted if you have selected Fixed Asset in the Type field for this line.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the description from the fixed asset card when the FA No. field is filled in.';
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ToolTip = 'Specifies the value of the Dimension Set ID field.';
                }
                field("Direct Debit Mandate ID"; Rec."Direct Debit Mandate ID")
                {
                    ToolTip = 'Specifies the identification of the direct-debit mandate that is being used on the journal lines to process a direct debit collection.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ToolTip = 'Specifies the date when the related document was created.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies a document number for the journal line.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the appropriate document type for the amount you want to post.';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ToolTip = 'Specifies the due date on the entry.';
                }
                field("Duplicate in Depreciation Book"; Rec."Duplicate in Depreciation Book")
                {
                    ToolTip = 'Specifies a depreciation book code if you want the journal line to be posted to that depreciation book, as well as to the depreciation book in the Depreciation Book Code field.';
                }
                field("EU 3-Party Trade"; Rec."EU 3-Party Trade")
                {
                    ToolTip = 'Specifies whether the entry was part of a 3-party trade. If it was, there is a check mark in the field.';
                }
                field("Expiration Date"; Rec."Expiration Date")
                {
                    ToolTip = 'Specifies the last date the recurring journal will be posted, if you have indicated in the journal is recurring.';
                }
                field("Exported to Payment File"; Rec."Exported to Payment File")
                {
                    ToolTip = 'Specifies that the payment journal line was exported to a payment file.';
                }
                field("External Document No."; Rec."External Document No.")
                {
                    ToolTip = 'Specifies the identification number that the vendor assigned to the document. For example, this number is useful if you need to contact the vendor about the document.';
                }
                field("FA Add.-Currency Factor"; Rec."FA Add.-Currency Factor")
                {
                    ToolTip = 'Specifies the value of the FA Add.-Currency Factor field.';
                }
                field("FA Error Entry No."; Rec."FA Error Entry No.")
                {
                    ToolTip = 'Specifies the number of a posted FA ledger entry to mark as an error entry.';
                }
                field("FA G/L Account No."; Rec."FA G/L Account No.")
                {
                    ToolTip = 'Specifies the value of the FA G/L Account No. field.';
                }
                field("FA Posting Date"; Rec."FA Posting Date")
                {
                    ToolTip = 'Specifies the posting date of the related fixed asset transaction, such as a depreciation.';
                }
                field("FA Posting Type"; Rec."FA Posting Type")
                {
                    ToolTip = 'Specifies the posting type, if Account Type field contains Fixed Asset.';
                }
                field("FA Reclassification Entry"; Rec."FA Reclassification Entry")
                {
                    ToolTip = 'Specifies if the entry was generated from a fixed asset reclassification journal.';
                }
                field("Financial Void"; Rec."Financial Void")
                {
                    ToolTip = 'Specifies the value of the Financial Void field.';
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ToolTip = 'Specifies the vendor''s or customer''s trade type to link transactions made for this business partner with the appropriate general ledger account according to the general posting setup.';
                }
                field("Gen. Posting Type"; Rec."Gen. Posting Type")
                {
                    ToolTip = 'Specifies the type of transaction.';
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ToolTip = 'Specifies the item''s product type to link transactions made for this item with the appropriate general ledger account according to the general posting setup.';
                }
                field("Has Payment Export Error"; Rec."Has Payment Export Error")
                {
                    ToolTip = 'Specifies that an error occurred when you used the Export Payments to File function in the Payment Journal window.';
                }
                field("IC Account No."; Rec."IC Account No.")
                {
                    ToolTip = 'Specifies the number of the general ledger or bank account that the IC transaction is posted to.';
                }
                field("IC Account Type"; Rec."IC Account Type")
                {
                    ToolTip = 'Specifies the type of the account that you want to use for the transaction with your IC partner.';
                }
                field("IC Direction"; Rec."IC Direction")
                {
                    ToolTip = 'Specifies the value of the IC Direction field.';
                }
                field("IC Partner Code"; Rec."IC Partner Code")
                {
                    ToolTip = 'Specifies the value of the IC Partner Code field.';
                }
                field("IC Partner G/L Acc. No."; Rec."IC Partner G/L Acc. No.")
                {
                    ToolTip = 'Specifies the account in your IC partner''s company that corresponds to the G/L account on the line.';
                }
                field("IC Partner Transaction No."; Rec."IC Partner Transaction No.")
                {
                    ToolTip = 'Specifies the value of the IC Partner Transaction No. field.';
                }
                field("Incoming Document Entry No."; Rec."Incoming Document Entry No.")
                {
                    ToolTip = 'Specifies the number of the incoming document that this general journal line is created for.';
                }
                field("Index Entry"; Rec."Index Entry")
                {
                    ToolTip = 'Specifies the value of the Index Entry field.';
                }
                field("Insurance No."; Rec."Insurance No.")
                {
                    ToolTip = 'Specifies an insurance code if you have selected the Acquisition Cost option in the FA Posting Type field.';
                }
                field("Inv. Discount (LCY)"; Rec."Inv. Discount (LCY)")
                {
                    ToolTip = 'Specifies the amount of the invoice discount if you are using this journal line for an invoice.';
                }
                field("Job Currency Code"; Rec."Job Currency Code")
                {
                    ToolTip = 'Specifies the value of the Job Currency Code field.';
                }
                field("Job Currency Factor"; Rec."Job Currency Factor")
                {
                    ToolTip = 'Specifies the value of the Job Currency Factor field.';
                }
                field("Job Line Amount"; Rec."Job Line Amount")
                {
                    ToolTip = 'Specifies the line amount of the job ledger entry.';
                }
                field("Job Line Amount (LCY)"; Rec."Job Line Amount (LCY)")
                {
                    ToolTip = 'Specifies the line amount of the job ledger entry.';
                }
                field("Job Line Disc. Amount (LCY)"; Rec."Job Line Disc. Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the Job Line Disc. Amount (LCY) field.';
                }
                field("Job Line Discount %"; Rec."Job Line Discount %")
                {
                    ToolTip = 'Specifies the line discount percentage of the job ledger entry that is related to the purchase line.';
                }
                field("Job Line Discount Amount"; Rec."Job Line Discount Amount")
                {
                    ToolTip = 'Specifies the line discount amount of the job ledger entry.';
                }
                field("Job Line Type"; Rec."Job Line Type")
                {
                    ToolTip = 'Specifies the type of planning line to create when a job ledger entry is posted. If the field is empty, no planning lines are created.';
                }
                field("Job No."; Rec."Job No.")
                {
                    ToolTip = 'Specifies the number of the related job.';
                }
                field("Job Planning Line No."; Rec."Job Planning Line No.")
                {
                    ToolTip = 'Specifies the job planning line number that the usage should be linked to when the job journal is posted. You can only link to job planning lines that have the Apply Usage Link option enabled.';
                }
                field("Job Quantity"; Rec."Job Quantity")
                {
                    ToolTip = 'Specifies the quantity for the job ledger entry that is derived from posting the journal line. If the Job Quantity is 0, the total amount on the job ledger entry will also be 0.';
                }
                field("Job Queue Entry ID"; Rec."Job Queue Entry ID")
                {
                    ToolTip = 'Specifies the value of the Job Queue Entry ID field.';
                }
                field("Job Queue Status"; Rec."Job Queue Status")
                {
                    ToolTip = 'Specifies the status of a job queue entry or task that handles the posting of general journals.';
                }
                field("Job Remaining Qty."; Rec."Job Remaining Qty.")
                {
                    ToolTip = 'Specifies the quantity that remains to complete a job.';
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ToolTip = 'Specifies the number of the related job task.';
                }
                field("Job Total Cost"; Rec."Job Total Cost")
                {
                    ToolTip = 'Specifies if you have assigned a job number and a job task number to the journal line. It shows the amount excluding VAT divided by the job quantity for the journal line. The amount is shown in the currency specified for the job. The value field is calculated as follows: (Amount - VAT Amount) x (Job Currency Rate/Currency Rate).';
                }
                field("Job Total Cost (LCY)"; Rec."Job Total Cost (LCY)")
                {
                    ToolTip = 'Specifies the job total cost if you have assigned a job number and a job task number to the journal line. It shows the Amount (LCY) excluding VAT Amount (LCY)for the journal line.';
                }
                field("Job Total Price"; Rec."Job Total Price")
                {
                    ToolTip = 'Specifies the total price for the journal line. The value is calculated as follows: Quantity x Unit Price (LCY).';
                }
                field("Job Total Price (LCY)"; Rec."Job Total Price (LCY)")
                {
                    ToolTip = 'Specifies the total price for the journal line, in the local currency. The value is calculated as follows: Quantity x Unit Price (LCY).';
                }
                field("Job Unit Cost"; Rec."Job Unit Cost")
                {
                    ToolTip = 'Specifies the job cost of one unit of the item or resource on the journal line. The value is calculated as follows: Job Total Cost (LCY) / Job Quantity.';
                }
                field("Job Unit Cost (LCY)"; Rec."Job Unit Cost (LCY)")
                {
                    ToolTip = 'Specifies the job cost of one unit of the item or resource on the journal line, in the local currency. The value is calculated as follows: Job Total Cost (LCY) / Job Quantity.';
                }
                field("Job Unit Of Measure Code"; Rec."Job Unit Of Measure Code")
                {
                    ToolTip = 'Specifies the unit of measure code that is used to determine the unit price. This code specifies how the quantity is measured, for example, by the box or by the piece. The application retrieves this code from the corresponding item or resource card.';
                }
                field("Job Unit Price"; Rec."Job Unit Price")
                {
                    ToolTip = 'Specifies the unit price for the selected account type and account number on the journal line.';
                }
                field("Job Unit Price (LCY)"; Rec."Job Unit Price (LCY)")
                {
                    ToolTip = 'Specifies the unit price, in the local currency, for the selected account type and account number on the journal line.';
                }
                field("Journal Batch Id"; Rec."Journal Batch Id")
                {
                    ToolTip = 'Specifies the value of the Journal Batch Id field.';
                }
                field("Journal Batch Name"; Rec."Journal Batch Name")
                {
                    ToolTip = 'Specifies the value of the Journal Batch Name field.';
                }
                field("Journal Template Name"; Rec."Journal Template Name")
                {
                    ToolTip = 'Specifies the value of the Journal Template Name field.';
                }
                field("Keep Description"; Rec."Keep Description")
                {
                    ToolTip = 'Specifies the value of the Keep Description field.';
                }
                field("Last Modified DateTime"; Rec."Last Modified DateTime")
                {
                    ToolTip = 'Specifies the value of the Last Modified DateTime field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                }
                field("Linked System ID"; Rec."Linked System ID")
                {
                    ToolTip = 'Specifies the value of the Linked System ID field.';
                }
                field("Linked Table ID"; Rec."Linked Table ID")
                {
                    ToolTip = 'Specifies the value of the Linked Table ID field.';
                }
                field("Maintenance Code"; Rec."Maintenance Code")
                {
                    ToolTip = 'Specifies a maintenance code.';
                }
                field("Message to Recipient"; Rec."Message to Recipient")
                {
                    ToolTip = 'Specifies the message exported to the payment file when you use the Export Payments to File function in the Payment Journal window.';
                }
                field("No. of Depreciation Days"; Rec."No. of Depreciation Days")
                {
                    ToolTip = 'Specifies the number of depreciation days if you have selected the Depreciation or Custom 1 option in the FA Posting Type field.';
                }
                field("Non-Deductible VAT %"; Rec."Non-Deductible VAT %")
                {
                    ToolTip = 'Specifies the value of the Non-Deductible VAT % field.';
                }
                field("Non-Deductible VAT Amount"; Rec."Non-Deductible VAT Amount")
                {
                    ToolTip = 'Specifies the value of the Non-Deductible VAT Amount field.';
                }
                field("Non-Deductible VAT Amount ACY"; Rec."Non-Deductible VAT Amount ACY")
                {
                    ToolTip = 'Specifies the value of the Non-Deductible VAT Amount ACY field.';
                }
                field("Non-Deductible VAT Amount LCY"; Rec."Non-Deductible VAT Amount LCY")
                {
                    ToolTip = 'Specifies the value of the Non-Deductible VAT Amount LCY field.';
                }
                field("Non-Deductible VAT Base"; Rec."Non-Deductible VAT Base")
                {
                    ToolTip = 'Specifies the value of the Non-Deductible VAT Base field.';
                }
                field("Non-Deductible VAT Base ACY"; Rec."Non-Deductible VAT Base ACY")
                {
                    ToolTip = 'Specifies the value of the Non-Deductible VAT Base ACY field.';
                }
                field("Non-Deductible VAT Base LCY"; Rec."Non-Deductible VAT Base LCY")
                {
                    ToolTip = 'Specifies the value of the Non-Deductible VAT Base LCY field.';
                }
                field("Non-Deductible VAT Diff."; Rec."Non-Deductible VAT Diff.")
                {
                    ToolTip = 'Specifies the value of the Non-Deductible VAT Difference field.';
                }
                field("On Hold"; Rec."On Hold")
                {
                    ToolTip = 'Specifies that the related entry represents an unpaid invoice for which either a payment suggestion, a reminder, or a finance charge memo exists.';
                }
                field("Orig. Pmt. Disc. Possible"; Rec."Orig. Pmt. Disc. Possible")
                {
                    ToolTip = 'Specifies the value of the Original Pmt. Disc. Possible field.';
                }
                field("Orig. Pmt. Disc. Possible(LCY)"; Rec."Orig. Pmt. Disc. Possible(LCY)")
                {
                    ToolTip = 'Specifies the value of the Orig. Pmt. Disc. Possible (LCY) field.';
                }
                field("Payer Information"; Rec."Payer Information")
                {
                    ToolTip = 'Specifies payer information that is imported with the bank statement file.';
                }
                field("Payment Discount %"; Rec."Payment Discount %")
                {
                    ToolTip = 'Specifies the payment discount percent granted if payment is made on or before the date in the Pmt. Discount Date field.';
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ToolTip = 'Specifies how to make payment, such as with bank transfer, cash, or check.';
                }
                field("Payment Method Id"; Rec."Payment Method Id")
                {
                    ToolTip = 'Specifies the value of the Payment Method Id field.';
                }
                field("Payment Reference"; Rec."Payment Reference")
                {
                    ToolTip = 'Specifies the payment of the purchase invoice.';
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                    ToolTip = 'Specifies a formula that calculates the payment due date, payment discount date, and payment discount amount.';
                }
                field("Pending Approval"; Rec."Pending Approval")
                {
                    ToolTip = 'Specifies the value of the Pending Approval field.';
                }
                field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
                {
                    ToolTip = 'Specifies the date on which the amount in the entry must be paid for a payment discount to be granted.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the posting date for the entry.';
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    ToolTip = 'Specifies the account posting group that the entry on the journal line will be posted to.';
                }
                field("Posting No. Series"; Rec."Posting No. Series")
                {
                    ToolTip = 'Specifies the value of the Posting No. Series field.';
                }
                field(Prepayment; Rec.Prepayment)
                {
                    ToolTip = 'Specifies the value of the Prepayment field.';
                }
                field("Print Posted Documents"; Rec."Print Posted Documents")
                {
                    ToolTip = 'Specifies the value of the Print Posted Documents field.';
                }
                field("Prod. Order No."; Rec."Prod. Order No.")
                {
                    ToolTip = 'Specifies the value of the Prod. Order No. field.';
                }
                field("Profit (LCY)"; Rec."Profit (LCY)")
                {
                    ToolTip = 'Specifies the line''s profit amount if you are using this journal line for an invoice.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the quantity of items to be included on the journal line.';
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ToolTip = 'Specifies the reason code, a supplementary source code that enables you to trace the entry.';
                }
                field("Recipient Bank Account"; Rec."Recipient Bank Account")
                {
                    ToolTip = 'Specifies the bank account that the amount will be transferred to after it has been exported from the payment journal.';
                }
                field("Recurring Frequency"; Rec."Recurring Frequency")
                {
                    ToolTip = 'Specifies a recurring frequency if the Recurring field of the General Journal Template table indicates the journal is recurring.';
                }
                field("Recurring Method"; Rec."Recurring Method")
                {
                    ToolTip = 'Specifies a recurring method if the Recurring field of the General Journal Template table indicates the journal is recurring.';
                }
                field("Remit-to Code"; Rec."Remit-to Code")
                {
                    ToolTip = 'Specifies the address for the remit-to code.';
                }
                field("Reverse Date Calculation"; Rec."Reverse Date Calculation")
                {
                    ToolTip = 'Specifies posting date calculation formula for reverse recurring methods.';
                }
                field("Reversing Entry"; Rec."Reversing Entry")
                {
                    ToolTip = 'Specifies the value of the Reversing Entry field.';
                }
                field("Sales/Purch. (LCY)"; Rec."Sales/Purch. (LCY)")
                {
                    ToolTip = 'Specifies the line''s net amount (the amount excluding VAT) if you are using this journal line for an invoice.';
                }
                field("Salespers./Purch. Code"; Rec."Salespers./Purch. Code")
                {
                    ToolTip = 'Specifies the code for the salesperson or purchaser who is linked to the sale or purchase on the journal line.';
                }
                field("Salvage Value"; Rec."Salvage Value")
                {
                    ToolTip = 'Specifies the estimated residual value of a fixed asset when it can no longer be used.';
                }
                field("Sell-to/Buy-from No."; Rec."Sell-to/Buy-from No.")
                {
                    ToolTip = 'Specifies the value of the Sell-to/Buy-from No. field.';
                }
                field("Ship-to/Order Address Code"; Rec."Ship-to/Order Address Code")
                {
                    ToolTip = 'Specifies the address code of the ship-to customer or order-from vendor that the entry is linked to.';
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ToolTip = 'Specifies the code for Shortcut Dimension 1, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ToolTip = 'Specifies the code for Shortcut Dimension 2, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ToolTip = 'Specifies the value of the Source Code field.';
                }
                field("Source Curr. VAT Amount"; Rec."Source Curr. VAT Amount")
                {
                    ToolTip = 'Specifies the value of the Source Curr. VAT Amount field.';
                }
                field("Source Curr. VAT Base Amount"; Rec."Source Curr. VAT Base Amount")
                {
                    ToolTip = 'Specifies the value of the Source Curr. VAT Base Amount field.';
                }
                field("Source Currency Amount"; Rec."Source Currency Amount")
                {
                    ToolTip = 'Specifies the value of the Source Currency Amount field.';
                }
                field("Source Currency Code"; Rec."Source Currency Code")
                {
                    ToolTip = 'Specifies the value of the Source Currency Code field.';
                }
                field("Source Line No."; Rec."Source Line No.")
                {
                    ToolTip = 'Specifies the value of the Source Line No. field.';
                }
                field("Source No."; Rec."Source No.")
                {
                    ToolTip = 'Specifies the value of the Source No. field.';
                }
                field("Source Type"; Rec."Source Type")
                {
                    ToolTip = 'Specifies the value of the Source Type field.';
                }
                field("System-Created Entry"; Rec."System-Created Entry")
                {
                    ToolTip = 'Specifies the value of the System-Created Entry field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ToolTip = 'Specifies the tax area that is used to calculate and post sales tax.';
                }
                field("Tax Group Code"; Rec."Tax Group Code")
                {
                    ToolTip = 'Specifies the tax group that is used to calculate and post sales tax.';
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ToolTip = 'Specifies if the customer or vendor is liable for sales tax.';
                }
                field("Transaction Information"; Rec."Transaction Information")
                {
                    ToolTip = 'Specifies transaction information that is imported with the bank statement file.';
                }
                field("Use Duplication List"; Rec."Use Duplication List")
                {
                    ToolTip = 'Specifies whether the line is to be posted to all depreciation books, using different journal batches and with a check mark in the Part of Duplication List field.';
                }
                field("Use Tax"; Rec."Use Tax")
                {
                    ToolTip = 'Specifies that the purchase is subject to use tax. Use tax is a sales tax that is paid on items that are purchased by a company and are used by that company instead of being sold to a customer.';
                }
                field("VAT %"; Rec."VAT %")
                {
                    ToolTip = 'Specifies the relevant VAT rate for the particular combination of VAT business posting group and VAT product posting group. Do not enter the percent sign, only the number. For example, if the VAT rate is 25 %, enter 25 in this field.';
                }
                field("VAT Amount"; Rec."VAT Amount")
                {
                    ToolTip = 'Specifies the amount of VAT that is included in the total amount.';
                }
                field("VAT Amount (LCY)"; Rec."VAT Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the VAT Amount (LCY) field.';
                }
                field("VAT Base Amount"; Rec."VAT Base Amount")
                {
                    ToolTip = 'Specifies the value of the VAT Base Amount field.';
                }
                field("VAT Base Amount (LCY)"; Rec."VAT Base Amount (LCY)")
                {
                    ToolTip = 'Specifies the value of the VAT Base Amount (LCY) field.';
                }
                field("VAT Base Before Pmt. Disc."; Rec."VAT Base Before Pmt. Disc.")
                {
                    ToolTip = 'Specifies the value of the VAT Base Before Pmt. Disc. field.';
                }
                field("VAT Base Discount %"; Rec."VAT Base Discount %")
                {
                    ToolTip = 'Specifies the value of the VAT Base Discount % field.';
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ToolTip = 'Specifies the VAT specification of the involved customer or vendor to link transactions made for this record with the appropriate general ledger account according to the VAT posting setup.';
                }
                field("VAT Calculation Type"; Rec."VAT Calculation Type")
                {
                    ToolTip = 'Specifies the value of the VAT Calculation Type field.';
                }
                field("VAT Difference"; Rec."VAT Difference")
                {
                    ToolTip = 'Specifies the difference between the calculated VAT amount and a VAT amount that you have entered manually.';
                }
                field("VAT Posting"; Rec."VAT Posting")
                {
                    ToolTip = 'Specifies the value of the VAT Posting field.';
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ToolTip = 'Specifies the VAT specification of the involved item or resource to link transactions made for this record with the appropriate general ledger account according to the VAT posting setup.';
                }
                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                    ToolTip = 'Specifies the value of the VAT Registration No. field.';
                }
                field("VAT Reporting Date"; Rec."VAT Reporting Date")
                {
                    ToolTip = 'Specifies the date used to include entries on VAT reports in a VAT period. This is either the date that the document was created or posted, depending on your setting on the General Ledger Setup page.';
                }
                field("Vendor Id"; Rec."Vendor Id")
                {
                    ToolTip = 'Specifies the value of the Vendor Id field.';
                }
                field("Your Reference"; Rec."Your Reference")
                {
                    ToolTip = 'Specifies the value of the Your Reference field.';
                }
            }
        }
    }
}
