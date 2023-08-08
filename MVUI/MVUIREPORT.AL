report 60051 "PIN Item Charges - Breakdown1"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ItemChargesBreakdown.rdlc';
    AdditionalSearchTerms = 'fee transportation freight handling landed cost specification';
    ApplicationArea = Basic, Suite;
    Caption = 'Item Charges - Breakdown';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            dataitem("Value Entry"; "Value Entry")
            {
                column(companyname; CompanyName)
                {

                }
                column(todayformatted; "today")
                {

                }
                column(Cost_per_Unit; "Cost per Unit")
                {

                }
                column(Cost_Amount__Actual___ACY_; "Cost Amount (Actual) (ACY)")
                {

                }
                column(Item_Ledger_Entry_Quantity; "Item Ledger Entry Quantity")
                {

                }
                column(reporttitle; Reporttitle1)
                {

                }
                column(valueentrycaption; valueentrycaption)
                {

                }
                column(SourceTypePurch; SourceTypePurch)
                {

                }
                column(ValueEntryPostingDate; ValueEntryPostingDate)
                {

                }
                column(ValueEntryDocNo; ValueEntryDocNo)
                {

                }
                column(ValueEntrySourceType; ValueEntrySourceType)
                {

                }
                column(ValueEntrySourceNo; ValueEntrySourceNo)
                {

                }
                column(ValueEntryQuantity; ValueEntryQuantity)
                {

                }
                column(ValueEntryItemNo; ValueEntryItemNo)
                {

                }
                column(ValueEntryFilter; ValueEntryFilter)
                {

                }
                column(ItemChargeNo_ValueEntry; "Item Charge No.")
                {

                }
                column(Inventory_Posting_Group; "Inventory Posting Group")
                {

                }
                column(ValueEntryPostingDate1; ValueEntryPostingDate)
                {

                }
                column(ValueEntryDocNo1; ValueEntryDocNo)
                {

                }
                column(ValueEntrySourceType1; ValueEntrySourceType)
                {

                }
                column(ValueEntrySourceNo1; ValueEntrySourceNo)
                {

                }
                column(ValueEntryQuantity1; ValueEntryQuantity)
                {

                }
                column(CostAmtActual_ValueEntry; "Cost Amount (Actual)")
                {

                }

                column(ValueEntryItemNo1; ValueEntryItemNo)
                {

                }
                //vikas
                //column(lot)
                // {

                // }

                column(PrintDetailsBool; PrintDetailsBool)
                {

                }
                column(salesamtactualvalueentry; "Sales Amount (Actual)")
                {

                }

                column(GroupSubtotaItemNo; GroupSubtotaItemNo)
                {

                }
                column(ValEntyCostAmtActSalesAct; ValEntyCostAmtActSalesAct)
                {

                }
                column(ItemDescription; ItemDescription)
                {

                }

                column(SubTotalInvPostingGroup; SubTotalInvPostingGroup)
                {

                }

                column(GroupTotalItemChargeNo; GroupTotalItemChargeNo)
                {

                }

                column(InvPostingGrp_ValueEntry; InvPostingGrp_ValueEntry)
                {

                }

                column(CurrReportPageNoCaption; CurrReportPageNoCaption)
                {

                }

                column(ValueEntryCostAmtActlCptn; ValueEntryCostAmtActlCptn)
                {

                }

                column(TotalCaption; TotalCaption)
                {

                }
                dataitem("Item Charge"; "Item Charge")
                {
                    column(ItemChargeDesc_ValueEntry; ItemChargeDesc_ValueEntry)
                    {

                    }
                }
            }

        }

    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(PrintDetails; PrintDetails)
                    {

                    }
                }
            }
        }
    }


    procedure InitializeRequest(NewPrintDetails: Boolean; NewSourceType: Option)
    begin
    end;

    var
        Item: Record Item;
        Text000Lbl: Label 'text000lbl';
        Text001Lbl: Label 'text001lbl';
        Text003Lbl: Label 'text003lbl';
        Text004Lbl: Label 'text004lbl';
        Text005Lbl: Label 'text0005bl';
        Text006Lbl: Label 'text006lbl';
        PrintDetailsBool: Boolean;
        ReportTitle: Text;
        ValueEntryFilter: Text;
        ValueEntryItemNo: Text;
        ValueEntryPostingDate: Text;
        ValueEntryDocNo: Text;
        ValueEntrySourceType: Text;
        ValueEntrySourceNo: Text;
        ValueEntryQuantity: Text;
        ItemDescription: Text[100];
        SourceType: Option;
        SourceTypePurch: Boolean;
        CurrReportPageNoCaptionLbl: Label 'currreportpagenocaptionlbl';
        ValueEntryCostAmtActlCptnLbl: Label 'valueentrycostamtactlcptnlbl';
        TotalCaptionLbl: Label 'totalcaptionlbl';
        //vikas
        Reporttitle1: Text[20];
        valueentrycaption: Label 'Text valueentrycaption';
        SubTotalInvPostingGroup: Code[20];
        GroupTotalItemChargeNo: code[20];
        InvPostingGrp_ValueEntry: Code[30];
        CurrReportPageNoCaption: Code[30];
        ValueEntryCostAmtActlCptn: Decimal;
        TotalCaption: Label 'Text Total Caption';
        GroupSubtotaItemNo: Code[10];
        ValEntyCostAmtActSalesAct: Decimal;
        ItemChargeDesc_ValueEntry: Code[20];
        PrintDetails: Code[50];

}

report 60052 "PIN Inventory - CustomerSales"
{
    ApplicationArea = All;
    Caption = 'PIN Inventory Customer Sales';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(ReportHeader; Integer)
        {
            column(CompanyName; Companyname)
            {

            }
            column(PeriodText; PeriodText)

            {

            }
            column(ItemFilter; ItemFilter)
            {

            }
            column(ItemLedgEntryFilter; ItemLedgEntryFilter)
            {

            }

        }
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            column(Base_Unit_of_Measure; "Base Unit of Measure")
            {

            }
            dataitem("Item Ledger Entry"; "Item Ledger Entry")

            {
                dataitem(Integer; Integer)
                {


                    column(Source_No_; SourceNo)
                    {

                    }
                    column(CustName; CustName)
                    {

                    }
                    column(Invoiced_Quantity; InvQty)

                    {

                    }
                    column(Sales_Amount__Actual_; SalesAmtActual)
                    {

                    }
                    column(profit; profit)
                    {

                    }
                    column(Discountamount; DiscountAmount)
                    {

                    }
                }
            }
        }

    }



    var

        ValueEntryBuf: Record "Value Entry";
        TempValueEntryBuf: Record "Value Entry" temporary;
        PeriodInfoLbl: Label '';
        PeriodText: Text;
        ItemFilter: Text;
        ItemLedgEntryFilter: Text;
        LastItemLedgEntryNo: Integer;
        ReportLineNo: Integer;
        //vikas
        SourceNo: code[30];
        CustName: Text[30];
        InvQty: Decimal;
        SalesAmtActual: Decimal;
        Profit: Decimal;
        DiscountAmount: Decimal;




}

