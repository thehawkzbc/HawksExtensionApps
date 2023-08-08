report 50152 "PIN Purch. Details Report"
{
    ApplicationArea = All;
    Caption = 'Purch. Details Multi Report';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(PurchaseHeader; "Purchase Header")
        {
            PrintOnlyIfDetail = true;

            column(ARcdNotInvExVATLCY_PurchaseHeader; "A. Rcd. Not Inv. Ex. VAT (LCY)")
            {
            }
            column(Amount_PurchaseHeader; Amount)
            {
            }
            column(AmountIncludingVAT_PurchaseHeader; "Amount Including VAT")
            {
            }
            column(AmtRcdNotInvoicedLCY_PurchaseHeader; "Amt. Rcd. Not Invoiced (LCY)")
            {
            }
            column(AppliestoDocNo_PurchaseHeader; "Applies-to Doc. No.")
            {
            }
            column(AppliestoDocType_PurchaseHeader; "Applies-to Doc. Type")
            {
            }
            column(AppliestoID_PurchaseHeader; "Applies-to ID")
            {
            }
            column(Area_PurchaseHeader; Area)
            {
            }
            column(AssignedUserID_PurchaseHeader; "Assigned User ID")
            {
            }
            column(BalAccountNo_PurchaseHeader; "Bal. Account No.")
            {
            }
            column(BalAccountType_PurchaseHeader; "Bal. Account Type")
            {
            }
            column(BuyfromAddress_PurchaseHeader; "Buy-from Address")
            {
            }
            column(BuyfromAddress2_PurchaseHeader; "Buy-from Address 2")
            {
            }
            column(BuyfromCity_PurchaseHeader; "Buy-from City")
            {
            }
            column(BuyfromContact_PurchaseHeader; "Buy-from Contact")
            {
            }
            column(BuyfromContactNo_PurchaseHeader; "Buy-from Contact No.")
            {
            }
            column(BuyfromCountryRegionCode_PurchaseHeader; "Buy-from Country/Region Code")
            {
            }
            column(BuyfromCounty_PurchaseHeader; "Buy-from County")
            {
            }
            column(BuyfromICPartnerCode_PurchaseHeader; "Buy-from IC Partner Code")
            {
            }
            column(BuyfromPostCode_PurchaseHeader; "Buy-from Post Code")
            {
            }
            column(BuyfromVendorName2_PurchaseHeader; "Buy-from Vendor Name 2")
            {
            }
            column(CampaignNo_PurchaseHeader; "Campaign No.")
            {
            }
            column(CITAcknowledgementReason_PurchaseHeader; "CIT Acknowledgement Reason")
            {
            }
            column(CITAcknowledgementStatus_PurchaseHeader; "CIT Acknowledgement Status")
            {
            }
            column(CITASNDate_PurchaseHeader; "CIT ASN Date")
            {
            }
            column(CITASNNo_PurchaseHeader; "CIT ASN No.")
            {
            }
            column(CITFromWebService_PurchaseHeader; "CIT From WebService")
            {
            }
            column(CITInitiatedBy_PurchaseHeader; "CIT Initiated By")
            {
            }
            column(CITNoofUnsyncPurchLines_PurchaseHeader; "CIT No. of Unsync Purch. Lines")
            {
            }
            column(CITNoofUnsyncTransLines_PurchaseHeader; "CIT No. of Unsync Trans. Lines")
            {
            }
            column(CITPayment_TermsDescription_PurchaseHeader; "CIT Payment_Terms Description")
            {
            }
            column(CITPOOrderNo_PurchaseHeader; "CIT PO Order No.")
            {
            }
            column(CITPODate_PurchaseHeader; "CIT PODate")
            {
            }
            column(CITPurchaseOrderNo_PurchaseHeader; "CIT Purchase Order No.")
            {
            }
            column(CITPurchaseRFQNo_PurchaseHeader; "CIT Purchase RFQ No.")
            {
            }
            column(CITQuoteApprovalStatus_PurchaseHeader; "CIT Quote Approval Status")
            {
            }
            column(CITQuoteAttachment_PurchaseHeader; "CIT Quote Attachment")
            {
            }
            column(CITQuoteCreated_PurchaseHeader; "CIT Quote Created")
            {
            }
            column(CITReferenceASNInvoiceNo_PurchaseHeader; "CIT Reference ASN/Invoice No.")
            {
            }
            column(CITRequisitionDate_PurchaseHeader; "CIT Requisition Date")
            {
            }
            column(CITRequisitionNo_PurchaseHeader; "CIT Requisition No.")
            {
            }
            column(CITRFQAttachment_PurchaseHeader; "CIT RFQ Attachment")
            {
            }
            column(CITSubDocumentType_PurchaseHeader; "CIT Sub Document Type")
            {
            }
            column(CITSynchronized_PurchaseHeader; "CIT Synchronized")
            {
            }
            column(CITTCCode_PurchaseHeader; "CIT T&C Code")
            {
            }
            column(CITUserID_PurchaseHeader; "CIT User ID")
            {
            }
            column(CITValidityDate_PurchaseHeader; "CIT Validity Date")
            {
            }
            column(Comment_PurchaseHeader; Comment)
            {
            }
            column(CompletelyReceived_PurchaseHeader; "Completely Received")
            {
            }
            column(CompressPrepayment_PurchaseHeader; "Compress Prepayment")
            {
            }
            column(Correction_PurchaseHeader; Correction)
            {
            }
            column(CreditorNo_PurchaseHeader; "Creditor No.")
            {
            }
            column(CurrencyCode_PurchaseHeader; "Currency Code")
            {
            }
            column(CurrencyFactor_PurchaseHeader; "Currency Factor")
            {
            }
            column(DateFilter_PurchaseHeader; "Date Filter")
            {
            }
            column(DimensionSetID_PurchaseHeader; "Dimension Set ID")
            {
            }
            column(DocNoOccurrence_PurchaseHeader; "Doc. No. Occurrence")
            {
            }
            column(DueDate_PurchaseHeader; "Due Date")
            {
            }
            column(EntryPoint_PurchaseHeader; "Entry Point")
            {
            }
            column(ExpectedReceiptDate_PurchaseHeader; "Expected Receipt Date")
            {
            }
            column(ICDirection_PurchaseHeader; "IC Direction")
            {
            }
            column(ICStatus_PurchaseHeader; "IC Status")
            {
            }
            column(InboundWhseHandlingTime_PurchaseHeader; "Inbound Whse. Handling Time")
            {
            }
            column(IncomingDocumentEntryNo_PurchaseHeader; "Incoming Document Entry No.")
            {
            }
            column(Invoice_PurchaseHeader; Invoice)
            {
            }
            column(InvoiceDiscCode_PurchaseHeader; "Invoice Disc. Code")
            {
            }
            column(InvoiceDiscountAmount_PurchaseHeader; "Invoice Discount Amount")
            {
            }
            column(InvoiceDiscountCalculation_PurchaseHeader; "Invoice Discount Calculation")
            {
            }
            column(InvoiceDiscountValue_PurchaseHeader; "Invoice Discount Value")
            {
            }
            column(JobQueueEntryID_PurchaseHeader; "Job Queue Entry ID")
            {
            }
            column(JobQueueStatus_PurchaseHeader; "Job Queue Status")
            {
            }
            column(LanguageCode_PurchaseHeader; "Language Code")
            {
            }
            column(LastPostingNo_PurchaseHeader; "Last Posting No.")
            {
            }
            column(LastPrepaymentNo_PurchaseHeader; "Last Prepayment No.")
            {
            }
            column(LastPrepmtCrMemoNo_PurchaseHeader; "Last Prepmt. Cr. Memo No.")
            {
            }
            column(LastReceivingNo_PurchaseHeader; "Last Receiving No.")
            {
            }
            column(LastReturnShipmentNo_PurchaseHeader; "Last Return Shipment No.")
            {
            }
            column(LeadTimeCalculation_PurchaseHeader; "Lead Time Calculation")
            {
            }
            column(LocationCode_PurchaseHeader; "Location Code")
            {
            }
            column(LocationFilter_PurchaseHeader; "Location Filter")
            {
            }
            column(NoofArchivedVersions_PurchaseHeader; "No. of Archived Versions")
            {
            }
            column(NoPrinted_PurchaseHeader; "No. Printed")
            {
            }
            column(NoSeries_PurchaseHeader; "No. Series")
            {
            }
            column(OnHold_PurchaseHeader; "On Hold")
            {
            }
            column(OrderAddressCode_PurchaseHeader; "Order Address Code")
            {
            }
            column(OrderClass_PurchaseHeader; "Order Class")
            {
            }
            column(OrderDate_PurchaseHeader; "Order Date")
            {
            }
            column(PartiallyInvoiced_PurchaseHeader; "Partially Invoiced")
            {
            }
            column(PaymentDiscount_PurchaseHeader; "Payment Discount %")
            {
            }
            column(PaymentMethodCode_PurchaseHeader; "Payment Method Code")
            {
            }
            column(PaymentReference_PurchaseHeader; "Payment Reference")
            {
            }
            column(PaymentTermsCode_PurchaseHeader; "Payment Terms Code")
            {
            }
            column(PaytoAddress_PurchaseHeader; "Pay-to Address")
            {
            }
            column(PaytoAddress2_PurchaseHeader; "Pay-to Address 2")
            {
            }
            column(PaytoCity_PurchaseHeader; "Pay-to City")
            {
            }
            column(PaytoContact_PurchaseHeader; "Pay-to Contact")
            {
            }
            column(PaytoContactNo_PurchaseHeader; "Pay-to Contact No.")
            {
            }
            column(PaytoCountryRegionCode_PurchaseHeader; "Pay-to Country/Region Code")
            {
            }
            column(PaytoCounty_PurchaseHeader; "Pay-to County")
            {
            }
            column(PaytoICPartnerCode_PurchaseHeader; "Pay-to IC Partner Code")
            {
            }
            column(PaytoName_PurchaseHeader; "Pay-to Name")
            {
            }
            column(PaytoName2_PurchaseHeader; "Pay-to Name 2")
            {
            }
            column(PaytoPostCode_PurchaseHeader; "Pay-to Post Code")
            {
            }
            column(PaytoVendorNo_PurchaseHeader; "Pay-to Vendor No.")
            {
            }
            column(PmtDiscountDate_PurchaseHeader; "Pmt. Discount Date")
            {
            }
            column(PostingDate_PurchaseHeader; "Posting Date")
            {
            }
            column(PostingDescription_PurchaseHeader; "Posting Description")
            {
            }
            column(PostingfromWhseRef_PurchaseHeader; "Posting from Whse. Ref.")
            {
            }
            column(PostingNo_PurchaseHeader; "Posting No.")
            {
            }
            column(PostingNoSeries_PurchaseHeader; "Posting No. Series")
            {
            }
            column(Prepayment_PurchaseHeader; "Prepayment %")
            {
            }
            column(PrepaymentDueDate_PurchaseHeader; "Prepayment Due Date")
            {
            }
            column(PrepaymentNo_PurchaseHeader; "Prepayment No.")
            {
            }
            column(PrepaymentNoSeries_PurchaseHeader; "Prepayment No. Series")
            {
            }
            column(PrepmtCrMemoNo_PurchaseHeader; "Prepmt. Cr. Memo No.")
            {
            }
            column(PrepmtCrMemoNoSeries_PurchaseHeader; "Prepmt. Cr. Memo No. Series")
            {
            }
            column(PrepmtPaymentDiscount_PurchaseHeader; "Prepmt. Payment Discount %")
            {
            }
            column(PrepmtPaymentTermsCode_PurchaseHeader; "Prepmt. Payment Terms Code")
            {
            }
            column(PrepmtPmtDiscountDate_PurchaseHeader; "Prepmt. Pmt. Discount Date")
            {
            }
            column(PrepmtPostingDescription_PurchaseHeader; "Prepmt. Posting Description")
            {
            }
            column(PriceCalculationMethod_PurchaseHeader; "Price Calculation Method")
            {
            }
            column(PricesIncludingVAT_PurchaseHeader; "Prices Including VAT")
            {
            }
            column(PrintPostedDocuments_PurchaseHeader; "Print Posted Documents")
            {
            }
            column(PromisedReceiptDate_PurchaseHeader; "Promised Receipt Date")
            {
            }
            column(PurchaserCode_PurchaseHeader; "Purchaser Code")
            {
            }
            column(QuoteNo_PurchaseHeader; "Quote No.")
            {
            }
            column(ReasonCode_PurchaseHeader; "Reason Code")
            {
            }
            column(RecalculateInvoiceDisc_PurchaseHeader; "Recalculate Invoice Disc.")
            {
            }
            column(Receive_PurchaseHeader; Receive)
            {
            }
            column(ReceivingNo_PurchaseHeader; "Receiving No.")
            {
            }
            column(ReceivingNoSeries_PurchaseHeader; "Receiving No. Series")
            {
            }
            column(RequestedReceiptDate_PurchaseHeader; "Requested Receipt Date")
            {
            }
            column(ResponsibilityCenter_PurchaseHeader; "Responsibility Center")
            {
            }
            column(ReturnShipmentNo_PurchaseHeader; "Return Shipment No.")
            {
            }
            column(ReturnShipmentNoSeries_PurchaseHeader; "Return Shipment No. Series")
            {
            }
            column(SelltoCustomerNo_PurchaseHeader; "Sell-to Customer No.")
            {
            }
            column(SendICDocument_PurchaseHeader; "Send IC Document")
            {
            }
            column(Ship_PurchaseHeader; Ship)
            {
            }
            column(ShipmentMethodCode_PurchaseHeader; "Shipment Method Code")
            {
            }
            column(ShiptoAddress_PurchaseHeader; "Ship-to Address")
            {
            }
            column(ShiptoAddress2_PurchaseHeader; "Ship-to Address 2")
            {
            }
            column(ShiptoCity_PurchaseHeader; "Ship-to City")
            {
            }
            column(ShiptoCode_PurchaseHeader; "Ship-to Code")
            {
            }
            column(ShiptoContact_PurchaseHeader; "Ship-to Contact")
            {
            }
            column(ShiptoCountryRegionCode_PurchaseHeader; "Ship-to Country/Region Code")
            {
            }
            column(ShiptoCounty_PurchaseHeader; "Ship-to County")
            {
            }
            column(ShiptoName_PurchaseHeader; "Ship-to Name")
            {
            }
            column(ShiptoName2_PurchaseHeader; "Ship-to Name 2")
            {
            }
            column(ShiptoPostCode_PurchaseHeader; "Ship-to Post Code")
            {
            }
            column(ShortcutDimension1Code_PurchaseHeader; "Shortcut Dimension 1 Code")
            {
            }
            column(ShortcutDimension2Code_PurchaseHeader; "Shortcut Dimension 2 Code")
            {
            }
            column(TaxAreaCode_PurchaseHeader; "Tax Area Code")
            {
            }
            column(TaxLiable_PurchaseHeader; "Tax Liable")
            {
            }
            column(TransactionSpecification_PurchaseHeader; "Transaction Specification")
            {
            }
            column(TransactionType_PurchaseHeader; "Transaction Type")
            {
            }
            column(TransportMethod_PurchaseHeader; "Transport Method")
            {
            }
            column(VATBaseDiscount_PurchaseHeader; "VAT Base Discount %")
            {
            }
            column(VATBusPostingGroup_PurchaseHeader; "VAT Bus. Posting Group")
            {
            }
            column(VATCountryRegionCode_PurchaseHeader; "VAT Country/Region Code")
            {
            }
            column(VATRegistrationNo_PurchaseHeader; "VAT Registration No.")
            {
            }
            column(VendorAuthorizationNo_PurchaseHeader; "Vendor Authorization No.")
            {
            }
            column(VendorCrMemoNo_PurchaseHeader; "Vendor Cr. Memo No.")
            {
            }
            column(VendorInvoiceNo_PurchaseHeader; "Vendor Invoice No.")
            {
            }
            column(VendorOrderNo_PurchaseHeader; "Vendor Order No.")
            {
            }
            column(VendorPostingGroup_PurchaseHeader; "Vendor Posting Group")
            {
            }
            column(VendorShipmentNo_PurchaseHeader; "Vendor Shipment No.")
            {
            }
            column(YourReference_PurchaseHeader; "Your Reference")
            {
            }
            column(DocumentType_PurchaseHeader; "Document Type")
            {
            }
            column(DocumentDate_PurchaseHeader; "Document Date")
            {
            }
            column(No_PurchaseHeader; "No.")
            {
            }
            column(BuyfromVendorNo_PurchaseHeader; "Buy-from Vendor No.")
            {
            }
            column(BuyfromVendorName_PurchaseHeader; "Buy-from Vendor Name")
            {
            }
            column(GenBusPostingGroup_PurchaseHeader; "Gen. Bus. Posting Group")
            {
            }
            column(PendingApprovals_PurchaseHeader; "Pending Approvals")
            {
            }
            column(Status_PurchaseHeader; Status)
            {
            }
            column(ReportName; ReportName)
            {
            }
            dataitem(pline; "Purchase Line")
            {
                DataItemLink = "Document No."=field("No."), "Document Type"=field("Document Type");

                // RequestFilterFields = Type;
                column(Type_pline; Type)
                {
                }
                column(No_pline; "No.")
                {
                }
                column(LocationCode_pline; "Location Code")
                {
                }
                column(ExpectedReceiptDate_pline; "Expected Receipt Date")
                {
                }
                column(Description_pline; Description)
                {
                }
                column(PrepmtAmtInv_pline; "Prepmt. Amt. Inv.")
                {
                }
                column(PrepmtAmtDeducted_pline; "Prepmt Amt Deducted")
                {
                }
                column(PrepmtLineAmount_pline; "Prepmt. Line Amount")
                {
                }
                column(PrepmtAmountInvLCY_pline; "Prepmt. Amount Inv. (LCY)")
                {
                }
                column(PrepmtVATAmountInvLCY_pline; "Prepmt. VAT Amount Inv. (LCY)")
                {
                }
                column(PrepmtAmttoDeduct_pline; "Prepmt Amt to Deduct")
                {
                }
                column(UnitofMeasure_pline; "Unit of Measure")
                {
                }
                column(Quantity_pline; Quantity)
                {
                }
                column(OutstandingQuantity_pline; "Outstanding Quantity")
                {
                }
                column(QtytoInvoice_pline; "Qty. to Invoice")
                {
                }
                column(QtytoReceive_pline; "Qty. to Receive")
                {
                }
                column(UnitCost_pline; "Unit Cost")
                {
                }
                column(UnitCostLCY_pline; "Unit Cost (LCY)")
                {
                }
                column(AmountIncludingVAT_pline; "Amount Including VAT")
                {
                }
                column(ShortcutDimension1Code_pline; "Shortcut Dimension 1 Code")
                {
                }
                column(QuantityReceived_pline; "Quantity Received")
                {
                }
                column(VATProdPostingGroup_pline; "VAT Prod. Posting Group")
                {
                }
                column(CurrencyCode_pline; "Currency Code")
                {
                }
                column(Order_Date_pline; "Order Date")
                {
                }
                column(CIT_Special_Remarks_pline; "CIT Special Remarks")
                {
                }
                column(ARcdNotInvExVATLCY_pline; "A. Rcd. Not Inv. Ex. VAT (LCY)")
                {
                }
                column(AllowInvoiceDisc_pline; "Allow Invoice Disc.")
                {
                }
                column(AllowItemChargeAssignment_pline; "Allow Item Charge Assignment")
                {
                }
                column(Amount_pline; Amount)
                {
                }
                column(AmtRcdNotInvoiced_pline; "Amt. Rcd. Not Invoiced")
                {
                }
                column(AmtRcdNotInvoicedLCY_pline; "Amt. Rcd. Not Invoiced (LCY)")
                {
                }
                column(AppltoItemEntry_pline; "Appl.-to Item Entry")
                {
                }
                column(Area_pline; Area)
                {
                }
                column(AttachedDocCount_pline; "Attached Doc Count")
                {
                }
                column(AttachedtoLineNo_pline; "Attached to Line No.")
                {
                }
                column(BinCode_pline; "Bin Code")
                {
                }
                column(BlanketOrderLineNo_pline; "Blanket Order Line No.")
                {
                }
                column(BlanketOrderNo_pline; "Blanket Order No.")
                {
                }
                column(BudgetedFANo_pline; "Budgeted FA No.")
                {
                }
                column(BuyfromVendorNo_pline; "Buy-from Vendor No.")
                {
                }
                // column(CITAcknowledgementReason_pline; "CIT Acknowledgement Reason") { }
                // column(CITAcknowledgementStatus_pline; "CIT Acknowledgement Status") { }
                // column(CITASNLineNo_pline; "CIT ASN LineNo") { }
                // column(CITASNNo_pline; "CIT ASN No.") { }
                // column(CITComparisonCode_pline; "CIT Comparison Code") { }
                // column(CITCreateSchedule_pline; "CIT Create Schedule") { }
                // column(CITDefectedQty_pline; "CIT Defected Qty.") { }
                // column(CITFromWebService_pline; "CIT From Web Service") { }
                // column(CITNoofUnsyncTransLines_pline; "CIT No. of Unsync Trans. Lines") { }
                // column(CITPOCreated_pline; "CIT PO Created") { }
                // column(CITPurchaseOrderQty_pline; "CIT Purchase Order Qty.") { }
                // column(CITQtyCancelled_pline; "CIT Qty. Cancelled") { }
                // column(CITQtyCancelledBase_pline; "CIT Qty. Cancelled(Base)") { }
                // column(CITQtytoCancel_pline; "CIT Qty. to Cancel") { }
                // column(CITQtytoOrder_pline; "CIT Qty. to Order") { }
                // column(CITQtywithToleranceBase_pline; "CIT Qty. with Tolerance (Base)") { }
                // column(CITQuantitywithTolerance_pline; "CIT Quantity with Tolerance") { }
                // column(CITQuoteApprovalStatus_pline; "CIT Quote Approval Status") { }
                // column(CITQuoteCreated_pline; "CIT Quote Created") { }
                // column(CITQuoteNo_pline; "CIT Quote No.") { }
                // column(CITReferenceASNInvoiceNo_pline; "CIT Reference ASN/Invoice No.") { }
                // column(CITRequestedQuantity_pline; "CIT Requested Quantity") { }
                // column(CITRequisitionLineNo_pline; "CIT Requisition Line No.") { }
                // column(CITRequisitionNo_pline; "CIT Requisition No.") { }
                // column(CITRFQNo_pline; "CIT RFQ No.") { }
                // column(CITSelect_pline; "CIT Select") { }
                // column(CITStatusUpdated_pline; "CIT Status Updated") { }
                // column(CITSubDocumentType_pline; "CIT Sub Document Type") { }
                // column(CITSynchronized_pline; "CIT Synchronized") { }
                // column(CITTCCode_pline; "CIT T&C Code") { }
                // column(CITTCDescription_pline; "CIT T&C Description") { }
                // column(CITTargetPrice_pline; "CIT Target Price") { }
                // column(CITVendorLine_pline; "CIT Vendor Line") { }
                column(CompletelyReceived_pline; "Completely Received")
                {
                }
                column(CopiedFromPostedDoc_pline; "Copied From Posted Doc.")
                {
                }
                //column(CrossReferenceNo_pline; "Cross-Reference No.") { }
                //column(CrossReferenceType_pline; "Cross-Reference Type") { }
                //column(CrossReferenceTypeNo_pline; "Cross-Reference Type No.") { }
                column(DeferralCode_pline; "Deferral Code")
                {
                }
                column(DeprAcquisitionCost_pline; "Depr. Acquisition Cost")
                {
                }
                column(DepruntilFAPostingDate_pline; "Depr. until FA Posting Date")
                {
                }
                column(DepreciationBookCode_pline; "Depreciation Book Code")
                {
                }
                column(Description2_pline; "Description 2")
                {
                }
                column(DimensionSetID_pline; "Dimension Set ID")
                {
                }
                column(DirectUnitCost_pline; "Direct Unit Cost")
                {
                }
                column(DocumentNo_pline; "Document No.")
                {
                }
                column(DocumentType_pline; "Document Type")
                {
                }
                column(DropShipment_pline; "Drop Shipment")
                {
                }
                column(DuplicateinDepreciationBook_pline; "Duplicate in Depreciation Book")
                {
                }
                column(EntryPoint_pline; "Entry Point")
                {
                }
                column(FAPostingDate_pline; "FA Posting Date")
                {
                }
                column(FAPostingType_pline; "FA Posting Type")
                {
                }
                column(Finished_pline; Finished)
                {
                }
                column(GenBusPostingGroup_pline; "Gen. Bus. Posting Group")
                {
                }
                column(GenProdPostingGroup_pline; "Gen. Prod. Posting Group")
                {
                }
                column(GrossWeight_pline; "Gross Weight")
                {
                }
                column(ICPartnerCode_pline; "IC Partner Code")
                {
                }
                column(ICPartnerRefType_pline; "IC Partner Ref. Type")
                {
                }
                column(ICPartnerReference_pline; "IC Partner Reference")
                {
                }
                column(InboundWhseHandlingTime_pline; "Inbound Whse. Handling Time")
                {
                }
                column(IndirectCost_pline; "Indirect Cost %")
                {
                }
                column(InsuranceNo_pline; "Insurance No.")
                {
                }
                column(InvDiscAmounttoInvoice_pline; "Inv. Disc. Amount to Invoice")
                {
                }
                column(InvDiscountAmount_pline; "Inv. Discount Amount")
                {
                }
                column(ItemCategoryCode_pline; "Item Category Code")
                {
                }
                column(JobCurrencyCode_pline; "Job Currency Code")
                {
                }
                column(JobCurrencyFactor_pline; "Job Currency Factor")
                {
                }
                column(JobLineAmount_pline; "Job Line Amount")
                {
                }
                column(JobLineAmountLCY_pline; "Job Line Amount (LCY)")
                {
                }
                column(JobLineDiscAmountLCY_pline; "Job Line Disc. Amount (LCY)")
                {
                }
                column(JobLineDiscount_pline; "Job Line Discount %")
                {
                }
                column(JobLineDiscountAmount_pline; "Job Line Discount Amount")
                {
                }
                column(JobLineType_pline; "Job Line Type")
                {
                }
                column(JobNo_pline; "Job No.")
                {
                }
                column(JobPlanningLineNo_pline; "Job Planning Line No.")
                {
                }
                column(JobRemainingQty_pline; "Job Remaining Qty.")
                {
                }
                column(JobRemainingQtyBase_pline; "Job Remaining Qty. (Base)")
                {
                }
                column(JobTaskNo_pline; "Job Task No.")
                {
                }
                column(JobTotalPrice_pline; "Job Total Price")
                {
                }
                column(JobTotalPriceLCY_pline; "Job Total Price (LCY)")
                {
                }
                column(JobUnitPrice_pline; "Job Unit Price")
                {
                }
                column(JobUnitPriceLCY_pline; "Job Unit Price (LCY)")
                {
                }
                column(LeadTimeCalculation_pline; "Lead Time Calculation")
                {
                }
                column(LineAmount_pline; "Line Amount")
                {
                }
                column(LineDiscount_pline; "Line Discount %")
                {
                }
                column(LineDiscountAmount_pline; "Line Discount Amount")
                {
                }
                column(LineNo_pline; "Line No.")
                {
                }
                column(MaintenanceCode_pline; "Maintenance Code")
                {
                }
                column(MPSOrder_pline; "MPS Order")
                {
                }
                column(NetWeight_pline; "Net Weight")
                {
                }
                column(Nonstock_pline; Nonstock)
                {
                }
                column(OperationNo_pline; "Operation No.")
                {
                }
                column(OrderLineNo_pline; "Order Line No.")
                {
                }
                column(OrderNo_pline; "Order No.")
                {
                }
                column(OutstandingAmount_pline; "Outstanding Amount")
                {
                }
                column(OutstandingAmountLCY_pline; "Outstanding Amount (LCY)")
                {
                }
                column(OutstandingAmtExVATLCY_pline; "Outstanding Amt. Ex. VAT (LCY)")
                {
                }
                column(OutstandingQtyBase_pline; "Outstanding Qty. (Base)")
                {
                }
                column(OverheadRate_pline; "Overhead Rate")
                {
                }
                column(OverReceiptApprovalStatus_pline; "Over-Receipt Approval Status")
                {
                }
                column(OverReceiptCode_pline; "Over-Receipt Code")
                {
                }
                column(OverReceiptQuantity_pline; "Over-Receipt Quantity")
                {
                }
                column(PaytoVendorNo_pline; "Pay-to Vendor No.")
                {
                }
                column(PlannedReceiptDate_pline; "Planned Receipt Date")
                {
                }
                column(PlanningFlexibility_pline; "Planning Flexibility")
                {
                }
                column(PmtDiscountAmount_pline; "Pmt. Discount Amount")
                {
                }
                column(PostingGroup_pline; "Posting Group")
                {
                }
                column(Prepayment_pline; "Prepayment %")
                {
                }
                column(PrepaymentAmount_pline; "Prepayment Amount")
                {
                }
                column(PrepaymentLine_pline; "Prepayment Line")
                {
                }
                column(PrepaymentTaxAreaCode_pline; "Prepayment Tax Area Code")
                {
                }
                column(PrepaymentTaxGroupCode_pline; "Prepayment Tax Group Code")
                {
                }
                column(PrepaymentTaxLiable_pline; "Prepayment Tax Liable")
                {
                }
                column(PrepaymentVAT_pline; "Prepayment VAT %")
                {
                }
                column(PrepaymentVATDifference_pline; "Prepayment VAT Difference")
                {
                }
                column(PrepaymentVATIdentifier_pline; "Prepayment VAT Identifier")
                {
                }
                column(PrepmtVATDiffDeducted_pline; "Prepmt VAT Diff. Deducted")
                {
                }
                column(PrepmtVATDifftoDeduct_pline; "Prepmt VAT Diff. to Deduct")
                {
                }
                column(PrepmtAmountInvInclVAT_pline; "Prepmt. Amount Inv. Incl. VAT")
                {
                }
                column(PrepmtAmtInclVAT_pline; "Prepmt. Amt. Incl. VAT")
                {
                }
                column(PrepmtVATBaseAmt_pline; "Prepmt. VAT Base Amt.")
                {
                }
                column(PrepmtVATCalcType_pline; "Prepmt. VAT Calc. Type")
                {
                }
                column(PriceCalculationMethod_pline; "Price Calculation Method")
                {
                }
                column(ProdOrderLineNo_pline; "Prod. Order Line No.")
                {
                }
                column(ProdOrderNo_pline; "Prod. Order No.")
                {
                }
                column(Profit_pline; "Profit %")
                {
                }
                column(PromisedReceiptDate_pline; "Promised Receipt Date")
                {
                }
                column(PurchasingCode_pline; "Purchasing Code")
                {
                }
                column(QtyAssigned_pline; "Qty. Assigned")
                {
                }
                column(QtyInvoicedBase_pline; "Qty. Invoiced (Base)")
                {
                }
                column(QtyperUnitofMeasure_pline; "Qty. per Unit of Measure")
                {
                }
                column(QtyRcdNotInvoiced_pline; "Qty. Rcd. Not Invoiced")
                {
                }
                column(QtyRcdNotInvoicedBase_pline; "Qty. Rcd. Not Invoiced (Base)")
                {
                }
                column(QtyReceivedBase_pline; "Qty. Received (Base)")
                {
                }
                column(QtytoAssign_pline; "Qty. to Assign")
                {
                }
                column(QtytoInvoiceBase_pline; "Qty. to Invoice (Base)")
                {
                }
                column(QtytoReceiveBase_pline; "Qty. to Receive (Base)")
                {
                }
                column(QuantityBase_pline; "Quantity (Base)")
                {
                }
                column(QuantityInvoiced_pline; "Quantity Invoiced")
                {
                }
                column(RecalculateInvoiceDisc_pline; "Recalculate Invoice Disc.")
                {
                }
                column(ReceiptLineNo_pline; "Receipt Line No.")
                {
                }
                column(ReceiptNo_pline; "Receipt No.")
                {
                }
                column(RequestedReceiptDate_pline; "Requested Receipt Date")
                {
                }
                column(ReservedQtyBase_pline; "Reserved Qty. (Base)")
                {
                }
                column(ReservedQuantity_pline; "Reserved Quantity")
                {
                }
                column(ResponsibilityCenter_pline; "Responsibility Center")
                {
                }
                column(RetQtyShpdNotInvdBase_pline; "Ret. Qty. Shpd Not Invd.(Base)")
                {
                }
                column(ReturnQtyShipped_pline; "Return Qty. Shipped")
                {
                }
                column(ReturnQtyShippedBase_pline; "Return Qty. Shipped (Base)")
                {
                }
                column(ReturnQtyShippedNotInvd_pline; "Return Qty. Shipped Not Invd.")
                {
                }
                column(ReturnQtytoShip_pline; "Return Qty. to Ship")
                {
                }
                column(ReturnQtytoShipBase_pline; "Return Qty. to Ship (Base)")
                {
                }
                column(ReturnReasonCode_pline; "Return Reason Code")
                {
                }
                column(ReturnShipmentLineNo_pline; "Return Shipment Line No.")
                {
                }
                column(ReturnShipmentNo_pline; "Return Shipment No.")
                {
                }
                column(ReturnShpdNotInvd_pline; "Return Shpd. Not Invd.")
                {
                }
                column(ReturnShpdNotInvdLCY_pline; "Return Shpd. Not Invd. (LCY)")
                {
                }
                column(ReturnsDeferralStartDate_pline; "Returns Deferral Start Date")
                {
                }
                column(RoutingNo_pline; "Routing No.")
                {
                }
                column(RoutingReferenceNo_pline; "Routing Reference No.")
                {
                }
                column(SafetyLeadTime_pline; "Safety Lead Time")
                {
                }
                column(SalesOrderLineNo_pline; "Sales Order Line No.")
                {
                }
                column(SalesOrderNo_pline; "Sales Order No.")
                {
                }
                column(SalvageValue_pline; "Salvage Value")
                {
                }
                column(ShortcutDimension2Code_pline; "Shortcut Dimension 2 Code")
                {
                }
                column(SpecialOrder_pline; "Special Order")
                {
                }
                column(SpecialOrderSalesLineNo_pline; "Special Order Sales Line No.")
                {
                }
                column(SpecialOrderSalesNo_pline; "Special Order Sales No.")
                {
                }
                column(Subtype_pline; Subtype)
                {
                }
                column(SystemCreatedEntry_pline; "System-Created Entry")
                {
                }
                column(TaxAreaCode_pline; "Tax Area Code")
                {
                }
                column(TaxGroupCode_pline; "Tax Group Code")
                {
                }
                column(TaxLiable_pline; "Tax Liable")
                {
                }
                column(TransactionSpecification_pline; "Transaction Specification")
                {
                }
                column(TransactionType_pline; "Transaction Type")
                {
                }
                column(TransportMethod_pline; "Transport Method")
                {
                }
                //column(UnitofMeasureCrossRef_pline; "Unit of Measure (Cross Ref.)") { }
                column(UnitofMeasureCode_pline; "Unit of Measure Code")
                {
                }
                column(UnitPriceLCY_pline; "Unit Price (LCY)")
                {
                }
                column(UnitVolume_pline; "Unit Volume")
                {
                }
                column(UnitsperParcel_pline; "Units per Parcel")
                {
                }
                column(UseDuplicationList_pline; "Use Duplication List")
                {
                }
                column(UseTax_pline; "Use Tax")
                {
                }
                column(VariantCode_pline; "Variant Code")
                {
                }
                column(VAT_pline; "VAT %")
                {
                }
                column(VATBaseAmount_pline; "VAT Base Amount")
                {
                }
                column(VATBusPostingGroup_pline; "VAT Bus. Posting Group")
                {
                }
                column(VATCalculationType_pline; "VAT Calculation Type")
                {
                }
                column(VATDifference_pline; "VAT Difference")
                {
                }
                column(VATIdentifier_pline; "VAT Identifier")
                {
                }
                column(VendorItemNo_pline; "Vendor Item No.")
                {
                }
                column(WhseOutstandingQtyBase_pline; "Whse. Outstanding Qty. (Base)")
                {
                }
                column(WorkCenterNo_pline; "Work Center No.")
                {
                }
                column(Dim_DEPT; getDimensionName('DEPT', "Dimension Set ID"))
                {
                }
                column(Dim_CWIP; getDimensionName('CWIP', "Dimension Set ID"))
                {
                }
                column(Dim_EXPOBJ; getDimensionName('EXPOBJ', "Dimension Set ID"))
                {
                }
                trigger OnPreDataItem()
                begin
                    case ReportName of 'PREPAYMENTS': begin
                        pline.SetFilter("Prepmt. Amount Inv. (LCY)", '<>0');
                        pline.SetFilter(Type, '<>%1', type::"Charge (Item)");
                    end;
                    'RECEIVED BUT NOT INVOICED': pline.SetFilter("Qty. Rcd. Not Invoiced", '<>0');
                    'DELAYED': begin
                        pline.SetFilter("Expected Receipt Date", '..%1', Today);
                        pline.SetFilter("Qty. to Receive", '>0');
                        pline.SetRange("Document Type", "Document Type"::Order);
                    end;
                    'PENDING APPROVAL': //filter at header level;
                        ;
                    'OPEN ORDERS': pline.SetRange("Document Type", "Document Type"::Order);
                    'PENDING CHARGES': begin
                        pline.SetRange("Document Type", "Document Type"::Order);
                        pline.SetRange("Type", Type::"Charge (Item)");
                    end;
                    end end;
            }
            trigger OnPreDataItem()
            begin
                if ReportName = 'PENDING APPROVAL' then begin
                    PurchaseHeader.SetRange(Status, PurchaseHeader.Status::"Pending Approval");
                    PurchaseHeader.SetRange("Document Type", PurchaseHeader."Document Type"::Order);
                end;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                field(LayoutCtl; ReportName)
                {
                    Caption = 'Selected Layout';
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Selected Layout field.';
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    trigger OnInitReport()
    var
        RLS: Record "Report Layout Selection";
        Layout: Record "Custom Report Layout";
    begin
        Layout.SetRange("Report ID", 50152);
        if page.RunModal(page::"PIN Select Layout", Layout) = Action::LookupOK then begin
            RLS.SetTempLayoutSelected(Layout.Code);
            ReportName:=Layout.Description;
        end
        else
            Error(('Please select a layout to continue...'));
    end;
    procedure getDimensionName(dimCode: Code[20]; dsid: Integer): Text var
        dse: Record "Dimension Set Entry";
        dv: Record "Dimension Value";
    begin
        if(dse.Get(dsid, dimCode))then if not dv.Get(dse."Dimension Code", dse."Dimension Value Code")then exit(StrSubstNo('not found %1 %2', dimCode, dsid));
        exit(dv.Name);
    end;
    var// Prepayment: Boolean;
    // Layout: Record "Custom Report Layout";
    [InDataSet]
    ReportName: Text[100];
}
