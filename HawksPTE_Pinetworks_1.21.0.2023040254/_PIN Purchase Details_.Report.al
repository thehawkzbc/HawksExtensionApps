report 50150 "PIN Purchase Details"
{
    RDLCLayout = 'PIN_Purchase_Details.rdl';
    DefaultLayout = RDLC;
    // DataAccessIntent = ReadOnly;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Purchase Line Details';
    UseRequestPage = true;

    dataset
    {
        dataitem(PurchaseHeader; "Purchase Header")
        {
            PrintOnlyIfDetail = true;

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
                trigger OnPreDataItem()
                begin
                    if PrePayments then pline.SetFilter("Prepmt. Amount Inv. (LCY)", '<>0');
                end;
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(PresetFilters)
                {
                    Caption = 'Preset Filters';

                    field(Prepayment; PrePayments)
                    {
                        Caption = 'Prepayment Details';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Prepayment Details field.';
                    }
                }
            }
        }
        actions
        {
        }
    }
    var PrePayments: Boolean;
}