report 60102 "PIN Purchase MultiReport"
{
    ApplicationArea = All;
    Caption = 'Purch. Details Multi Report';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            column(A__Rcd__Not_Inv__Ex__VAT__LCY_; "A. Rcd. Not Inv. Ex. VAT (LCY)")
            {

            }
            column(Amount; Amount)
            {

            }
            column(Amount_Including_VAT; "Amount Including VAT")
            {

            }
            column(Amt__Rcd__Not_Invoiced__LCY_; "Amt. Rcd. Not Invoiced (LCY)")
            {

            }
            column(Applies_to_Doc__No_; "Applies-to Doc. No.")
            {

            }
            column(Applies_to_Doc__Type; "Applies-to Doc. Type")
            {

            }
            column(Applies_to_ID; "Applies-to ID")
            {

            }
            column("Area"; "Area")
            {

            }
            column(Assigned_User_ID; "Assigned User ID")
            {

            }
            column(Bal__Account_No_; "Bal. Account No.")
            {

            }
            column(Bal__Account_Type; "Bal. Account Type")
            {

            }
            column(Buy_from_Address; "Buy-from Address")
            {

            }
            column(Buy_from_Address_2; "Buy-from Address 2")
            {

            }
            column(Buy_from_City; "Buy-from City")
            {

            }
            column(Buy_from_Contact; "Buy-from Contact")
            {

            }
            column(Buy_from_Contact_No_; "Buy-from Contact No.")
            {

            }
            column(Buy_from_Country_Region_Code; "Buy-from Country/Region Code")
            {

            }
            column(Buy_from_County; "Buy-from County")
            {

            }
            column(Buy_from_IC_Partner_Code; "Buy-from IC Partner Code")
            {

            }
            column(Buy_from_Post_Code; "Buy-from Post Code")
            {

            }
            column(Buy_from_Vendor_Name_2; "Buy-from Vendor Name 2")
            {

            }
            column(Campaign_No_; "Campaign No.")
            {

            }
            column(Comment; Comment)
            {

            }
            column(Completely_Received; "Completely Received")
            {

            }
            column(Compress_Prepayment; "Compress Prepayment")
            {

            }
            column(Correction; Correction)
            {

            }
            column(Creditor_No_; "Creditor No.")
            {

            }
            column(Currency_Code; "Currency Code")
            {

            }
            column(Currency_Factor; "Currency Factor")
            {

            }
            column(Date_Filter; "Date Filter")
            {

            }
            column(Dimension_Set_ID; "Dimension Set ID")
            {

            }
            column(Doc__No__Occurrence; "Doc. No. Occurrence")
            {

            }
            column(Due_Date; "Due Date")
            {

            }
            column(Entry_Point; "Entry Point")
            {

            }
            column(Expected_Receipt_Date; "Expected Receipt Date")
            {

            }
            column(IC_Direction; "IC Direction")
            {

            }
            column(IC_Status; "IC Status")
            {

            }
            column(Inbound_Whse__Handling_Time; "Inbound Whse. Handling Time")
            {

            }
            column(Incoming_Document_Entry_No_; "Incoming Document Entry No.")
            {

            }
            column(Invoice; Invoice)
            {

            }
            column(Invoice_Disc__Code; "Invoice Disc. Code")
            {

            }
            column(Invoice_Discount_Amount; "Invoice Discount Amount")
            {

            }
            column(Invoice_Discount_Calculation; "Invoice Discount Calculation")
            {

            }
            column(Invoice_Discount_Value; "Invoice Discount Value")
            {

            }
            column(Job_Queue_Entry_ID; "Job Queue Entry ID")
            {

            }
            column(Job_Queue_Status; "Job Queue Status")
            {

            }
            column(Language_Code; "Language Code")
            {

            }
            column(Last_Posting_No_; "Last Posting No.")
            {

            }
            column(Last_Prepayment_No_; "Last Prepayment No.")
            {

            }
            column(Last_Prepmt__Cr__Memo_No_; "Last Prepmt. Cr. Memo No.")
            {

            }
            column(Last_Receiving_No_; "Last Receiving No.")
            {

            }
            column(Last_Return_Shipment_No_; "Last Return Shipment No.")
            {

            }
            column(Lead_Time_Calculation; "Lead Time Calculation")
            {

            }
            column(Location_Code; "Location Code")
            {

            }
            column(Location_Filter; "Location Filter")
            {

            }
            column(No__of_Archived_Versions; "No. of Archived Versions")
            {

            }
            column(No__Printed; "No. Printed")
            {

            }
            column(No__Series; "No. Series")
            {

            }
            column(On_Hold; "On Hold")
            {

            }
            column(Order_Address_Code; "Order Address Code")
            {

            }
            column(Order_Class; "Order Class")
            {

            }
            column(Order_Date; "Order Date")
            {

            }
            column(Partially_Invoiced; "Partially Invoiced")
            {

            }
            column(Payment_Discount__; "Payment Discount %")
            {

            }
            column(Payment_Method_Code; "Payment Method Code")
            {

            }
            column(Payment_Reference; "Payment Reference")
            {

            }
            column(Payment_Terms_Code; "Payment Terms Code")
            {

            }
            column(Pay_to_Address; "Pay-to Address")
            {

            }
            column(Pay_to_Address_2; "Pay-to Address 2")
            {

            }
            column(Pay_to_City; "Pay-to City")
            {

            }
            column(Pay_to_Contact; "Pay-to Contact")
            {

            }
            column(Pay_to_Contact_No_; "Pay-to Contact No.")
            {

            }
            column(Pay_to_Country_Region_Code; "Pay-to Country/Region Code")
            {

            }
            column(Pay_to_County; "Pay-to County")
            {

            }
            column(Pay_to_IC_Partner_Code; "Pay-to IC Partner Code")
            {

            }
            column(Pay_to_Name; "Pay-to Name")
            {

            }
            column(Pay_to_Name_2; "Pay-to Name 2")
            {

            }
            column(Pay_to_Post_Code; "Pay-to Post Code")
            {

            }
            column(Pay_to_Vendor_No_; "Pay-to Vendor No.")
            {

            }
            column(Pmt__Discount_Date; "Pmt. Discount Date")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Posting_Description; "Posting Description")
            {

            }
            column(Posting_from_Whse__Ref_; "Posting from Whse. Ref.")
            {

            }
            column(Posting_No_; "Posting No.")
            {

            }
            column(Posting_No__Series; "Posting No. Series")
            {

            }
            column(Prepayment__; "Prepayment %")
            {

            }
            column(Prepayment_Due_Date; "Prepayment Due Date")
            {

            }
            column(Prepayment_No_; "Prepayment No.")
            {

            }
            column(Prepayment_No__Series; "Prepayment No. Series")
            {

            }
            column(Prepmt__Cr__Memo_No_; "Prepmt. Cr. Memo No.")
            {

            }
            column(Prepmt__Cr__Memo_No__Series; "Prepmt. Cr. Memo No. Series")
            {

            }
            column(Prepmt__Payment_Discount__; "Prepmt. Payment Discount %")
            {

            }
            column(Prepmt__Payment_Terms_Code; "Prepmt. Payment Terms Code")
            {

            }
            column(Prepmt__Pmt__Discount_Date; "Prepmt. Pmt. Discount Date")
            {

            }
            column(Prepmt__Posting_Description; "Prepmt. Posting Description")
            {

            }
            column(Price_Calculation_Method; "Price Calculation Method")
            {

            }
            column(Prices_Including_VAT; "Prices Including VAT")
            {

            }
            column(Print_Posted_Documents; "Print Posted Documents")
            {

            }
            column(Promised_Receipt_Date; "Promised Receipt Date")
            {

            }
            column(Purchaser_Code; "Purchaser Code")
            {

            }
            column(Quote_No_; "Quote No.")
            {

            }
            column(Reason_Code; "Reason Code")
            {

            }
            column(Recalculate_Invoice_Disc_; "Recalculate Invoice Disc.")
            {

            }
            column(Receive; Receive)
            {

            }
            column(Receiving_No_; "Receiving No.")
            {

            }
            column(Receiving_No__Series; "Receiving No. Series")
            {

            }
            column(Requested_Receipt_Date; "Requested Receipt Date")
            {

            }
            column(Responsibility_Center; "Responsibility Center")
            {

            }
            column(Return_Shipment_No_; "Return Shipment No.")
            {

            }
            column(Return_Shipment_No__Series; "Return Shipment No. Series")
            {

            }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {

            }
            column(Send_IC_Document; "Send IC Document")
            {

            }
            column(Ship; Ship)
            {

            }
            column(Shipment_Method_Code; "Shipment Method Code")
            {

            }
            column(Ship_to_Address; "Ship-to Address")
            {

            }
            column(Ship_to_Address_2; "Ship-to Address 2")
            {

            }
            column(Ship_to_City; "Ship-to City")
            {

            }
            column(Ship_to_Code; "Ship-to Code")
            {

            }
            column(Ship_to_Contact; "Ship-to Contact")
            {

            }
            column(Ship_to_Country_Region_Code; "Ship-to Country/Region Code")
            {

            }
            column(Ship_to_County; "Ship-to County")
            {

            }
            column(Ship_to_Name; "Ship-to Name")
            {

            }
            column(Ship_to_Name_2; "Ship-to Name 2")
            {

            }
            column(Ship_to_Post_Code; "Ship-to Post Code")
            {

            }
            column(Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code")
            {

            }
            column(Shortcut_Dimension_2_Code; "Shortcut Dimension 2 Code")
            {

            }
            column(Tax_Area_Code; "Tax Area Code")
            {

            }
            column(Tax_Liable; "Tax Liable")
            {

            }
            column(Transaction_Specification; "Transaction Specification")
            {

            }
            column(Transaction_Type; "Transaction Type")
            {

            }
            column(Transport_Method; "Transport Method")
            {

            }
            column(VAT_Base_Discount__; "VAT Base Discount %")
            {

            }
            column(VAT_Bus__Posting_Group; "VAT Bus. Posting Group")
            {

            }
            column(VAT_Country_Region_Code; "VAT Country/Region Code")
            {

            }
            column(VAT_Registration_No_; "VAT Registration No.")
            {

            }
            column(Vendor_Authorization_No_; "Vendor Authorization No.")
            {

            }
            column(Vendor_Cr__Memo_No_; "Vendor Cr. Memo No.")
            {

            }
            column(Vendor_Invoice_No_; "Vendor Invoice No.")
            {

            }
            column(Vendor_Order_No_; "Vendor Order No.")
            {

            }
            column(Vendor_Posting_Group; "Vendor Posting Group")
            {

            }
            column(Vendor_Shipment_No_; "Vendor Shipment No.")
            {

            }
            column(Your_Reference; "Your Reference")
            {

            }
            column(Document_Type; "Document Type")
            {

            }
            column(Document_Date; "Document Date")
            {

            }
            column(No; "No.")
            {

            }
            column(Buy_from_Vendor_No_; "Buy-from Vendor No.")
            {

            }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {

            }
            column(Gen__Bus__Posting_Group; "Gen. Bus. Posting Group")
            {

            }
            column(Pending_Approvals; "Pending Approvals")
            {

            }
            column(Status; Status)
            {

            }
            column(reportname; "Pay-to Name")
            {


            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                column(Type; Type)
                {

                }
                column(No_; "No.")
                {

                }
                column(LocationCode; "Location Code")
                {

                }
                column(ExpectedReceipt_Date; "Expected Receipt Date")
                {

                }
                column(Description; Description)
                {

                }
                column(Prepmt__Amt__Inv_; "Prepmt. Amt. Inv.")
                {

                }
                column(Prepmt_Amt_Deducted; "Prepmt Amt Deducted")
                {

                }
                column(Prepmt__Line_Amount; "Prepmt. Line Amount")
                {

                }
                column(Prepmt__Amount_Inv___LCY_; "Prepmt. Amount Inv. (LCY)")
                {

                }
                column(Prepmt_Amt_to_Deduct; "Prepmt Amt to Deduct")
                {

                }
                column(Unit_of_Measure; "Unit of Measure")
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Outstanding_Quantity; "Outstanding Quantity")
                {

                }
                column(Qty__to_Invoice; "Qty. to Invoice")
                {

                }
                column(Qty__to_Receive; "Qty. to Receive")
                {

                }
                column(Unit_Cost; "Unit Cost")
                {

                }
                column(Unit_Cost__LCY_; "Unit Cost (LCY)")
                {

                }
                column(Amount_Including_VAT1; "Amount Including VAT")
                {

                }
                column(Shortcut_Dimension_1Code; "Shortcut Dimension 1 Code")
                {

                }
                column(Quantity_Received; "Quantity Received")
                {

                }
                column(VAT_Prod__Posting_Group; "VAT Prod. Posting Group")
                {

                }
                column(CurrencyCode; "Currency Code")
                {

                }
                column(OrderDate; "Order Date")
                {

                }
                column(A__Rcd_Not_Inv__Ex__VAT__LCY_; "A. Rcd. Not Inv. Ex. VAT (LCY)")
                {

                }
                column(Allow_Invoice_Disc_; "Allow Invoice Disc.")
                {

                }
                column(Allow_Item_Charge_Assignment; "Allow Item Charge Assignment")
                {

                }

                column(Amount1; Amount)
                {

                }
                column(Amt__Rcd__Not_Invoiced; "Amt. Rcd. Not Invoiced")
                {

                }
                column(Amt__Rcd__NotInvoiced__LCY_; "Amt. Rcd. Not Invoiced (LCY)")
                {

                }
                column(Appl__to_Item_Entry; "Appl.-to Item Entry")
                {

                }
                column("Area1"; "Area")
                {

                }
                column(Attached_Doc_Count; "Attached Doc Count")
                {

                }
                column(Attached_to_Line_No_; "Attached to Line No.")
                {

                }
                column(Bin_Code; "Bin Code")
                {

                }
                column(Blanket_Order_Line_No_; "Blanket Order Line No.")
                {

                }
                column(Blanket_Order_No_; "Blanket Order No.")
                {

                }
                column(Budgeted_FA_No_; "Budgeted FA No.")
                {

                }
                column(Buyfrom_Vendor_No_; "Buy-from Vendor No.")
                {

                }
                column(CompletelyReceived; "Completely Received")
                {

                }
                column(Copied_From_Posted_Doc_; "Copied From Posted Doc.")
                {

                }
                column(Cross_Reference_No_; "No.")
                {

                }
                column(Cross_Reference_Type; Type)
                {

                }
                column(Cross_Reference_Type_No_; Type)
                {

                }
                column(Deferral_Code; "Deferral Code")
                {

                }
                column(Depr__Acquisition_Cost; "Depr. Acquisition Cost")
                {

                }
                column(Depr__until_FA_Posting_Date; "Depr. until FA Posting Date")
                {

                }
                column(Depreciation_Book_Code; "Depreciation Book Code")
                {

                }
                column(Description_2; "Description 2")
                {

                }
                column(Dimension_SetID; "Dimension Set ID")
                {

                }
                column(Direct_Unit_Cost; "Direct Unit Cost")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(DocumentType; "Document Type")
                {

                }
                column(Drop_Shipment; "Drop Shipment")
                {

                }
                column(Duplicate_in_Depreciation_Book; "Duplicate in Depreciation Book")
                {

                }
                column(EntryPoint; "Entry Point")
                {

                }
                column(FA_Posting_Date; "FA Posting Date")
                {

                }
                column(FA_Posting_Type; "FA Posting Type")
                {

                }
                column(Finished; Finished)
                {

                }
                column(Gen_Bus__Posting_Group; "Gen. Bus. Posting Group")
                {

                }
                column(Gen__Prod__Posting_Group; "Gen. Prod. Posting Group")
                {

                }
                column(Gross_Weight; "Gross Weight")
                {

                }
                column(IC_Partner_Code; "IC Partner Code")
                {

                }
                column(IC_Partner_Ref__Type; "IC Partner Ref. Type")
                {

                }
                column(IC_Partner_Reference; "IC Partner Reference")
                {

                }
                column(InboundWhse_Handling_Time; "Inbound Whse. Handling Time")
                {

                }
                column(Indirect_Cost__; "Indirect Cost %")
                {

                }
                column(Insurance_No_; "Insurance No.")
                {

                }
                column(Inv__Disc__Amount_to_Invoice; "Inv. Disc. Amount to Invoice")
                {

                }
                column(Inv__Discount_Amount; "Inv. Discount Amount")
                {

                }
                column(Item_Category_Code; "Item Category Code")
                {

                }
                column(Job_Currency_Code; "Job Currency Code")
                {

                }
                column(Job_Currency_Factor; "Job Currency Factor")
                {

                }
                column(Job_Line_Amount; "Job Line Amount")
                {

                }
                column(Job_Line_Amount__LCY_; "Job Line Amount (LCY)")
                {

                }
                column(Job_Line_Discount__; "Job Line Discount %")
                {

                }
                column(Job_Line_Disc__Amount__LCY_; "Job Line Disc. Amount (LCY)")
                {

                }
                column(Job_Line_Type; "Job Line Type")
                {

                }
                column(Job_No_; "Job No.")
                {

                }
                column(Job_Planning_Line_No_; "Job Planning Line No.")
                {

                }
                column(Job_Remaining_Qty_; "Job Remaining Qty.")
                {

                }
                column(Job_Remaining_Qty___Base_; "Job Remaining Qty. (Base)")
                {

                }
                column(Job_Task_No_; "Job Task No.")
                {

                }
                column(Job_Total_Price; "Job Total Price")
                {

                }
                column(Job_Total_Price__LCY_; "Job Total Price (LCY)")
                {

                }
                column(Job_Unit_Price; "Job Unit Price")
                {

                }
                column(Job_Unit_Price__LCY_; "Job Unit Price (LCY)")
                {

                }
                column(Lead_TimeCalculation; "Lead Time Calculation")
                {

                }
                column(Line_Amount; "Line Amount")
                {

                }
                column(Line_Discount__; "Line Discount %")
                {

                }
                column(Line_Discount_Amount; "Line Discount Amount")
                {

                }
                column(Line_No_; "Line No.")
                {

                }
                column(Maintenance_Code; "Maintenance Code")
                {

                }
                column(MPS_Order; "MPS Order")
                {

                }
                column(Net_Weight; "Net Weight")
                {

                }
                column(Nonstock; Nonstock)
                {

                }
                column(Operation_No_; "Operation No.")
                {

                }
                column(Order_Line_No_; "Order Line No.")
                {

                }
                column(Order_No_; "Order No.")
                {

                }
                column(Outstanding_Amount; "Outstanding Amount")
                {

                }
                column(Outstanding_Amount__LCY_; "Outstanding Amount (LCY)")
                {

                }
                column(Outstanding_Amt__Ex__VAT__LCY_; "Outstanding Amt. Ex. VAT (LCY)")
                {

                }
                column(Whse__Outstanding_Qty___Base_; "Whse. Outstanding Qty. (Base)")
                {

                }
                column(Overhead_Rate; "Overhead Rate")
                {

                }
                column(Over_Receipt_Approval_Status; "Over-Receipt Approval Status")
                {

                }
                column(Over_Receipt_Code; "Over-Receipt Code")
                {

                }
                column(Over_Receipt_Quantity; "Over-Receipt Quantity")
                {

                }
                column(Payto_Vendor_No_; "Pay-to Vendor No.")
                {

                }
                column(Planned_Receipt_Date; "Planned Receipt Date")
                {

                }
                column(Planning_Flexibility; "Planning Flexibility")
                {

                }
                column(Pmt__Discount_Amount; "Pmt. Discount Amount")
                {

                }
                column(Posting_Group; "Posting Group")
                {

                }
                column(Prepayment; "Prepayment %")
                {

                }
                column(PrepaymentAmount1; "Prepayment Amount")
                {

                }
                column(Prepayment_Line; "Prepayment Line")
                {

                }
                column(Prepayment_Tax_Area_Code; "Prepayment Tax Area Code")
                {

                }
                column(Prepayment_Tax_Group_Code; "Prepayment Tax Group Code")
                {

                }
                column(Prepayment_Tax_Liable; "Prepayment Tax Liable")
                {

                }
                column(Prepayment_VAT__; "Prepayment VAT %")
                {

                }
                column(Prepayment_VAT_Difference; "Prepayment VAT Difference")
                {

                }
                column(Prepayment_VAT_Identifier; "Prepayment VAT Identifier")
                {

                }
                column(Prepmt_VAT_Diff__Deducted; "Prepmt VAT Diff. Deducted")
                {

                }
                column(Prepmt_VAT_Diff__to_Deduct; "Prepmt VAT Diff. to Deduct")
                {

                }
                column(Prepmt__Amount_Inv__Incl__VAT; "Prepmt. Amount Inv. Incl. VAT")
                {

                }
                column(Prepmt__Amt__Incl__VAT; "Prepmt. Amt. Incl. VAT")
                {

                }
                column(Prepmt__VAT_Base_Amt_; "Prepmt. VAT Base Amt.")
                {

                }
                column(Prepmt__VAT_Calc__Type; "Prepmt. VAT Calc. Type")
                {

                }
                column(Price_CalculationMethod; "Price Calculation Method")
                {

                }
                column(Prod__Order_Line_No_; "Prod. Order Line No.")
                {

                }
                column(Prod__Order_No_; "Prod. Order No.")
                {

                }
                column(Profit__; "Profit %")
                {

                }
                column(PromisedReceipt_Date; "Promised Receipt Date")
                {

                }
                column(Purchasing_Code; "Purchasing Code")
                {

                }
                column(Qty__Assigned; "Qty. Assigned")
                {

                }
                column(Qty__Invoiced__Base_; "Qty. Invoiced (Base)")
                {

                }
                column(Qty__per_Unit_of_Measure; "Qty. per Unit of Measure")
                {

                }
                column(Qty__Rcd__Not_Invoiced; "Qty. Rcd. Not Invoiced")
                {

                }
                column(Qty__Rcd__Not_Invoiced__Base_; "Qty. Rcd. Not Invoiced (Base)")
                {

                }
                column(Qty__Received__Base_; "Qty. Received (Base)")
                {

                }
                column(Qty__to_Assign; "Qty. to Assign")
                {

                }
                column(Qty__to_Invoice__Base_; "Qty. to Invoice (Base)")
                {

                }
                column(Qty__to_Receive__Base_; "Qty. to Receive (Base)")
                {

                }
                column(Quantity__Base_; "Quantity (Base)")
                {

                }
                column(Quantity_Invoiced; "Quantity Invoiced")
                {

                }
                column(RecalculateInvoice_Disc_; "Recalculate Invoice Disc.")
                {

                }
                column(Receipt_Line_No_; "Receipt Line No.")
                {

                }
                column(Receipt_No_; "Receipt No.")
                {

                }
                column(RequestedReceipt_Date; "Requested Receipt Date")
                {

                }
                column(Reserved_Qty___Base_; "Reserved Qty. (Base)")
                {

                }
                column(Reserved_Quantity; "Reserved Quantity")
                {

                }
                column(ResponsibilityCenter; "Responsibility Center")
                {

                }
                column(Ret__Qty__Shpd_Not_Invd__Base_; "Ret. Qty. Shpd Not Invd.(Base)")
                {

                }
                column(Return_Qty__Shipped; "Return Qty. Shipped")
                {

                }
                column(Return_Qty__Shipped__Base_; "Return Qty. Shipped (Base)")
                {

                }
                column(Return_Qty__Shipped_Not_Invd_; "Return Qty. Shipped Not Invd.")
                {

                }
                column(Return_Qty__to_Ship; "Return Qty. to Ship")
                {

                }
                column(Return_Qty__to_Ship__Base_; "Return Qty. to Ship (Base)")
                {

                }
                column(Return_Reason_Code; "Return Reason Code")
                {

                }
                column(Return_Shipment_Line_No_; "Return Shipment Line No.")
                {

                }
                column(ReturnShipment_No_; "Return Shipment No.")
                {

                }
                column(Return_Shpd__Not_Invd_; "Return Shpd. Not Invd.")
                {

                }
                column(Return_Shpd__Not_Invd___LCY_; "Return Shpd. Not Invd. (LCY)")
                {

                }
                column(Returns_Deferral_Start_Date; "Returns Deferral Start Date")
                {

                }
                column(Routing_No_; "Routing No.")
                {

                }
                column(Routing_Reference_No_; "Routing Reference No.")
                {

                }
                column(Safety_Lead_Time; "Safety Lead Time")
                {

                }
                column(Sales_Order_Line_No_; "Sales Order Line No.")
                {

                }
                column(Sales_Order_No_; "Sales Order No.")
                {

                }
                column(Salvage_Value; "Salvage Value")
                {

                }
                column(ShortcutDimension_2_Code; "Shortcut Dimension 2 Code")
                {

                }
                column(Special_Order; "Special Order")
                {

                }
                column(Special_Order_Sales_Line_No_; "Special Order Sales Line No.")
                {

                }
                column(SalesOrder_No_; "Sales Order No.")
                {

                }
                column(Subtype; Subtype)
                {

                }
                column(System_Created_Entry; "System-Created Entry")
                {

                }
                column(TaxArea_Code; "Tax Area Code")
                {

                }
                column(Tax_Group_Code; "Tax Group Code")
                {

                }
                column(TaxLiable; "Tax Liable")
                {

                }
                column(TransactionSpecification; "Transaction Specification")
                {

                }
                column(TransactionType; "Transaction Type")
                {

                }
                column(TransportMethod; "Transport Method")
                {

                }
                column(Unit_of_Measure__Cross_Ref__; "Unit of Measure")
                {

                }
                column(Unit_of_Measure_Code; "Unit of Measure Code")
                {

                }
                column(Unit_Price__LCY_; "Unit Price (LCY)")
                {

                }
                column(Unit_Volume; "Unit Volume")
                {

                }
                column(Units_per_Parcel; "Units per Parcel")
                {

                }
                column(Use_Duplication_List; "Use Duplication List")
                {

                }
                column(Use_Tax; "Use Tax")
                {

                }
                column(Variant_Code; "Variant Code")
                {

                }
                column(VAT__; "VAT %")
                {

                }
                column(VAT_Base_Amount; "VAT Base Amount")
                {

                }
                column(VAT_Bus_Posting_Group; "VAT Bus. Posting Group")
                {

                }
                column(VAT_Calculation_Type; "VAT Calculation Type")
                {

                }
                column(VAT_Difference; "VAT Difference")
                {

                }
                column(VAT_Identifier; "VAT Identifier")
                {

                }
                column(Vendor_Item_No_; "Vendor Item No.")
                {

                }
                column(WhseOutstanding_Qty___Base_; "Whse. Outstanding Qty. (Base)")
                {

                }
                column(Work_Center_No_; "Work Center No.")
                {

                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                field(layoutctl; layoutctl)
                {

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
    var
        ReportName: Text[100];
        NotFoundOneAndTwoMsg: Label 'text is lable';
        //vikas
        layoutctl: Code[30];

    procedure getDimensionName(dimCode: Code[20]; dsid: Integer): Text
    begin
    end;
}

report 60103 "PIN OpenPurchaseOrders1"
{
    DefaultLayout = RDLC;
    ApplicationArea = All;
    Caption = 'Open Purchase Orders';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            column(showdetails; ShowDetails)
            {

            }
            column(No_; "No.")
            {

            }
            column(Order_Date; "Order Date")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(VendorName; VendorName)
            {

            }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {

            }
            column(Location_Code; "Location Code")
            {

            }
            column(Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code")
            {

            }
            column(Status; Status)
            {

            }
            column(SystemCreatedBy; SystemCreatedBy)
            {

            }
            column(Currency_Code; "Currency Code")
            {

            }
            column(Amount_Including_VAT; "Amount Including VAT")
            {

            }
            column(Vendor_Shipment_No_; "Vendor Shipment No.")
            {

            }
            column(Completely_Received; "Completely Received")
            {

            }
            column(Promised_Receipt_Date; "Promised Receipt Date")
            {

            }
            column(Expected_Receipt_Date; "Expected Receipt Date")
            {

            }
            column(Transaction_Type; "Transaction Type")
            {

            }
            column(Prepayment__; "Prepayment %")
            {

            }
            dataitem("Purchase Line"; "Purchase Line")
            {

                column(LocationCode; "Location Code")
                {

                }
                column(Type; Type)
                {

                }
                column(No; "No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Amount; Amount)
                {

                }
                column(AmountIncluding_VAT; "Amount Including VAT")
                {

                }
                column(Quantity_Received; "Quantity Received")
                {

                }
                column(Quantity_Invoiced; "Quantity Invoiced")
                {

                }
                column(Planned_Receipt_Date; "Planned Receipt Date")
                {

                }

                column(VAT_Prod__Posting_Group; "VAT Prod. Posting Group")
                {

                }

                column(Gen__Prod__Posting_Group; "Gen. Prod. Posting Group")
                {

                }
                column(Gen__Bus__Posting_Group; "Gen. Bus. Posting Group")
                {

                }
                column(Posting_Group; "Posting Group")
                {

                }
                column(Dimension_Set_ID; "Dimension Set ID")
                {

                }
                column(ShortcutDimension_1_Code; "Shortcut Dimension 1 Code")
                {

                }
                column(Shortcut_Dimension_2_Code; "Shortcut Dimension 2 Code")
                {

                }
                column(Shortcut_Dimension_3_Code; "Shortcut Dimension 2 Code")
                {

                }
                column(Shortcut_Dimension_4_Code; "Shortcut Dimension 2 Code")
                {

                }
                column(Shortcut_Dimension_5_Code; "Shortcut Dimension 2 Code")
                {

                }
                column(Shortcut_Dimension_6_Code; "Shortcut Dimension 2 Code")
                {

                }
                column(Shortcut_Dimension_7_Code; "Shortcut Dimension 2 Code")
                {

                }
                column(Shortcut_Dimension_8_Code; "Shortcut Dimension 2 Code")
                {

                }
            }
            dataitem("Purch. Rcpt. Header"; "Purch. Rcpt. Header")
            {
                column(No1; "No.")
                {

                }
                column(User_ID; "User ID")
                {

                }
                column(PostingDate; "Posting Date")
                {

                }
            }
            dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
            {
                column(No_3; "No.")
                {

                }
                column(User_ID1; "User ID")
                {

                }
                column(Amount_IncludingVAT; "Amount Including VAT")
                {

                }
                column(PostingDate1; "Posting Date")
                {

                }
                column(Vendor_Invoice_No_; "Vendor Invoice No.")
                {

                }
                dataitem("Vendor Ledger Entry"; "Vendor Ledger Entry")
                {
                    dataitem("Detailed Vendor Ledg. Entry"; "Detailed Vendor Ledg. Entry")
                    {
                        dataitem("Vendor Ledger Entry1"; "Vendor Ledger Entry")
                        {
                            column(Document_No_; "Document No.")
                            {

                            }
                            column(PostingDate3; "Posting Date")
                            {

                            }
                            column(Payment_Reference; "Payment Reference")
                            {

                            }
                            column(External_Document_No_; "External Document No.")
                            {

                            }
                            column(User_ID3; "User ID")
                            {

                            }
                        }
                    }
                }
            }


        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(ShowDetails; ShowDetails)
                    {

                    }
                }
            }
        }
    }
    var
        PINetworksBase: Codeunit "PINetworks Base";
        ShowDetails: Boolean;
        Dimensions: array[8] of Code[20];
        //vikas
        VendorName: text[50];


}

report 60104 "PIN Match Bank Entries1"
{
    Caption = 'Match Bank Entries';
    ProcessingOnly = false;
    dataset
    {
        dataitem("Bank Acc. Reconciliation"; "Bank Acc. Reconciliation")
        {

        }

    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(control3)
                {
                    field(DateRange; DateRange)
                    {

                    }
                }
            }

        }
    }
    var
        DateRange: Integer;
        BankRecon: Codeunit "PIN Match Bank Rec. Lines";

}

report 60120 "G/L Voucher1"
{
    DefaultLayout = RDLC;
    RDLCLayout = './build/report/GLVoucher.rdlc';
    ApplicationArea = Basic, Suite;
    Caption = 'G/L Voucher';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("G/L Register"; "G/L Register")
        {
            column(Journal_Batch_Name; "Journal Batch Name")
            {

            }
            column(cretedusername; cretedusername)
            {

            }
            column(modifiedusername; modifiedusername)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(ccompanyname; companyname)
            {

            }
            column(showlines; showlines)
            {

            }
            column(GLRegFilter; GLRegFilter)
            {

            }
            column(glregister_tablecaption_glregfilter; GLRegFilter)
            {

            }
            column(G_L_Register__No__CaptionLbl; G_L_Register__No__CaptionLbl)
            {

            }
            column(glregisterno; glregisterno)
            {

            }
            column(CurrReport_PAGENOCaptionLbl; CurrReport_PAGENOCaptionLbl)
            {

            }
            column(G_L_Entry__Posting_Date_CaptionLbl; G_L_Entry__Posting_Date_CaptionLbl)
            {

            }
            column(G_L_Entry__Document_Type_CaptionLbl; G_L_Entry__Document_Type_CaptionLbl)
            {

            }
            column(glentrydocumentnocaption; glentrydocumentnocaption)
            {

            }
            column(glentryglaccountnocaption; glentryglaccountnocaption)
            {

            }
            column(GLAcc_NameCaptionLbl; GLAcc_NameCaptionLbl)
            {

            }
            column(G_L_Entry_DescriptionCaption; glengtrydescriptioncaption)
            {

            }
            column(G_L_Entry__VAT_Amount_Caption; glentryvatamountcaption)
            {

            }
            column(G_L_Entry__Gen__Posting_Type_Caption; glentrygenpostingtype)
            {

            }
            column(G_L_Entry__Gen__Bus__Posting_Group_CaptionLbl; G_L_Entry__Gen__Bus__Posting_Group_CaptionLbl)
            {

            }
            column(G_L_Entry__Gen__Prod__Posting_Group_CaptionLbl; G_L_Entry__Gen__Prod__Posting_Group_CaptionLbl)
            {

            }
            column(G_L_Entry_Amount_Control41CaptionLbl; G_L_Entry_Amount_Control41CaptionLbl)
            {

            }
            column(G_L_Entry_AmountCaption; glentryamountcaption)
            {

            }
            column(G_L_Register__No_CaptionLbl; G_L_Register__No__CaptionLbl)
            {

            }
            column(TotalCaptionLbl; TotalCaptionLbl)
            {

            }
            column(PIN_Created_User_Designation; pincreateduserdesignation)
            {

            }
            column(PIN_Modified_User_Designation; pinmodifieduserdesignation)
            {

            }
            dataitem("G/L Entry"; "G/L Entry")
            {
                column(External_Document_No_; "External Document No.")
                {

                }
                column(G_L_Entry__Posting_Date; G_L_Entry__Posting_Date_CaptionLbl)
                {

                }
                column(G_L_Entry__Document_Type; G_L_Entry__Document_Type_CaptionLbl)
                {

                }
                column(G_L_Entry__Document_no; G_L_Entry__Document_Type_CaptionLbl)
                {

                }
                column(G_L_Account_Name; "G/L Account Name")
                {

                }
                column(G_L_Entry_Description; glengtrydescriptioncaption)
                {

                }
                column(G_L_Entry__VAT_Amount_; glentryvatamountcaption)
                {

                }
                column(G_L_Entry__Gen__Bus__Posting_Group; G_L_Entry__Gen__Bus__Posting_Group_CaptionLbl)
                {

                }
                column(G_L_Entry__Gen__Posting_Type; G_L_Entry__Gen__Posting_Type_CaptionLbl)
                {

                }
                column(G_L_Entry__Gen__Prod__Posting_Group_; G_L_Entry__Posting_Date_CaptionLbl)
                {

                }
                column(G_L_Entry_Amount; G_L_Entry_Amount_Control41CaptionLbl)
                {

                }
                column(Entry_No_; "Entry No.")
                {

                }
                column(G_L_Entry_Amount_Control41; G_L_Entry_Amount_Control41CaptionLbl)
                {

                }
                column(G_L_Entry_Amount_Control41CaptionLbl1; G_L_Entry_Amount_Control41CaptionLbl)
                {

                }
                column(PIN_Shortcut_Dim_Code_1; pincreateduserdesignation)
                {

                }
                column(PIN_Shortcut_Dim_Code_2; pincreateduserdesignation)
                {

                }
                dataitem("Purch. Inv. Line"; "Purch. Inv. Line")
                {
                    column(Description; Description)
                    {

                    }
                    column(Amount; Amount)
                    {

                    }
                    column(Document_No_; "Document No.")
                    {

                    }
                    column(Line_No_; "Line No.")
                    {

                    }
                    column(Line_No_1; "Line No.")
                    {

                    }
                }
                dataitem("Posted Approval Entry"; "Posted Approval Entry")
                {
                    column(Approver_ID; "Approver ID")
                    {
                    }
                    column(Sequence_No_; "Sequence No.")
                    {
                    }
                    column(Last_Date_Time_Modified; "Last Date-Time Modified")
                    {
                    }
                    column(Last_Modified_By_ID; "Last Modified By ID")
                    {
                    }
                    column(LastModifiedByIdFullName; modifiedusername)
                    {
                    }
                    column(Approval_Code; "Approval Code")
                    {
                    }
                    column(Date_Time_Sent_for_Approval; "Date-Time Sent for Approval")
                    {
                    }
                    column(Approval_Status; "Approval Code")
                    {
                    }
                    column(Approver_Designation; "Approval Code")
                    {

                    }
                    column(CreatedUserName; "Number of Approved Requests")
                    {

                    }
                    column(CreatedDateTime; "Date-Time Sent for Approval")
                    {

                    }

                }

            }



        }


    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(control3)
                {
                    field(ShowDetails; ShowDetails)
                    {

                    }

                }
            }
        }
    }
    var

        GLAcc: Record "G/L Account";
        GLRegFilter: Text;
        G_L_RegisterCaptionLbl: Label 'the text is label';
        CurrReport_PAGENOCaptionLbl: Label 'the text is label';
        G_L_Entry__Posting_Date_CaptionLbl: Label 'the text is label';
        G_L_Entry__Document_Type_CaptionLbl: Label 'the text is label';
        GLAcc_NameCaptionLbl: Label 'the text is label';
        G_L_Entry__Gen__Posting_Type_CaptionLbl: Label 'the text is label';
        G_L_Entry__Gen__Bus__Posting_Group_CaptionLbl: Label 'the text is label';
        G_L_Entry__Gen__Prod__Posting_Group_CaptionLbl: Label 'the text is label';

        G_L_Register__No__CaptionLbl: Label 'the text is label';
        TotalCaptionLbl: Label 'the text is label';
        G_L_Entry_Amount_Control41CaptionLbl: Label 'v';
        ShowDetails: Boolean;
        DetailedVATAmount: Decimal;
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        //vikas
        cretedusername: text[50];
        modifiedusername: text[20];
        showlines: code[20];
        glregisterno: code[20];
        glentrydocumentnocaption: text[50];
        glentryglaccountnocaption: text[50];
        glengtrydescriptioncaption: text[50];
        glentryvatamountcaption: text[50];
        glentrygenpostingtype: code[20];
        glentryamountcaption: text[20];
        pincreateduserdesignation: text[50];
        pinmodifieduserdesignation: text[50];
}

report 60121 "PIN Vendor - Payment Receipt1"
{
    DefaultLayout = RDLC;
    RDLCLayout = './build/report/PINVendorPaymentReceipt.rdlc';
    Caption = 'Payment Voucher';
    ApplicationArea = Basic, Suite;
    UsageCategory = Documents;
    dataset
    {
        dataitem("Vendor Ledger Entry"; "Vendor Ledger Entry")
        {
            column(Journal_Batch_Name; "Journal Batch Name")
            {

            }
            column(RemainingAmount; RemainingAmount)
            {

            }
            column(PIN_Shortcut_Dim_Code_1; "Source Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Reason Code")
            {

            }
            column(PIN_Created_User_Designation; "User ID")
            {

            }
            column(PIN_Modified_User_Designation; SystemModifiedAt)
            {

            }
            column(CretedUserName; ApprovedUserName)
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            dataitem(PageLoop; integer)
            {
                column(VLedescription; PaymentDiscountTitle)
                {

                }
                column(VendAddr6; VendAddr)
                {

                }
                column(VendAddr7; VendAddr)
                {

                }
                column(VendAddr8; VendAddr)
                {

                }
                column(VendAddr4; VendAddr)
                {

                }
                column(VendAddr5; VendAddr)
                {

                }
                column(VendAddr3; VendAddr)
                {

                }
                column(VendAddr2; VendAddr)
                {

                }
                column(VendAddr1; VendAddr)
                {

                }
                column(VendNo_VendLedgEntry; VendNoVendLedgEntry)
                {

                }
                column(DocDate_VendLedgEntry; DocDateVendLedgEntry)

                {

                }
                column(CompanyAddr1; CompanyAddr)
                {

                }
                column(CompanyAddr2; CompanyAddr)
                {

                }
                column(CompanyAddr3; CompanyAddr)
                {

                }
                column(CompanyAddr4; CompanyAddr)
                {

                }
                column(CompanyAddr5; CompanyAddr)
                {

                }
                column(CompanyAddr6; CompanyAddr)
                {

                }
                column(phoneno; CompanyInfoPhoneNoCaptionLbl)
                {

                }
                column(HomePage; HomePage)
                {

                }
                column(Email; Email)
                {

                }
                column(VatRegistrationNo; CompanyInfoVATRegNoCaptionLbl)
                {

                }
                column(Griono; CompanyInfoGiroNoCaptionLbl)
                {

                }
                column(BankName; CompanyInfoBankNameCaptionLbl)
                {

                }
                column(BankAccountno; RecipientBankAccountNo)
                {

                }
                column(ReportTitle; ReportTitle)
                {

                }
                column(DocNoVendledgentry; NegShowAmountVendLedgEntry1)
                {

                }
                column(PaymentDiscountTitle; PaymentDiscountTitle)
                {

                }
                column(CompanyInfoBankNameCaptionLbl; CompanyInfoBankNameCaptionLbl)
                {

                }
                column(CompanyInfoGiroNoCaptionLbl; CompanyInfoGiroNoCaptionLbl)
                {

                }
                column(CompanyInfoPhoneNoCaptionLbl; CompanyInfoPhoneNoCaptionLbl)
                {

                }
                column(CompanyInfoBankAccNoCaptionLbl; CompanyInfoBankAccNoCaptionLbl)
                {

                }
                column(RcptNoCaptionLbl; RcptNoCaptionLbl)
                {

                }
                column(CompanyInfoVATRegNoCaptionLbl; CompanyInfoVATRegNoCaptionLbl)
                {

                }
                column(PostingDateCaptionLbl; PostingDateCaptionLbl)
                {

                }
                column(AmtCaptionLbl; AmtCaptionLbl)
                {

                }
                column(PymtAmtSpecCaptionLbl; PymtAmtSpecCaptionLbl)
                {

                }
                column(PymtTolInvCurrCaptionLbl; PymtTolInvCurrCaptionLbl)
                {

                }
                column(RecipientBankAccountName; RecipientBankAccountName)
                {

                }
                column(RecipientBankAccountNo; RecipientBankAccountNo)
                {

                }
                column(PaymentAccountName; PaymentAccountName)
                {

                }
                column(PaymentAccountNo; PaymentAccountNo)
                {

                }
                column(ApprovedUserName; ApprovedUserName)
                {

                }
                column(ApprovedUserName2; ApprovedUserName2)
                {

                }
                column(ApprovedDateTime; ApprovedDateTime)
                {

                }
                column(ApprovedDateTime2; ApprovedDateTime2)
                {

                }
                dataitem("Detailed Vendor Ledg. Entry"; "Detailed Vendor Ledg. Entry")
                {
                    column(Applied_Vend__Ledger_Entry_No_; "Applied Vend. Ledger Entry No.")
                    {

                    }
                }
                dataitem("Detailed Vendor Ledg. Entry1"; "Detailed Vendor Ledg. Entry")
                {
                    column(VLENo_DtldVendLedgEntry; "Vendor Ledger Entry No.")
                    {


                    }
                    dataitem("Vendor Ledger Entry2"; "Vendor Ledger Entry")
                    {
                        column(NegAppliedAmt; NegPmtDiscInvCurrVendLedgEntry1)
                        {

                        }
                        column(Description; Description)
                        {

                        }
                        column(Document_No_; "Document No.")
                        {

                        }
                        column(Document_Type; "Document Type")
                        {

                        }
                        column(Posting_Date; "Posting Date")
                        {

                        }
                        column(Currency_Code; "Currency Code")
                        {

                        }
                        column(NegPmtDiscInvCurrVendLedgEntry1; NegPmtDiscInvCurrVendLedgEntry1)
                        {

                        }
                        column(NegPmtTolInvCurrVendLedgEntry1; NegPmtTolInvCurrVendLedgEntry1)
                        {

                        }
                        column(RemainingAmount1; RemainingAmount)
                        {

                        }
                        column(CreatedUserName2; ApprovedUserName)
                        {

                        }
                        column(CreatedDateTime2; ApprovedDateTime)
                        {

                        }
                    }

                }
                dataitem(Total; Integer)
                {
                    column(NegRemainingAmt; NegRemainingAmt)
                    {

                    }
                    column(CurrCode_VendLedgEntry; Currcode)
                    {

                    }
                    column(NegOriginalAmt_VendLedgEntry; NegRemainingAmt)
                    {

                    }
                    column(ExtDocNo_VendLedgEntry; ExternalDocNoCaptionLbl)
                    {

                    }
                    column(PymtAmtNotAllocatedCaption; PymtAmtCaptionLbl)
                    {

                    }
                    column(PymtAmtNotAllocatedCaptionLbl; PymtAmtNotAllocatedCaptionLbl)
                    {

                    }
                    column(PymtAmtCaptionLbl; PymtAmtCaptionLbl)
                    {

                    }
                    column(ExternalDocNoCaptionLbl; ExternalDocNoCaptionLbl)
                    {

                    }
                }
                dataitem("Posted Approval Entry"; "Posted Approval Entry")
                {
                    column(Approver_ID; "Approver ID")
                    {

                    }
                    column(Sequence_No_; "Sequence No.")
                    {

                    }
                    column(Last_Date_Time_Modified; "Last Date-Time Modified")
                    {

                    }
                    column(Last_Modified_By_ID; "Last Modified By ID")
                    {

                    }
                    column(Approval_Code; "Approval Code")
                    {

                    }
                    column(Date_Time_Sent_for_Approval; "Date-Time Sent for Approval")
                    {

                    }
                    column(approvalstatus; "Approval Code")
                    {

                    }
                    column(approver_Designation; "Approval Code")
                    {

                    }
                }
            }
        }
    }
    var
        CompanyInfo: Record "Company Information";
        GLSetup: Record "General Ledger Setup";
        Vend: Record Vendor;
        Currency: Record Currency;
        vba: Record "Vendor Bank Account";
        PaymentBankAccount: Record "Bank Account";
        PaymentGLAccount: Record "G/L Account";
        approval: Record "Posted Approval Entry";
        FormatAddr: Codeunit "Format Address";
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        ReportTitle: Text[30];
        PaymentDiscountTitle: Text[30];
        CompanyAddr1: array[8] of Text[100];
        CompanyAddr: text[100];


        VendAddr1: array[8] of Text[100];
        VendAddr: Text[100];
        RemainingAmount: Decimal;
        AppliedAmount: Decimal;
        NegPmtDiscInvCurrVendLedgEntry1: Decimal;
        NegPmtTolInvCurrVendLedgEntry1: Decimal;
        PmtDiscPmtCurr: Decimal;
        Text003Lbl: Label 'the text is label';
        Text004Lbl: Label 'the text is label';
        Text006Lbl: Label 'the text is label';
        Text007Lbl: Label 'the text is label';
        PmtTolPmtCurr: Decimal;
        NegShowAmountVendLedgEntry1: Decimal;
        CompanyInfoPhoneNoCaptionLbl: Label 'the text is label';
        CompanyInfoGiroNoCaptionLbl: Label 'the text is label';
        CompanyInfoBankNameCaptionLbl: Label 'the text is label';
        CompanyInfoBankAccNoCaptionLbl: Label 'the text is label';
        RcptNoCaptionLbl: Label 'the text is label';
        CompanyInfoVATRegNoCaptionLbl: Label 'the text is label';
        PostingDateCaptionLbl: Label 'the text is label';
        AmtCaptionLbl: Label 'the text is label';
        PymtAmtSpecCaptionLbl: Label 'the text is label';
        PymtTolInvCurrCaptionLbl: Label 'the text is label';
        PymtAmtNotAllocatedCaptionLbl: Label 'the text is label';
        PymtAmtCaptionLbl: Label 'the text is label';
        ExternalDocNoCaptionLbl: Label 'the text is label';
        RecipientBankAccountName: Text[255];
        RecipientBankAccountNo: Text[30];
        PaymentAccountName: Text[255];
        PaymentAccountNo: Text[100];
        ApprovedUserName: Text[255];
        ApprovedUserName2: Text[255];
        ApprovedDateTime: DateTime;
        ApprovedDateTime2: DateTime;
        //vikas
        HomePage: text[20];
        Email: Code[20];
        VendNoVendLedgEntry: Text[50];
        DocDateVendLedgEntry: Text[50];
        NegRemainingAmt: Code[20];
        Currcode: Code[20];





}

report 60122 "PIN - Order1"
{
    DefaultLayout = RDLC;
    RDLCLayout = './build/report/PINOrder.rdlc';
    Caption = 'Purchase Order';
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            column(Creted_user_Name; "Ship-to Name")
            {

            }
            column(Modified_user_Name; "Ship-to Name")
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(Document_Type; "Document Type")
            {

            }
            column(No_; "No.")
            {

            }
            column(AmountCaption; Amount)
            {

            }
            column(PurchLineInvDiscAmtCaptio; "Purchaser Code")
            {

            }
            column(SubtotalCaption; SubtotalCaptionLbl)
            {

            }
            column(VATAmtLineVATCaption; VATAmtLineVATAmtCaptionLbl)
            {

            }
            column(VATAmtLineVATAmtCaptionLbl; VATAmtLineVATAmtCaptionLbl)
            {

            }
            column(VATAmtSpecCaptionLbl; VATAmtSpecCaptionLbl)
            {

            }
            column(VATIdentifierCaptionLbl; VATIdentifierCaptionLbl)
            {

            }
            column(VATAmtLineInvDiscBaseAmtCaptionLbl; VATAmtLineInvDiscBaseAmtCaptionLbl)
            {

            }
            column(VATAmtLineLineAmtCaptionLbl; VATAmtLineLineAmtCaptionLbl)
            {

            }
            column(VALVATBaseLCYCaptionLbl; VALVATBaseLCYCaptionLbl)
            {

            }
            column(TotalCaptionLbl; TotalCaptionLbl)
            {

            }
            column(PaymentTermsDescCaptionLbl; PaymentTermsDescCaptionLbl)
            {

            }
            column(ShipmentMethodDescCaptionLbl; ShipmentMethodDescCaptionLbl)
            {

            }
            column(PrepymtTermsDescCaptionLbl; PrepymtTermsDescCaptionLbl)
            {

            }
            column(HomePageCaptionLbl; HomePageCaptionLbl)
            {

            }
            column(EmailIDCaptionLbl; EmailIDCaptionLbl)
            {

            }
            column(AllowInvoiceDiscCaptionLbl; AllowInvoiceDiscCaptionLbl)
            {

            }
            column(Vendor_Order_No_; "Vendor Order No.")
            {

            }
            column(Vendor_Shipment_No_; "Vendor Shipment No.")
            {

            }
            column(Transaction_Type; "Transaction Type")
            {

            }
        }
        dataitem(CopyLoop; Integer)
        {
            dataitem(PageLoop; Integer)
            {
                column(ReportTitleCopyText; Text004)
                {

                }
                column(CompanyAddr1; CompanyAddr)
                {

                }
                column(CompanyAddr2; CompanyAddr)
                {

                }
                column(CompanyAddr3; CompanyAddr)
                {

                }
                column(CompanyAddr4; CompanyAddr)
                {

                }
                column(CompanyInfoPhoneNo; CompanyInfoPhoneNoCaptionLbl)
                {

                }
                column(CompanyInfoFaxNo; CompanyInfoPhoneNoCaptionLbl)
                {

                }
                column(CompanyInfoVATRegNo; CompanyInfoVATRegNoCaptionLbl)
                {

                }
                column(companyinfogirono; CompanyInfoGiroNoCaptionLbl)
                {

                }
                column(CompanyInfoBankName; CompanyInfoBankNameCaptionLbl)
                {

                }
                column(CompanyInfoBankAccNo; CompanyInfoBankAccNoCaptionLbl)
                {

                }
                column(DocumentDate; DocumentDateCaptionLbl)
                {

                }
                column(VATNoText; VATNoText)
                {

                }
                column(VATRegNo_PurchHeader; CompanyInfoVATRegNoCaptionLbl)
                {

                }
                column(PurchaserText; PurchaserText)
                {

                }
                column(SalesPurchPerson; ShiptoAddressCaptionLbl)
                {

                }
                column(ReferenceText; ReferenceText)
                {

                }
                column(YourRef_PurchHeader; ReferenceText)
                {

                }
                column(CompanyAddr5; CompanyAddr)
                {

                }
                column(CompanyAddr6; CompanyAddr)
                {

                }
                column(BuyFrmVendNo_PurchHeader; BuyFromAddr)
                {

                }
                column(BuyFromAddr1; BuyFromAddr)
                {

                }
                column(BuyFromAddr2; BuyFromAddr)
                {

                }
                column(BuyFromAddr3; BuyFromAddr)
                {

                }
                column(BuyFromAddr4; BuyFromAddr)
                {

                }
                column(BuyFromAddr5; BuyFromAddr)
                {

                }
                column(BuyFromAddr6; BuyFromAddr)
                {

                }
                column(BuyFromAddr7; BuyFromAddr)
                {

                }
                column(BuyFromAddr8; BuyFromAddr)
                {

                }
                column(PricesInclVAT_PurchHeader; PricesInclVATtxt)
                {

                }
                column(OutputNo; OutputNo)
                {

                }
                column(VATBaseDisc_PurchHeader; VATBaseAmount)
                {

                }
                column(PricesInclVATtxt; PricesInclVATtxt)
                {

                }
                column(PaymentTermsDesc; Text004)
                {

                }
                column(ShipmentMethodDesc; Text007)
                {

                }
                column(PrepmtPaymentTermsDesc; Text008)
                {

                }
                column(ShowInternalInfo; ShowInternalInfo)
                {

                }
                column(TotalText; TotalText)
                {

                }
                column(DimText; DimText)
                {

                }
                column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                {

                }
                column(CompanyInfoVATRegNoCaption; CompanyInfoVATRegNoCaptionLbl)
                {

                }
                column(CompanyInfoGiroNoCaption; CompanyInfoGiroNoCaptionLbl)
                {

                }
                column(CompanyInfoBankNameCaption; CompanyInfoBankNameCaptionLbl)
                {

                }
                column(CompanyInfoBankAccNoCaption; CompanyInfoBankAccNoCaptionLbl)
                {

                }
                column(OrderNoCaptionLbl; OrderNoCaptionLbl)
                {

                }
                column(PageCaption; PageCaptionLbl)
                {

                }
                column(DocumentDateCaption; DocumentDateCaptionLbl)
                {

                }
                column(BuyFrmVendNo_PurchHeaderCaption; BuyFromAddr)
                {

                }
                column(PricesInclVAT_PurchHeaderCaption; PricesInclVATtxt)
                {

                }
                dataitem(DimensionLoop1; Integer)
                {
                    column(HdrDimCaptionLbl; HdrDimCaptionLbl)
                    {

                    }
                }
                dataitem("Purchase Line"; "Purchase Line")
                {

                }
                dataitem(RoundLoop; Integer)
                {
                    column(LineAmt_PurchLine; VATAmtLineLineAmtCaptionLbl)
                    {

                    }
                    column(LineNo_PurchLine; PrepmtLoopLineNo)
                    {

                    }
                    column(AllowInvDisctxt; AllowInvDisctxt)
                    {

                    }
                    column(Type_PurchLine; type)
                    {

                    }
                    column(No_PurchLine; NoOfCopies)
                    {

                    }
                    column(Desc_PurchLine; PrepmtInvBuDescCaptionLbl)
                    {

                    }
                    column(Qty_PurchLine; qty)
                    {

                    }
                    column(UOM_PurchLine; uom)
                    {

                    }
                    column(DirectUniCostCaptionLbl; DirectUniCostCaptionLbl)
                    {

                    }
                    column(LineDimCaptionLbl; LineDimCaptionLbl)
                    {

                    }
                    column(LineAmt2_PurchLine; VATAmtLineLineAmtCaptionLbl)
                    {

                    }
                    column(AllowInvDisctxt1; AllowInvDisctxt)
                    {

                    }
                    column(homePage; HomePageCaptionLbl)
                    {

                    }
                    column(email; EmailIDCaptionLbl)
                    {

                    }
                    column(VATIdentifier; VATIdentifierCaptionLbl)
                    {

                    }
                    column(InvDiscAmt_PurchLine; AllowInvDisctxt)
                    {

                    }
                    column(TotalInclVATText; TotalInclVATText)
                    {

                    }
                    column(totalinclvat; TotalInclVATText)
                    {

                    }
                    column(vatamountText; Text004)
                    {

                    }
                    column(VATAmount; VATAmount)
                    {

                    }
                    column(TotalExclVATText; TotalExclVATText)
                    {

                    }
                    column(VATDiscountAmount; VATDiscountAmount)
                    {

                    }
                    column(VATBaseAmount; VATBaseAmount)
                    {

                    }
                    column(TotalAmountInclVAT; TotalAmountInclVAT)
                    {

                    }
                    column(TotalSubTotal; TotalSubTotal)
                    {

                    }
                    column(TotalInvoiceDiscountAmount; TotalInvoiceDiscountAmount)
                    {

                    }
                    column(TotalAmount; TotalAmount)
                    {

                    }
                    column(DirectUniCostCaption; DirectUniCostCaptionLbl)
                    {

                    }
                    column(PurchLineLineDiscCaptionLbl; PurchLineLineDiscCaptionLbl)
                    {

                    }
                    column(VATDiscountAmountCaption; VATDiscountAmountCaptionLbl)
                    {

                    }
                    column(No_PurchLineCaption; NoOfCopies)
                    {

                    }
                    column(Desc_PurchLineCaption; PrepymtTermsDescCaptionLbl)
                    {

                    }
                    column(Qty_PurchLineCaption; qty)
                    {

                    }
                    column(UOM_PurchLineCaption; uom)
                    {

                    }
                    column(VATIdentifier_PurchLineCaption; VATIdentifierCaptionLbl)
                    {

                    }
                    dataitem(DimensionLoop2; Integer)
                    {
                        column(LineDimCaption; LineDimCaptionLbl)
                        {

                        }
                    }
                }

                dataitem(VATCounter; Integer)
                {
                    column(VATAmtLineVATBase; VATAmtLineInvDiscBaseAmtCaptionLbl)
                    {

                    }
                    column(vatlinevatamt; VATAmtLineVATAmtCaptionLbl)
                    {

                    }
                    column(VATAmtLineLineAmt; VATAmtLineLineAmtCaptionLbl)
                    {

                    }
                    column(VATAmtLineInvDiscBaseAmt; VATAmtLineInvDiscBaseAmtCaptionLbl)
                    {

                    }
                    column(VATAmtLineInvDiscAmt; VATAmtLineInvDiscBaseAmtCaptionLbl)
                    {

                    }
                    column(VATAmtLineVATAmt; VATAmtLineVATAmtCaptionLbl)
                    {

                    }
                    column(vatamtlinevatidentifier; VATAmtLineVATCaptionLbl)
                    {

                    }
                }
                dataitem(VATCounterLCY; Integer)
                {
                    column(VALExchRate; VALExchRate)
                    {

                    }
                    column(VALSpecLCYHeader; VALSpecLCYHeader)
                    {

                    }
                    column(VALVATAmountLCY; VALVATAmountLCY)
                    {

                    }
                    column(VALVATBaseLCY; VALVATBaseLCY)
                    {

                    }
                }
                dataitem(Total2; Integer)
                {
                    column(PayToVendNo_PurchHeader; PrepymtTermsDescCaptionLbl)
                    {

                    }
                    column(VendAddr8; VendAddr)
                    {

                    }
                    column(VendAddr7; VendAddr)
                    {

                    }
                    column(VendAddr6; VendAddr)
                    {

                    }
                    column(VendAddr5; VendAddr)
                    {

                    }
                    column(VendAddr4; VendAddr)
                    {

                    }
                    column(VendAddr3; VendAddr)
                    {

                    }
                    column(VendAddr2; VendAddr)
                    {

                    }
                    column(VendAddr1; VendAddr)
                    {

                    }
                    column(PaymentDetailsCaptionLbl; PaymentDetailsCaptionLbl)
                    {

                    }
                    column(VendNoCaptionLbl; VendNoCaptionLbl)
                    {

                    }
                }
                dataitem(Total3; Integer)
                {
                    column(SellToCustNo_PurchHeader; selltocustno)
                    {

                    }
                    column(ShipToAddr1; ShipToAddr)
                    {

                    }
                    column(ShipToAddr2; ShipToAddr)
                    {

                    }
                    column(ShipToAddr3; ShipToAddr)
                    {

                    }
                    column(ShipToAddr4; ShipToAddr)
                    {

                    }
                    column(ShipToAddr5; ShipToAddr)
                    {

                    }
                    column(ShipToAddr6; ShipToAddr)
                    {

                    }
                    column(ShipToAddr7; ShipToAddr)
                    {

                    }
                    column(ShipToAddr8; ShipToAddr)
                    {

                    }
                    column(ShiptoAddressCaptionLbl; ShiptoAddressCaptionLbl)
                    {

                    }
                    column(SellToCustNo_PurchHeaderCaption; selltocustno)
                    {

                    }
                }
                dataitem(PrepmtLoop; Integer)
                {
                    column(PrepmtLineAmount; PrepmtLineAmount)
                    {

                    }
                    column(TotalPrepmtLineAmount; TotalPrepmtLineAmount)
                    {

                    }
                    column(PrepmtInvBufGLAccNoCaptionLbl; PrepmtInvBufGLAccNoCaptionLbl)
                    {

                    }
                    column(PrepmtInvBuDescCaptionLbl; PrepmtInvBuDescCaptionLbl)
                    {

                    }
                    column(TotalInclVATText2; TotalInclVATText)
                    {

                    }
                    column(TotalExclVATText2; TotalExclVATText)
                    {

                    }
                    column(PrepmtInvBufAmt; PrepmtInvBuDescCaptionLbl)
                    {

                    }
                    column(prepmtvatamounttext; PrepmtVATAmount)
                    {

                    }
                    column(PrepmtVATAmount; PrepmtVATAmount)
                    {

                    }
                    column(PrepmtTotalAmountInclVAT; PrepmtTotalAmountInclVAT)
                    {

                    }
                    column(PrepmtVATBaseAmount; PrepmtVATBaseAmount)
                    {

                    }
                    column(prepmtinvbaseamount; PrepmtInvBuDescCaptionLbl)
                    {

                    }
                    column(PrepmtInvBufGLAccNoCaption; PrepmtInvBufGLAccNoCaptionLbl)
                    {

                    }
                    column(PrepaymentSpecCaptionLbl; PrepaymentSpecCaptionLbl)
                    {

                    }
                    column(PrepmtLoopLineNo; PrepmtLoopLineNo)
                    {

                    }
                }
                dataitem(PrepmtVATCounter; Integer)
                {
                    column(prepmtvatamlinevataamt; prepmtvatamlinevataamt)
                    {

                    }
                    column(prepmtvatamtlinevatabase; prepmtvatamtlinevatabase)
                    {

                    }
                    column(PrepmtVATAmtLineLineAmt; PrepmtVATAmtLineLineAmt)
                    {

                    }
                    column(PrepmtVATAmtLineVAT; PrepmtVATAmtLineVAT)
                    {

                    }
                    column(PrepmtVATAmtLineVATId; PrepmtVATAmtLineVATId)
                    {

                    }
                    column(PrepymtVATAmtSpecCaption; PrepymtVATAmtSpecCaption)
                    {

                    }
                }

            }
        }

    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Option)
                {

                    field(NoOfCopies; NoOfCopies)
                    {

                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {

                    }
                    field(ArchiveDocument; ArchiveDocument)
                    {

                    }
                    field(LogInteraction; LogInteraction)
                    {

                    }
                }
            }
        }
    }

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewArchiveDocument: Boolean; NewLogInteraction: Boolean)
    begin
    end;

    [IntegrationEvent(True, False)]
    local procedure OnAfterInitReport()
    begin
    end;

    [IntegrationEvent(True, False)]
    local procedure OnAfterPostDataItem(var PurchaseHeader: Record "Purchase Header")
    begin
    end;

    procedure GetFullName(userID: Guid): Text
    begin
    end;

    var
        selltocustno: code[50];
        Text004: Label ' the text is label';
        GLSetup: Record "General Ledger Setup";
        CompanyInfo: Record "Company Information";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PrepmtPaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        VATAmountLine: Record "VAT Amount Line" temporary;
        PrepmtVATAmountLine: Record "VAT Amount Line" temporary;
        PrePmtVATAmountLineDeduct: Record "VAT Amount Line" temporary;
        PurchLine: Record "Purchase Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        PrepmtDimSetEntry: Record "Dimension Set Entry";
        PrepmtInvBuf: Record "Prepayment Inv. Line Buffer" temporary;
        RespCenter: Record "Responsibility Center";
        CurrExchRate: Record "Currency Exchange Rate";
        PurchSetup: Record "Purchases & Payables Setup";
        Language: Codeunit Language;
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        PurchPost: Codeunit "Purch.-Post";
        ArchiveManagement: Codeunit ArchiveManagement;
        SegManagement: Codeunit SegManagement;
        PurchPostPrepmt: Codeunit "Purchase-Post Prepayments";
        VendAddr1: array[8] of Text[100];
        VendAddr: Text[100];

        ShipToAddr1: array[8] of Text[100];
        ShipToAddr: Text[100];

        CompanyAddr1: array[8] of Text[100];
        CompanyAddr: Text[100];

        BuyFromAddr1: array[8] of Text[100];
        BuyFromAddr: Text[100];

        PurchaserText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalInclVATText: Text[50];
        TotalExclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        OutputNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        Text007: Label 'the text is label';
        Text008: Label 'the text is label';
        Text009: Label 'the text is label';
        PrepmtVATAmount: Decimal;
        PrepmtVATBaseAmount: Decimal;
        PrepmtTotalAmountInclVAT: Decimal;
        PrepmtLineAmount: Decimal;
        PricesInclVATtxt: Text[30];
        AllowInvDisctxt: Text[30];
        ArchiveDocumentEnable: Boolean;
        LogInteractionEnable: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalInvoiceDiscountAmount: Decimal;
        CompanyInfoPhoneNoCaptionLbl: Label 'the text is label';
        CompanyInfoVATRegNoCaptionLbl: Label 'the text is label';
        CompanyInfoGiroNoCaptionLbl: Label 'the text is label';
        CompanyInfoBankNameCaptionLbl: Label 'the text is label';
        CompanyInfoBankAccNoCaptionLbl: Label 'the text is label';
        OrderNoCaptionLbl: Label 'the text is label';
        PageCaptionLbl: Label 'the text is label';
        DocumentDateCaptionLbl: Label 'the text is label';
        HdrDimCaptionLbl: Label 'the text is label';
        DirectUniCostCaptionLbl: Label 'the text is label';
        PurchLineLineDiscCaptionLbl: Label 'the text is label';
        VATDiscountAmountCaptionLbl: Label 'the text is label';
        LineDimCaptionLbl: Label 'the text is label';
        PaymentDetailsCaptionLbl: Label 'the text is label';
        VendNoCaptionLbl: Label 'the text is label';
        ShiptoAddressCaptionLbl: Label 'the text is label';
        PrepmtInvBuDescCaptionLbl: Label 'the text is label';
        PrepmtInvBufGLAccNoCaptionLbl: Label 'the text is label';
        PrepaymentSpecCaptionLbl: Label 'the text is label';
        PrepymtVATAmtSpecCaptionLbl: Label 'the text is label';
        AmountCaptionLbl: Label 'the text is label';
        PurchLineInvDiscAmtCaptionLbl: Label 'the text is label';
        SubtotalCaptionLbl: Label 'the text is label';
        VATAmtLineVATCaptionLbl: Label 'the text is label';
        VATAmtLineVATAmtCaptionLbl: Label 'the text is label';
        VATAmtSpecCaptionLbl: Label 'the text is label';
        VATIdentifierCaptionLbl: Label 'the text is label';
        VATAmtLineInvDiscBaseAmtCaptionLbl: Label 'the text is label';
        VATAmtLineLineAmtCaptionLbl: Label 'the text is label';
        VALVATBaseLCYCaptionLbl: Label 'the text is label';
        TotalCaptionLbl: Label 'the text is label';
        PaymentTermsDescCaptionLbl: Label 'the text is label';
        ShipmentMethodDescCaptionLbl: Label 'the text is label';
        PrepymtTermsDescCaptionLbl: Label 'the text is label';
        HomePageCaptionLbl: Label 'the text is label';
        EmailIDCaptionLbl: Label 'the text is label';
        AllowInvoiceDiscCaptionLbl: label 'the text is label';
        PrepmtLoopLineNo: Integer;
        TotalPrepmtLineAmount: Decimal;
        //vikas
        type: Option;
        qty: Code[20];
        uom: code[20];
        prepmtvatamlinevataamt: Code[20];
        prepmtvatamtlinevatabase: code[20];
        PrepmtVATAmtLineLineAmt: code[20];
        PrepmtVATAmtLineVAT: code[30];
        PrepmtVATAmtLineVATId: code[80];
        PrepymtVATAmtSpecCaption: text[50];

}

report 60123 "PIN Maldives Check1"
{
    DefaultLayout = RDLC;
    RDLCLayout = './build/report/MvCheck.rdlc';
    Caption = 'Check (Maldives)';
    Permissions = TableData "Bank Account" = m;
    dataset
    {
        dataitem(VoidGenJnlLine; "Gen. Journal Line")
        {

        }
        dataitem(GenJnlLine; "Gen. Journal Line")
        {
            column(Journal_Template_Name; "Journal Template Name")
            {

            }
            column(Journal_Batch_Name; "Journal Batch Name")
            {

            }
            column(Line_No_; "Line No.")
            {

            }
            column(Bank_Account_Bank; "Bank Account Bank")
            {

            }
            column(Account_No_; "Account No.")
            {

            }
            dataitem(CheckPages; Integer)
            {
                column(CheckToAddr1; CheckToAddr)
                {

                }
                column(CheckDateText; CheckDateText)
                {

                }
                column(CheckNoText; CheckNoText)
                {

                }
                column(FirstPage; FirstPage)
                {

                }
                column(PreprintedStub; PreprintedStub)
                {

                }
                column(CheckNoTextCaptionLbl; CheckNoTextCaptionLbl)
                {

                }
                dataitem(PrintSettledLoop; Integer)
                {
                    column(NetAmount; NetAmount)
                    {

                    }
                    column(TotalLineDiscountline; TotalLineDiscount)
                    {

                    }
                    column(TotalLineAmountLineamount; TotalLineAmount)
                    {

                    }
                    column(TotalLineAmountLINEAMOUNT2; TotalLineAmount)
                    {

                    }
                    column(LineAmount; LineAmount)
                    {

                    }
                    column(LineDiscount; LineDiscount)
                    {

                    }
                    column(lineamountlinediscount; LineAmount)
                    {

                    }
                    column(DocNo; DocNo)
                    {

                    }
                    column(DocDate; DocDate)
                    {

                    }
                    column(CurrencyCode2; CurrencyCode2)
                    {

                    }
                    column(CurrentLineAmount; CurrentLineAmount)
                    {

                    }
                    column(ExtDocNo; ExtDocNo)
                    {

                    }
                    column(LineAmountCaptionLbl; LineAmountCaptionLbl)
                    {

                    }
                    column(LineDiscountCaptionLbl; LineDiscountCaptionLbl)
                    {

                    }
                    column(AmountCaptionLbl; AmountCaptionLbl)
                    {

                    }
                    column(DocNoCaptionLbl; DocNoCaptionLbl)
                    {

                    }
                    column(DocDateCaptionLbl; DocDateCaptionLbl)
                    {

                    }
                    column(CurrencyCodeCaptionLbl; CurrencyCodeCaptionLbl)
                    {

                    }
                    column(YourDocNoCaptionLbl; YourDocNoCaptionLbl)
                    {

                    }
                    column(TransportCaptionLbl; TransportCaptionLbl)
                    {

                    }
                    column(PIN_BalancingType; BalancingType)
                    {

                    }


                }
                dataitem(PrintCheck; Integer)
                {
                    column(CheckAmountText; CheckAmountText)
                    {

                    }
                    column(CheckDateTextcontrol; CheckDateText)
                    {

                    }
                    column(DescriptionLine; DescriptionLine)
                    {

                    }
                    column(DescriptionLine2; DescriptionLine)
                    {

                    }
                    column(CheckToAddr01; CheckToAddr)
                    {

                    }
                    column(CheckToAddr2; CheckToAddr)
                    {

                    }
                    column(CheckToAddr3; CheckToAddr)
                    {

                    }
                    column(CheckToAddr4; CheckToAddr)
                    {

                    }
                    column(CheckToAddr5; CheckToAddr)
                    {

                    }
                    column(CompanyAddr01; CompanyAddr)
                    {

                    }
                    column(CompanyAddr2; CompanyAddr)
                    {

                    }
                    column(CompanyAddr3; CompanyAddr)
                    {

                    }
                    column(CompanyAddr4; CompanyAddr)
                    {

                    }
                    column(CompanyAddr5; CompanyAddr)
                    {

                    }
                    column(CompanyAddr6; CompanyAddr)
                    {

                    }
                    column(CheckNoText01; CheckNoText)
                    {

                    }
                    column(CompanyAddr7; CompanyAddr)
                    {

                    }
                    column(CompanyAddr8; CompanyAddr)
                    {

                    }
                    column(TotalLineAmount; TotalLineAmount)
                    {

                    }
                    column(TotalText; TotalText)
                    {

                    }
                    column(VoidText; VoidText)
                    {

                    }
                }

            }

        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field("Bank Account Bank"; "Bank Account Bank")
                    {


                    }
                    field(LastCheckNo; LineDiscountCaptionLbl)
                    {


                    }
                    field(OneCheckPrVendorpredocument; OneCheckPrVendor)
                    {


                    }
                    field(ReprintChecks; ReprintChecks)
                    {


                    }
                    field(TestPrinting; TestPrint)
                    {


                    }
                    field(PreprintedStub; PreprintedStub)
                    {


                    }
                }
            }
        }
    }

    var
        Text000: Label 'the text is label';
        Text001: Label 'the text is label';
        Text002: Label 'the text is label';
        Text003: Label 'the text is label';
        Text004: Label 'the text is label';
        Text005: Label 'the text is label';
        Text008: Label 'the text is label';
        Text010: Label 'the text is label';
        Text011: Label 'the text is label';
        Text012: Label 'the text is label';
        Text013: Label 'the text is label';
        Text014: Label 'the text is label';
        Text016: Label 'the text is label';
        Text019: Label 'the text is label';
        Text020: Label 'the text is label';
        Text021: Label 'the text is label';
        Text022: Label 'the text is label';
        Text023: Label 'the text is label';
        Text024: Label 'the text is label';
        Text025: Label 'the text is label';
        Text026: Label 'the text is label';
        Text027: Label 'the text is label';
        Text028: Label 'the text is label';
        Text029: Label 'the text is label';
        Text030: Label 'the text is label';
        Text031: Label 'the text is label';
        Text032: Label 'the text is label';
        Text033: Label 'the text is label';
        Text034: Label 'the text is label';
        Text035: Label 'the text is label';
        Text036: Label 'the text is label';
        Text037: Label 'the text is label';
        Text039: Label 'the text is label';
        Text040: Label 'the text is label';
        Text041: Label 'the text is label';
        Text042: Label 'the text is label';
        Text043: Label 'the text is label';
        Text044: Label 'the text is label';
        Text045: Label 'the text is label';
        Text046: Label 'the text is label';
        Text047: Label 'the text is label';
        Text048: Label 'the text is label';
        Text049: Label 'the text is label';
        Text050: Label 'the text is label';
        Text051: Label 'the text is label';
        Text052: Label 'the text is label';
        Text053: Label 'the text is label';
        Text054: Label 'the text is label';
        Text055: Label 'the text is label';
        Text056: Label 'the text is label';
        Text057: Label 'the text is label';
        Text058: Label 'the text is label';
        Text059: Label 'the text is label';
        Text060: Label 'the text is label';
        Text061: Label 'the text is label';
        CompanyInfo: Record "Company Information";
        CurrencyExchangeRate: Record "Currency Exchange Rate";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        GenJnlLine2: Record "Gen. Journal Line";
        GenJnlLine3: Record "Gen. Journal Line";
        Cust: Record Customer;
        CustLedgEntry: Record "Cust. Ledger Entry";
        Vend: Record Vendor;
        VendLedgEntry: Record "Vendor Ledger Entry";
        BankAcc: Record "Bank Account";
        BankAcc2: Record "Bank Account";
        CheckLedgEntry: Record "Check Ledger Entry";
        Currency: Record Currency;
        GLSetup: Record "General Ledger Setup";
        Employee: Record Employee;
        EmployeeLedgerEntry: Record "Employee Ledger Entry";
        FormatAddr: Codeunit "Format Address";
        CheckManagement: Codeunit CheckManagement;
        CompanyAddr1: array[8] of Text[100];
        CompanyAddr: Text[100];
        CheckToAddr1: array[8] of Text[100];
        CheckToAddr: Text[100];

        OnesText: array[20] of Text[30];
        TensText: array[10] of Text[30];
        ExponentText: array[5] of Text[30];
        BalancingType: Option;
        BalancingNo: Code[20];
        CheckNoText: Text[30];
        CheckDateText: Text[30];
        CheckAmountText: Text[30];
        DescriptionLine1: array[2] of Text[80];
        DescriptionLine: Text[80];
        DocNo: Text[30];
        ExtDocNo: Text[35];
        VoidText: Text[30];
        LineAmount: Decimal;
        LineDiscount: Decimal;
        TotalLineAmount: Decimal;
        TotalLineDiscount: Decimal;
        RemainingAmount: Decimal;
        CurrentLineAmount: Decimal;
        UseCheckNo: Code[20];
        FoundLast: Boolean;
        ReprintChecks: Boolean;
        TestPrint: Boolean;
        FirstPage: Boolean;
        OneCheckPrVendor: Boolean;
        FoundNegative: Boolean;
        AddedRemainingAmount: Boolean;
        ApplyMethod: Option;
        ChecksPrinted: Integer;
        HighestLineNo: Integer;
        PreprintedStub: Boolean;
        TotalText: Text[10];
        DocDate: Date;
        JournalPostingDate: Date;
        i: Integer;
        Text062: Label 'the text is label';
        CurrencyCode2: Code[10];
        NetAmount: Text[30];
        LineAmount2: Decimal;
        Text063: Label 'the text is label';
        Text064: Label 'the text is label';
        Text065: Label 'the text is label';
        CheckNoTextCaptionLbl: Label 'the text is label';
        LineAmountCaptionLbl: Label 'the text is label';
        LineDiscountCaptionLbl: Label 'the text is label';
        AmountCaptionLbl: Label 'the text is label';
        DocNoCaptionLbl: Label 'the text is label';
        DocDateCaptionLbl: Label 'the text is label';
        CurrencyCodeCaptionLbl: Label 'the text is label';
        YourDocNoCaptionLbl: Label 'the text is label';
        TransportCaptionLbl: Label 'the text is label';
        BlockedEmplForCheckErr: Label 'the text is label';
        AlreadyAppliedToEmployeeErr: Label 'the text is label';
        "Bank Account Bank": Code[20];

    procedure FormatNoText(var NoText: Text[80]; No: Decimal; CurrencyCode: Code[10])
    begin
    end;

    procedure InitTextVariable()
    begin
    end;

    procedure InitializeRequest(BankAcc: Code[20]; LastCheckNo: Code[20]; NewOneCheckPrVend: Boolean; NewReprintChecks: Boolean; NewTestPrint: Boolean; NewPreprintedStub: Boolean)
    begin
    end;

    procedure InputBankAccount()
    begin
    end;

    [IntegrationEvent(False, False)]
    local procedure OnAfterFormatNoText(var NoText: Text[80]; No: Decimal; CurrencyCode: Code[10])
    begin
    end;
}

report 60124 "PIN Customer - PaymentReceipt"
{
    Caption = 'Customer - Payment Receipt';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;

}

report 60125 "PIN Posting Date Range Update1"
{
    ProcessingOnly = false;
    Caption = 'Update Business Date Restriction';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    AdditionalSearchTerms = 'Update Date Restriction';
    dataset
    {
        dataitem("General Ledger Setup"; "General Ledger Setup")
        {

        }
    }

}

report 60126 "PIN Employee Payment Receipt1"
{
    DefaultLayout = RDLC;
    Caption = 'Employee Payment Voucher';
    ApplicationArea = All;
    UsageCategory = Documents;
    dataset
    {
        dataitem("Employee Ledger Entry"; "Employee Ledger Entry")
        {
            column(Journal_Batch_Name; "Journal Batch Name")
            {

            }
            column(CreatedUserName; "Journal Templ. Name")
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }
            column(ModifiedUserName; SystemModifiedAt)
            {

            }
            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(PIN_External_Document_No_; "PIN External Document No.")
            {

            }
            column(PIN_Shortcut_Dim_Code_1; "Shortcut Dimension 3 Code")
            {

            }
            column(PIN_Shortcut_Dim_Code_2; "Shortcut Dimension 3 Code")
            {

            }
            column(PIN_Created_User_Designation; SystemCreatedAt)
            {

            }
            column(PIN_Modified_User_Designation; SystemModifiedAt)
            {

            }
            dataitem(PageLoop; Integer)
            {
                column(Description; Description)
                {

                }
                column(EmpAddr1; EmpAddr)
                {

                }
                column(EmpAdd2; EmpAddr)
                {

                }
                column(EmpAddr3; EmpAddr)
                {

                }
                column(EmpAddr4; EmpAddr)
                {

                }
                column(EmpAddr5; EmpAddr)
                {

                }
                column(EmpAddr6; EmpAddr)
                {

                }
                column(EmpAddr7; EmpAddr)
                {

                }
                column(EmpAddr8; EmpAddr)
                {

                }
                column(EmpNo_EmpLedgEntry; empnoempledentry)
                {

                }
                column(CompanyAddr1; CompanyAddr)
                {

                }
                column(CompanyAddr2; CompanyAddr)
                {

                }
                column(CompanyAddr3; CompanyAddr)
                {

                }
                column(CompanyAddr4; CompanyAddr)
                {

                }
                column(CompanyAddr5; CompanyAddr)
                {

                }
                column(CompanyAddr6; CompanyAddr)
                {

                }
                column(PhoneNo; PhoneNo)
                {

                }
                column(HomePage; HomePage)
                {

                }
                column(Email; Email)
                {

                }
                column(VATRegistrationNo; VATRegistrationNo)
                {

                }
                column(GiroNo; girono)
                {

                }
                column(BankName; bankname)
                {

                }
                column(BankAccountNo; bankaccountno)
                {

                }
                column(ReportTitle; ReportTitle)
                {

                }
                column(DocNo_EmpLedgEntry; docnoempledgentry)
                {

                }
                column(PaymentDiscountTitle; PaymentDiscountTitle)
                {

                }
                column(CompanyInfoPhoneNoCaptionLbl; CompanyInfoPhoneNoCaptionLbl)
                {

                }
                column(CompanyInfoGiroNoCaptionLbl; CompanyInfoGiroNoCaptionLbl)
                {

                }
                column(CompanyInfoBankNameCaptionLbl; CompanyInfoBankNameCaptionLbl)
                {

                }
                column(CompanyInfoBankAccNoCaptionLbl; CompanyInfoBankAccNoCaptionLbl)
                {

                }
                column(RcptNoCaptionLbl; RcptNoCaptionLbl)
                {

                }
                column(CompanyInfoVATRegNoCaptionLbl; CompanyInfoVATRegNoCaptionLbl)
                {

                }
                column(PostingDateCaptionLbl; PostingDateCaptionLbl)
                {

                }
                column(AmtCaptionLbl; AmtCaptionLbl)
                {

                }
                column(PymtAmtSpecCaptionLbl; PymtAmtSpecCaptionLbl)
                {

                }
                column(PymtTolInvCurrCaptionLbl; PymtTolInvCurrCaptionLbl)
                {

                }
                column(RecipientBankAccountName; RecipientBankAccountName)
                {

                }
                column(PaymentAccountName; PaymentAccountName)
                {

                }
                column(PaymentAccountName; PaymentAccountName)
                {

                }
                column(PaymentBankAccount; PaymentBankAccount)
                {

                }
                dataitem("Detailed Employee Ledger Entry1"; "Detailed Employee Ledger Entry")
                {
                    column(AppliedELENo_DtldEmpLedgEntry; appliedelenodtldempledgentry)
                    {

                    }
                    dataitem("Employee Ledger Entry1"; "Employee Ledger Entry")
                    {
                        column(PostingDate_EmpLedgEntry1; postingdateempledgentry)
                        {

                        }
                        column(DocType_EmpLedgEntry1; DocTypeEmpLedgEntry)
                        {

                        }
                        column(DocNo_EmpLedgEntry1; docnoempledgentry)
                        {

                        }
                        column(Description_EmpLedgEntry1; descriptionempledgentry)
                        {

                        }
                        column(NegShowAmountEmpLedgEntry1; NegShowAmountEmpLedgEntry1)
                        {

                        }
                        column(CurrCodeEmpLedgEntry1; CurrCodeEmpLedgEntry)
                        {

                        }
                        column(NegPmtDiscInvCurrEmpLedgEntry1; NegPmtDiscInvCurrEmpLedgEntry1)
                        {

                        }
                        column(NegPmtTolInvCurrEmpLedgEntry1; NegPmtTolInvCurrEmpLedgEntry1)
                        {

                        }
                        column(ExtDocNo_EmpLedgEntry1; ExtDocNoEmpLedgEntry)
                        {

                        }
                    }

                }
                dataitem("Detailed Employee Ledger Entry2"; "Detailed Employee Ledger Entry")
                {
                    column(VLENo_DtldEmpLedgEntry; VLENoDtldEmpLedgEntry)
                    {

                    }
                    dataitem("Employee Ledger Entry2"; "Employee Ledger Entry")
                    {
                        column(NegAppliedAmt; NegAppliedAmt)
                        {

                        }
                        column(descriptionempledgentry2; descriptionempledgentry)
                        {

                        }
                        column(docnoempledgentry2; docnoempledgentry)
                        {

                        }
                        column(DocType_EmpLedgEntry2; DocTypeEmpLedgEntry)
                        {

                        }
                        column(postingdateempledgentry2; postingdateempledgentry)
                        {

                        }
                        column(CurrCodeEmpLedgEntry5; CurrCodeEmpLedgEntry)
                        {

                        }
                        column(NegPmtDiscInvCurrEmpLedgEntry2; NegPmtDiscInvCurrEmpLedgEntry2)
                        {

                        }
                        column(NegPmtTolInvCurrEmpLedgEntry2; NegPmtTolInvCurrEmpLedgEntry2)
                        {

                        }
                        column(PIN_External_Document_No_EmpLedgEntry2; ExtDocNoEmpLedgEntry)
                        {

                        }
                    }
                }
                dataitem(total; Integer)
                {
                    column(NegRemainingAmt; NegRemainingAmt)
                    {

                    }
                    column(CurrCodeEmpLedgEntry; CurrCodeEmpLedgEntry)
                    {

                    }
                    column(NegOriginalAmt_EmpLedgEntry; NegOriginalAmt_EmpLedgEntry)
                    {

                    }
                    column(PymtAmtNotAllocatedCaptionLbl; PymtAmtNotAllocatedCaptionLbl)
                    {

                    }
                    column(PymtAmtCaptionLbl; PymtAmtCaptionLbl)
                    {

                    }
                    column(ExternalDocNoCaptionLbl; ExternalDocNoCaptionLbl)
                    {

                    }
                }
                dataitem("Posted Approval Entry"; "Posted Approval Entry")
                {
                    column(Approver_ID; "Approver ID")
                    {

                    }
                    column(Sequence_No_; "Sequence No.")
                    {

                    }
                    column(Last_Date_Time_Modified; "Last Date-Time Modified")
                    {

                    }
                    column(Last_Modified_By_ID; "Last Modified By ID")
                    {

                    }
                    column(Approval_Code; "Approval Code")
                    {

                    }
                    column(Approval_Ele_DocNo; ApprovalEleDocNo)
                    {

                    }
                    column(Date_Time_Sent_for_Approval; "Date-Time Sent for Approval")
                    {

                    }
                    column(Approval_Status; ApprovalStatus)
                    {

                    }
                    column(Approver_Designation; ApproverDesignation)
                    {

                    }
                }

            }



        }
    }


    var
        CompanyInfo: Record "Company Information";
        GLSetup: Record "General Ledger Setup";
        Emp: Record Employee;
        Currency: Record Currency;
        PaymentBankAccount: Record "Bank Account";
        PaymentGLAccount: Record "G/L Account";
        FormatAddr: Codeunit "Format Address";
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        ReportTitle: Text[30];
        PaymentDiscountTitle: Text[30];
        CompanyAddr: array[8] of Text[100];
        EmpAddr: array[8] of Text[100];
        RemainingAmount: Decimal;
        AppliedAmount: Decimal;
        NegPmtDiscInvCurrEmpLedgEntry1: Decimal;
        NegPmtTolInvCurrEmpLedgEntry1: Decimal;
        Text003Lbl: Label 'Text003Lbl';
        Text004Lbl: Label 'Text006Lbl';
        Text006Lbl: Label 'Text006Lbl';
        Text007Lbl: Label 'Text007Lbl';
        NegShowAmountEmpLedgEntry1: Decimal;
        CompanyInfoPhoneNoCaptionLbl: Label 'the text is label';
        CompanyInfoGiroNoCaptionLbl: Label 'the text is label';
        CompanyInfoBankNameCaptionLbl: Label 'the text is label';
        CompanyInfoBankAccNoCaptionLbl: Label 'the text is label';
        RcptNoCaptionLbl: Label 'the text is label';
        CompanyInfoVATRegNoCaptionLbl: Label 'the text is label';
        PostingDateCaptionLbl: Label 'the text is label';
        AmtCaptionLbl: Label 'the text is label';
        PymtAmtSpecCaptionLbl: Label 'the text is label';
        PymtTolInvCurrCaptionLbl: Label 'the text is label';
        PymtAmtNotAllocatedCaptionLbl: Label 'the text is label';
        PymtAmtCaptionLbl: Label 'the text is label';
        ExternalDocNoCaptionLbl: Label 'the text is label';
        RecipientBankAccountName: Text[255];
        PaymentAccountName: Text[255];
        PaymentAccountNo: Text[100];
        //vikas
        empnoempledentry: Code[20];
        girono: Code[20];
        bankname: Text[100];
        bankaccountno: code[50];
        docnoempledgentry: code[50];
        appliedelenodtldempledgentry: Text[100];
        postingdateempledgentry: Date;
        DocTypeEmpLedgEntry: Text[100];
        descriptionempledgentry: text[100];
        CurrCodeEmpLedgEntry: code[50];
        ExtDocNoEmpLedgEntry: code[50];
        VLENoDtldEmpLedgEntry: Text[100];
        NegAppliedAmt: Decimal;
        CurrCodeEmpLedgEntry: Code[50];
        NegPmtTolInvCurrEmpLedgEntry2: Decimal;
        NegPmtDiscInvCurrEmpLedgEntry2: Decimal;
        NegRemainingAmt: Decimal;
        NegOriginalAmt_EmpLedgEntry: Decimal;
        ApprovalEleDocNo: Code[50];
        Approval_Status: Option;
        Approver_Designation: text[100];
}

report 60127 "PIN Bank Payment Voucher1"
{

    ApplicationArea = All;
    Caption = 'Bank Payment Voucher';
    UsageCategory = ReportsAndAnalysis;
    AdditionalSearchTerms = 'Bank Payment Receipt';
    dataset
    {
        dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
        {
            column(Amount; Amount)
            {

            }
            column(Amount__LCY_; "Amount (LCY)")
            {

            }
            column(Bal__Account_No_; "Bal. Account No.")
            {

            }
            column(Bal__Account_Type; "Bal. Account Type")
            {

            }
            column(Bank_Acc__Posting_Group; "Bank Acc. Posting Group")
            {

            }
            column(Bank_Account_No_; "Bank Account No.")
            {

            }
            column(Check_Ledger_Entries; "Check Ledger Entries")
            {

            }
            column(Closed_at_Date; "Closed at Date")
            {

            }
            column(Closed_by_Entry_No_; "Closed by Entry No.")
            {

            }
            column(Credit_Amount; "Credit Amount")
            {

            }

            column(Credit_Amount__LCY_; "Credit Amount (LCY)")
            {

            }
            column(Currency_Code; "Currency Code")
            {

            }
            column(Debit_Amount; "Debit Amount")
            {

            }
            column(Debit_Amount__LCY_; "Debit Amount (LCY)")
            {

            }


            column(Description; Description)
            {

            }
            column(Dimension_Set_ID; "Dimension Set ID")
            {

            }
            column(Document_Date; "Document Date")
            {

            }
            column(Document_No_; "Document No.")
            {

            }
            column(Document_Type; "Document Type")
            {

            }
            column(Entry_No_; "Entry No.")
            {

            }

            column(External_Document_No_; "External Document No.")
            {

            }
            column(Global_Dimension_1_Code; "Global Dimension 1 Code")
            {

            }
            column(Global_Dimension_2_Code; "Global Dimension 2 Code")
            {

            }
            column(Journal_Batch_Name; "Journal Batch Name")
            {

            }
            column(Open; Open)
            {

            }
            column(Our_Contact_Code; "Our Contact Code")
            {

            }
            column(Positive; Positive)
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Reason_Code; "Reason Code")
            {

            }
            column(Remaining_Amount; "Remaining Amount")
            {

            }
            column(Reversed; Reversed)
            {

            }
            column(Reversed_Entry_No_; "Reversed Entry No.")
            {

            }

            column(Reversed_Entry_No_; "Reversed Entry No.")
            {

            }
            column(Shortcut_Dimension_3_Code; "Shortcut Dimension 3 Code")
            {

            }
            column(Shortcut_Dimension_4_Code; "Shortcut Dimension 4 Code")
            {

            }
            column(Shortcut_Dimension_5_Code; "Shortcut Dimension 5 Code")
            {

            }
            column(Shortcut_Dimension_6_Code; "Shortcut Dimension 6 Code")
            {

            }
            column(Shortcut_Dimension_7_Code; "Shortcut Dimension 7 Code")
            {

            }
            column(Shortcut_Dimension_8_Code; "Shortcut Dimension 8 Code")
            {

            }
            column(Source_Code; "Source Code")
            {

            }
            column(Statement_Line_No_; "Statement Line No.")
            {

            }
            column(Statement_No_; "Statement No.")
            {

            }
            column(Statement_Status; "Statement Status")
            {

            }
            column(SystemCreatedAt; SystemCreatedAt)
            {

            }

            column(SystemCreatedBy; SystemCreatedBy)
            {

            }
            column(SystemId; SystemId)
            {

            }

            column(SystemModifiedAt; SystemModifiedAt)
            {

            }
            column(SystemModifiedBy; SystemModifiedBy)
            {

            }
            column(Transaction_No_; "Transaction No.")
            {

            }
            column(User_ID; "User ID")
            {

            }
            column(PIN_Created_User_Designation; PINCreatedUserDesignation)
            {

            }
            column(PIN_Modified_User_Designation; PINModifiedUserDesignation)
            {

            }
            dataitem("Bank Account"; "Bank Account")
            {
                column(Address_BankAccount; Address)
                {

                }
                column(Address2_BankAccount; "Address 2")
                {

                }

                column(BankBranchNo_BankAccount; "Bank Branch No.")
                {

                }
                column(BankClearingCode_BankAccount; "Bank Clearing Code")
                {

                }
                column(City_BankAccount; City)
                {

                }
                column(Comment_BankAccount; Comment)
                {

                }
                column(Contact_BankAccount; Contact)
                {

                }
                column(County_BankAccount; County)
                {

                }
                column(EMail_BankAccount; "E-Mail")
                {

                }
                column(FaxNo_BankAccount; "Fax No.")
                {

                }
                column(HomePage_BankAccount; "Home Page")
                {

                }

                column(IBAN_BankAccount; IBAN)
                {

                }
                column(MobilePhoneNo_BankAccount; "Mobile Phone No.")
                {

                }
                column(Name_BankAccount; Name)
                {

                }
                column(Name2_BankAccount; "Name 2")
                {

                }
                column(No_BankAccount; "No.")
                {

                }
                column(OurContactCode_BankAccount; "Our Contact Code")
                {

                }
                column(PhoneNo_BankAccount; "Phone No.")
                {

                }
                column(PostCode_BankAccount; "Post Code")
                {

                }
                column(SWIFTCode_BankAccount; "SWIFT Code")
                {

                }
                column(SearchName_BankAccount; "Search Name")
                {

                }
                column(TelexNo_BankAccount; "Telex No.")
                {

                }
                dataitem("G/L Entry"; "G/L Entry")
                {
                    column(AccountId_GLEntry; "Account Id")
                    {

                    }
                    column(AddCurrencyCreditAmount_GLEntry; "Add.-Currency Credit Amount")
                    {

                    }
                    column(AddCurrencyDebitAmount_GLEntry; "Add.-Currency Debit Amount")
                    {

                    }
                    column(AdditionalCurrencyAmount_GLEntry; "Additional-Currency Amount")
                    {

                    }
                    column(Amount_GLEntry; Amount)
                    {

                    }
                    column(BalAccountNo_GLEntry; "Bal. Account No.")
                    {

                    }
                    column(BalAccountType_GLEntry; "Bal. Account Type")
                    {

                    }
                    column(BusinessUnitCode_GLEntry; "Business Unit Code")
                    {

                    }
                    column(CloseIncomeStatementDimID_GLEntry; "Close Income Statement Dim. ID")
                    {

                    }
                    column(CreditAmount_GLEntry; "Credit Amount")
                    {

                    }
                    column(DebitAmount_GLEntry; "Debit Amount")
                    {

                    }
                    column(Description_GLEntry; Description)
                    {

                    }
                    column(DimensionChangesCount_GLEntry; "Dimension Changes Count")
                    {

                    }

                    column(DimensionSetID_GLEntry; "Dimension Set ID")
                    {

                    }
                    column(DocumentDate_GLEntry; "Document Date")
                    {

                    }
                    column(DocumentNo_GLEntry; "Document No.")
                    {

                    }

                    column(DocumentType_GLEntry; "Document Type")
                    {

                    }
                    column(EntryNo_GLEntry; "Entry No.")
                    {

                    }
                    column(ExternalDocumentNo_GLEntry; "External Document No.")
                    {

                    }

                    column(FAEntryNo_GLEntry; "FA Entry No.")
                    {

                    }
                    column(FAEntryType_GLEntry; "FA Entry Type")
                    {

                    }
                    column(GLAccountName_GLEntry; "G/L Account Name")
                    {

                    }
                    column(GLAccountNo_GLEntry; "G/L Account No.")
                    {

                    }
                    column(GenBusPostingGroup_GLEntry; "Gen. Bus. Posting Group")
                    {

                    }
                    column(GenPostingType_GLEntry; "Gen. Posting Type")
                    {

                    }
                    column(GenProdPostingGroup_GLEntry; "Gen. Prod. Posting Group")
                    {

                    }
                    column(GlobalDimension1Code_GLEntry; "Global Dimension 1 Code")
                    {

                    }
                    column(GlobalDimension2Code_GLEntry; "Global Dimension 2 Code")
                    {

                    }
                    column(LastDimCorrectionEntryNo_GLEntry; "Last Dim. Correction Entry No.")
                    {

                    }
                    column(LastDimCorrectionNode_GLEntry; "Last Dim. Correction Node")
                    {

                    }
                    column(LastModifiedDateTime_GLEntry; "Last Modified DateTime")
                    {

                    }
                    column(NoSeries_GLEntry; "No. Series")
                    {

                    }
                    column(PostingDate_GLEntry; "Posting Date")
                    {

                    }
                    column(PriorYearEntry_GLEntry; "Prior-Year Entry")
                    {

                    }
                    column(ProdOrderNo_GLEntry; "Prod. Order No.")
                    {

                    }
                    column(Quantity_GLEntry; Quantity)
                    {

                    }
                    column(ReasonCode_GLEntry; "Reason Code")
                    {

                    }
                    column(Reversed_GLEntry; Reversed)
                    {

                    }
                    column(ReversedbyEntryNo_GLEntry; "Reversed by Entry No.")
                    {

                    }
                    column(ReversedEntryNo_GLEntry; "Reversed Entry No.")
                    {

                    }
                    column(ShortcutDimension3Code_GLEntry; "Shortcut Dimension 3 Code")
                    {

                    }
                    column(ShortcutDimension4Code_GLEntry; "Shortcut Dimension 4 Code")
                    {

                    }
                    column(ShortcutDimension5Code_GLEntry; "Shortcut Dimension 5 Code")
                    {

                    }
                    column(ShortcutDimension6Code_GLEntry; "Shortcut Dimension 6 Code")
                    {

                    }
                    column(ShortcutDimension7Code_GLEntry; "Shortcut Dimension 7 Code")
                    {

                    }
                    column(ShortcutDimension8Code_GLEntry; "Shortcut Dimension 8 Code")
                    {

                    }
                    column(SourceCode_GLEntry; "Source Code")
                    {

                    }
                    column(SourceNo_GLEntry; "Source No.")
                    {

                    }
                    column(SourceType_GLEntry; "Source Type")
                    {

                    }
                    column(SystemCreatedEntry_GLEntry; "System-Created Entry")
                    {

                    }
                    column(SystemCreatedAt_GLEntry; SystemCreatedAt)
                    {

                    }
                    column(SystemCreatedBy_GLEntry; "System-Created Entry")
                    {

                    }
                    column(SystemId_GLEntry; SystemId)
                    {

                    }
                    column(SystemModifiedAt_GLEntry; SystemModifiedAt)
                    {

                    }
                    column(SystemModifiedBy_GLEntry; SystemModifiedBy)
                    {

                    }
                    column(TaxAreaCode_GLEntry; "Tax Area Code")
                    {

                    }
                    column(TaxGroupCode_GLEntry; "Tax Group Code")
                    {

                    }
                    column(TaxLiable_GLEntry; "Tax Liable")
                    {

                    }
                    column(TransactionNo_GLEntry; "Transaction No.")
                    {

                    }
                    column(UseTax_GLEntry; "Use Tax")
                    {

                    }
                    column(UserID_GLEntry; "User ID")
                    {

                    }
                    column(VATAmount_GLEntry; "VAT Amount")
                    {

                    }
                    column(VATBusPostingGroup_GLEntry; "VAT Bus. Posting Group")
                    {

                    }
                    column(VATProdPostingGroup_GLEntry; "VAT Prod. Posting Group")
                    {

                    }

                }

            }
            dataitem("Posted Approval Entry"; "Posted Approval Entry")
            {
                column(ApproverId; "Approver ID")
                {

                }
                column(ApproverIdFullName; ApproverIdFullName)
                {

                }
                column(SequenceNo; "Sequence No.")
                {

                }
                column(LastDateTimeModified; "Last Date-Time Modified")
                {

                }
                column(LastModifiedById; "Last Modified By ID")
                {

                }
                column(LastModifiedByIdFullName; LastModifiedByIdFullName)
                {

                }
                column(ApprovalCode; "Approval Code")
                {

                }
                column(Date_Time_Sent_for_Approval; "Date-Time Sent for Approval")
                {

                }
                column(Approval_Status; ApprovalStatus)
                {

                }
                column(Approver_Designation; ApproverDesignation)
                {

                }

            }
        }

    }
    var
        PinCodeBaseCodeunit: Codeunit "PINetworks Base";
        //vikas
        PINCreatedUserDesignation: Text[100];
        PINModifiedUserDesignation: Text[100];
        ApprovalStatus: Option;
        ApproverDesignation: Text[100];
        ApproverIdFullName: Text[100];
        LastModifiedByIdFullName: Text[100];
}

report 60128 "PIN Bank Document1"
{
    ApplicationArea = All;
    Caption = 'Bank Document';
    UsageCategory = Documents;
    DefaultLayout = RDLC;
    RDLCLayout = './BankDocument.rdlc';
    dataset
    {
        dataitem("Gen. Journal Line"; "Gen. Journal Line")
        {
            column(GJL_JournalTemplateName; "Journal Template Name")
            {

            }
            column(GJL_JournalBatchName; "Journal Batch Name")
            {

            }
            column(GJL_LineNo; "Line No.")
            {

            }
            column(GJL_PostingDate; "Posting Date")
            {

            }
            column(GJL_CurrencyCode; "Currency Code")
            {

            }
            column(GJL_CurrencyFactor; "Currency Factor")
            {

            }
            column(GJL_Amount; Amount)
            {

            }
            column(GJL_AmountLCY; "Amount (LCY)")
            {

            }
            column(GJL_BankPaymentType; "Bank Payment Type")
            {

            }
            dataitem(GJL_CompanyInfo; "Company Information")
            {
                column(CI_Name; Name)
                {

                }
                column(CI_Name2; "Name 2")
                {

                }
                column(CI_Address; Address)
                {

                }
                column(CI_Address2; "Address 2")
                {

                }
                column(CI_City; City)
                {

                }
                column(CI_County; County)
                {

                }
                column(CI_CountryRegionCode; "Country/Region Code")
                {

                }
                column(CI_EMail; "E-Mail")
                {

                }
                column(CI_HomePage; "Home Page")
                {

                }
                column(CI_VATRegistrationNo; "VAT Registration No.")
                {

                }
                column(CI_RegistrationNo; "Registration No.")
                {

                }
                column(CI_PhoneNo; "Phone No.")
                {

                }
                column(CI_PhoneNo2; "Phone No. 2")
                {

                }
                column(CI_IndustrialClassification; "Industrial Classification")
                {

                }
                column(CI_PaymentRoutingNo; "Payment Routing No.")
                {

                }
                column(CI_PostCode; "Post Code")
                {

                }
            }
            dataitem("Sender Bank Account"; "Bank Account")
            {
                column(SBA_BankAccountNo; "Bank Account No.")
                {

                }
                column(SBA_BankBranchNo; "Currency Code")
                {

                }
                column(SBA_IBAN; IBAN)
                {

                }
                column(SBA_Name; Name)
                {

                }
                column(SBA_Name2; "Name 2")
                {

                }
                column(SBA_SWIFTCode; "SWIFT Code")
                {

                }
                column(SBA_Address; Address)
                {

                }
            }
            dataitem("Reciever Bank Account"; "Vendor Bank Account")
            {
                column(RBA_Code; Code)
                {

                }
                column(RBA_Name; Name)
                {

                }
                column(RBA_Name2; "Name 2")
                {

                }
                column(RBA_Address; Address)
                {

                }
                column(RBA_Address2; "Address 2")
                {

                }
                column(RBA_City; City)
                {

                }
                column(RBA_County; County)
                {

                }
                column(RBA_CountryRegionCode; "Country/Region Code")
                {

                }
                column(RBA_EMail; "E-Mail")
                {

                }

                column(RBA_PhoneNo; "Phone No.")
                {

                }
                column(RBA_PostCode; "Post Code")
                {

                }

                column(RBA_SWIFTCode; "SWIFT Code")
                {

                }
                column(RBA_BankAccountNo; "Bank Account No.")
                {

                }

                column(RBA_BankBranchNo; "Bank Branch No.")
                {

                }
                column(RBA_CurrencyCode; "Currency Code")
                {

                }
                column(RBA_IBAN; IBAN)
                {

                }


            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }
        actions
        {
            area(Processing)
            {

            }
        }
    }

}

report 60129 "PIN Day Book Cust. Ledger1"
{
    DefaultLayout = RDLC;
    RDLCLayout = './DayBookCustLedgerEntry.rdlc';
    ApplicationArea = Basic, Suite;
    Caption = 'Day Book Customer Ledger Entry';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(ReqCustLedgEntry; "Cust. Ledger Entry")
        {
            dataitem(Date; Date)
            {
                column(USERID; UserId)
                {

                }
                column(FORMAT_TODAY_0_4_; Format)
                {

                }
                column(COMPANYNAME; CompanyName)
                {

                }
                column(All_amounts_are_in___GLSetup__LCY_Code_; GLSetup."LCY Code")
                {

                }
                column(GetAmountLCY; AmountLCY1)
                {

                }
                column(GetPmtDiscGiven; PmtDiscGiven)
                {

                }
                column(GetVatBase; VatBase)
                {

                }
                column(GetVatAmount; VATAmount)
                {

                }
                column(G_L_Entry___Entry_No__; "G/L Entry"."Entry No.")
                {

                }
                column(CustLedgerEntry___Entry_No__; "Cust. Ledger Entry"."Entry No.")
                {

                }
                column(PrintCLDetails; PrintCLDetails)
                {

                }
                column(PrintSummaryReport; PrintSummaryReport)
                {

                }
                column(GetActualAmount; ActualAmount)
                {

                }
                column(Cust__Ledger_Entry__TABLENAME__________CustLedgFilter; "Cust. Ledger Entry".TableName)
                {

                }
                column(CustLedgFilter; CustLedgFilter)
                {

                }
                column(Total_for______Cust__Ledger_Entry__TABLENAME__________CustLedgFilter; TotalForCustLedgerEntryLbl)
                {

                }
                column(VATAmount; VATAmount)
                {

                }

                column(VATBase; VATBase)
                {

                }
                column(ActualAmount; ActualAmount)
                {

                }
                column(PmtDiscGiven; PmtDiscGiven)
                {

                }
                column(Cust__Ledger_Entry___Amount__LCY__; Cust__Ledger_Entry__Amount__LCY__CaptionLbl)
                {

                }
                column(Date_Period_Type; "Period Type")
                {

                }
                column(Date_Period_Start; "Period Start")
                {

                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
                {

                }
                column(Day_Book_Cust__Ledger_EntryCaption; Day_Book_Cust__Ledger_EntryCaptionLbl)
                {

                }

                column(Cust__Ledger_Entry__Amount__LCY__Caption; Cust__Ledger_Entry__Amount__LCY__CaptionLbl)
                {

                }
                column(PmtDiscGiven_Control32Caption; PmtDiscGiven_Control32CaptionLbl)
                {

                }

                column(VATAmount_Control26Caption; VATAmount_Control26CaptionLbl)
                {

                }
                column(ActualAmount_Control39Caption; ActualAmount_Control39CaptionLbl)
                {

                }
                column(VATBase_Control29Caption; VATBase_Control29CaptionLbl)
                {

                }
                column(PmtDiscGiven_Control32Caption_Control33; PmtDiscGiven_Control32Caption_Control33Lbl)
                {

                }
                column(Customer_NameCaption; Customer_NameCaptionLbl)
                {

                }
                column(Cust__Ledger_Entry__Customer_No__Caption; Cust__Ledger_Entry__Customer_No__CaptionLbl)
                {

                }
                column(Cust__Ledger_Entry__External_Document_No__Caption; "Cust. Ledger Entry"."External Document No.")
                {

                }
                column(Cust__Ledger_Entry__Document_No__Caption; "Cust. Ledger Entry"."Document No.")
                {

                }

                column(Cust__Ledger_Entry__Amount__LCY__Caption_Control24; Cust__Ledger_Entry__Amount__LCY__Caption_Control24Lbl)
                {

                }
                column(VATAmount_Control26Caption_Control27; VATAmount_Control26Caption_Control27Lbl)
                {

                }
                column(VATBase_Control29Caption_Control30; VATBase_Control29Caption_Control30Lbl)
                {

                }
                column(ActualAmount_Control39Caption_Control35; ActualAmount_Control39Caption_Control35Lbl)
                {

                }
                dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
                {
                    column(Cust__Ledger_Entry__FIELDNAME__Posting_Date__________FORMAT_Date__Period_Start__0_4_; "Cust. Ledger Entry"."Posting Date")
                    {

                    }
                    column(FIELDNAME__Document_Type___________FORMAT__Document_Type__; Format("Document Type"))
                    {

                    }
                    column(Cust__Ledger_Entry__Document_No__; "Cust. Ledger Entry"."Document No.")
                    {

                    }

                    column(Cust__Ledger_Entry__External_Document_No__; "Cust. Ledger Entry"."External Document No.")
                    {

                    }
                    column(Cust__Ledger_Entry__Amount__LCY__; Cust__Ledger_Entry__Amount__LCY__CaptionLbl)
                    {

                    }
                    column(VATBase_Control29; VATBase_Control29CaptionLbl)
                    {

                    }
                    column(PmtDiscGiven_Control32; PmtDiscGiven_Control32CaptionLbl)
                    {

                    }
                    column(Customer_Name; "Customer Name")
                    {

                    }
                    column(Cust__Ledger_Entry__Customer_No__; Cust__Ledger_Entry__Customer_No__CaptionLbl)
                    {

                    }
                    column(ActualAmount_Control39; ActualAmount_Control39CaptionLbl)
                    {

                    }
                    column(VATAmount_Control26; VATAmount_Control26CaptionLbl)
                    {

                    }
                    column(Total_for___FIELDNAME__Document_Type_________FORMAT__Document_Type__; Format("Document Type"))
                    {

                    }
                    column(VATAmount_Control19; VATAmount)
                    {

                    }
                    column(VATBase_Control22; VATBase)
                    {

                    }
                    column(ActualAmount_Control25; ActualAmount)
                    {

                    }
                    column(PmtDiscGiven_Control38; PmtDiscGiven)
                    {

                    }

                    column(Cust__Ledger_Entry__Amount__LCY___Control41; Cust__Ledger_Entry__Amount__LCY__CaptionLbl)
                    {

                    }
                    column(Total_for_____FORMAT_Date__Period_Start__0_4_; TotalForDatePeriodStartLbl)
                    {

                    }
                    column(Cust__Ledger_Entry__Amount__LCY___Control57; Cust__Ledger_Entry__Amount__LCY__CaptionLbl)
                    {

                    }
                    column(PmtDiscGiven_Control50; PmtDiscGiven)
                    {

                    }
                    column(ActualAmount_Control49; ActualAmount)
                    {

                    }
                    column(VATBase_Control48; VATBase_Control29CaptionLbl)
                    {

                    }
                    column(VATAmount_Control47; VATAmount_Control26CaptionLbl)
                    {

                    }
                    column(Cust__Ledger_Entry_Entry_No_; "Cust. Ledger Entry"."Entry No.")
                    {

                    }
                    column(Cust__Ledger_Entry_Document_Type; "Cust. Ledger Entry"."Document Type")
                    {

                    }
                    column(Cust__Ledger_Entry_Payment_Method_Code; "Cust. Ledger Entry"."Payment Method Code")
                    {

                    }
                    column(Cust__Ledger_Entry_Payment_Reference; "Cust. Ledger Entry"."Payment Reference")
                    {

                    }
                    column(Cust__Ledger_Entry_Reversed; "Cust. Ledger Entry".Reversed)
                    {

                    }
                    column(Cust__Ledger_Entry_Positive; "Cust. Ledger Entry".Positive)
                    {

                    }
                    column(Cust__Ledger_Entry_Source_Code; "Cust. Ledger Entry"."Source Code")
                    {

                    }
                    column(Cust__Ledger_Entry_Recipient_Bank_Account; "Cust. Ledger Entry"."Recipient Bank Account")
                    {

                    }
                    column(Cust__Ledger_Entry_User_ID; "Cust. Ledger Entry"."User ID")
                    {

                    }
                    column(Cust__Ledger_Entry_Global_Dimension_1_Code; "Cust. Ledger Entry"."Global Dimension 1 Code")
                    {

                    }

                    column(Cust__Ledger_Entry_Global_Dimension_2_Code; "Cust. Ledger Entry"."Global Dimension 2 Code")
                    {

                    }
                    column(Cust__Ledger_Entry_Global_Dimension_1_Code_Name; "Cust. Ledger Entry"."Global Dimension 1 Code")
                    {

                    }
                    column(Cust__Ledger_Entry_Global_Dimension_2_Code_Name; "Cust. Ledger Entry"."Global Dimension 2 Code")
                    {

                    }
                    column(Cust__Ledger_Entry_GenCustomerIDNo; "Cust. Ledger Entry"."PIN Gen. Customer ID No.")
                    {

                    }
                    column(Cust__Ledger_Entry_GenCustomerName; "Cust. Ledger Entry"."PIN Gen. Customer Name")
                    {

                    }
                    column(Cust__Ledger_User_Fullname; UserId)
                    {

                    }
                    column(Cust__Ledger_Currency_Code; "Currency Code")
                    {

                    }
                    column(Cust__Ledger_Amount; Amount)
                    {

                    }
                    column(Cust__Ledger_Description; Description)
                    {

                    }
                    dataitem("G/L Entry"; "G/L Entry")
                    {
                        column(G_L_Entry__G_L_Account_No__; "G/L Entry"."G/L Account No.")
                        {

                        }
                        column(GLAcc_Name; "G/L Account Name")
                        {

                        }
                        column(G_L_Entry_Amount; "G/L Entry".Amount)
                        {

                        }
                        column(G_L_Entry_Entry_No_; "G/L Entry"."Entry No.")
                        {

                        }


                    }

                }

            }

        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(options)
                {
                    group(PrintCustLedgerDetails)
                    {

                    }
                    group(PrintGLEntryDetails)
                    {

                    }
                    group(PrintSummaryReport)
                    {

                    }
                }
            }
        }
    }

    var
        GLSetup: Record "General Ledger Setup";
        GLAcc: Record "G/L Account";
        Customer: Record Customer;
        CustLedgEntry: Record "Cust. Ledger Entry";
        VATEntry: Record "VAT Entry";
        PINetworksBase: Codeunit "PINetworks Base";
        CustLedgFilter: Text;
        PmtDiscGiven: Decimal;
        VATAmount: Decimal;
        ActualAmount: Decimal;
        VATBase: Decimal;
        AmountLCY1: Decimal;
        PmtDiscGiven1: Decimal;
        VatBase1: Decimal;
        VatAmount1: Decimal;
        PrintGLDetails: Boolean;
        PrintCLDetails: Boolean;
        PrintSummaryReport: Boolean;
        SecondStep: Boolean;
        ActualAmount1: Decimal;
        CurrReport_PAGENOCaptionLbl: Label 'the text is label';
        Day_Book_Cust__Ledger_EntryCaptionLbl: Label 'the text is label';
        Cust__Ledger_Entry__Amount__LCY__CaptionLbl: Label 'the text is label';
        PmtDiscGiven_Control32CaptionLbl: Label 'the text is label';
        VATAmount_Control26CaptionLbl: Label 'the text is label';
        ActualAmount_Control39CaptionLbl: Label 'the text is label';
        VATBase_Control29CaptionLbl: Label 'the text is label';
        PmtDiscGiven_Control32Caption_Control33Lbl: Label 'the text is label';
        Customer_NameCaptionLbl: Label 'the text is label';
        Cust__Ledger_Entry__Customer_No__CaptionLbl: Label 'the text is label';
        Cust__Ledger_Entry__Amount__LCY__Caption_Control24Lbl: Label 'the text is label';
        VATAmount_Control26Caption_Control27Lbl: Label 'the text is label';
        VATBase_Control29Caption_Control30Lbl: Label 'the text is label';
        ActualAmount_Control39Caption_Control35Lbl: Label 'the text is label';
        AllAmountsAreInLbl: Label 'the text is label';
        TotalForCustLedgerEntryLbl: Label 'the text is label';
        TotalForDatePeriodStartLbl: Label 'the text is label';
        MissingDateRangeFilterErr: Label 'the text is label';
        MaxPostingDateErr: Label 'the text is label';
}

