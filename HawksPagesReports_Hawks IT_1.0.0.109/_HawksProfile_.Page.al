page 50261 "HawksProfile"
{
    ApplicationArea = All;
    Caption = 'Hawks Profile';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(part1; "Approvals Activities")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(reporting)
        {
            action("Customer - &Order Summary")
            {
                ApplicationArea = RelationshipMgmt;
                Caption = 'Customer - &Order Summary';
                Image = "Report";
                RunObject = Report "Customer - Order Summary";
                ToolTip = 'View the quantity not yet shipped for each customer in three periods of 30 days each, starting from a selected date. There are also columns with orders to be shipped before and after the three periods and a column with the total order detail for each customer. The report can be used to analyze a company''s expected sales volume.';
            }
            group(Reports)
            {
                Caption = 'Reports';

                group("Pinetwork Reports")
                {
                    Caption = 'Pinetwork Reports';
                    Image = ReferenceData;

                    action("PIN Purchase Details")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Purchase Details';
                        Image = "Report";
                        RunObject = Report "PIN Purchase Details";
                        ToolTip = 'PIN Purchase Details';
                    }
                    action("PIN Posted Payment Recon")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Posted Payment Recon';
                        Image = "Report";
                        RunObject = Report "PIN Posted Payment Recon";
                        ToolTip = 'PIN Posted Payment Recon';
                    }
                    action("PIN Purch. Details Report")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Purch. Details Report';
                        Image = "Report";
                        RunObject = Report "PIN Purch. Details Report";
                        ToolTip = 'PIN Purch. Details Report';
                    }
                    action("HAWKSPTE Sales - Invoice")
                    {
                        ApplicationArea = All;
                        Caption = 'HAWKSPTE Sales - Invoice';
                        Image = "Report";
                        RunObject = Report "HAWKSPTE Sales - Invoice";
                        ToolTip = 'HAWKSPTE Sales - Invoice';
                    }
                    action("HKSPTE Delivery Note")
                    {
                        ApplicationArea = All;
                        Caption = 'HKSPTE Delivery Note';
                        Image = "Report";
                        RunObject = Report "HKSPTE Delivery Note";
                        ToolTip = 'HKSPTE Delivery Note';
                    }
                    action("PIN Customer Item Sales")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Customer Item Sales';
                        Image = "Report";
                        RunObject = Report "PIN Customer Item Sales";
                        ToolTip = 'PIN Customer Item Sales';
                    }
                    action("PINPTE Std Sales - Invoice")
                    {
                        ApplicationArea = All;
                        Caption = 'PINPTE Std Sales - Invoice';
                        Image = "Report";
                        RunObject = Report "PINPTE Std Sales - Invoice";
                        ToolTip = 'PINPTE Std Sales - Invoice';
                    }
                }
                group("PiReports for Hawks")
                {
                    Caption = 'PiReports for Hawks';
                    Image = ReferenceData;

                    action("PIN Item Charges - Breakdown")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Item Charges - Breakdown';
                        Image = "Report";
                        RunObject = Report "PIN Item Charges - Breakdown";
                        ToolTip = 'PIN Item Charges - Breakdown';
                    }
                    action("PIN Inventory - Customer Sales")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Inventory - Customer Sales';
                        Image = "Report";
                        RunObject = Report "PIN Inventory - Customer Sales";
                        ToolTip = 'PIN Inventory - Customer Sales';
                    }
                    action("PIN Purchase Multi Report")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Purchase Multi Report';
                        Image = "Report";
                        RunObject = Report "PIN Purchase Multi Report";
                        ToolTip = 'PIN Purchase Multi Report';
                    }
                    action("PIN OpenPurchaseOrders")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN OpenPurchaseOrders';
                        Image = "Report";
                        RunObject = Report "PIN OpenPurchaseOrders";
                        ToolTip = 'PIN OpenPurchaseOrders';
                    }
                    action("PIN Match Bank Entries")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Match Bank Entries';
                        Image = "Report";
                        RunObject = Report "PIN Match Bank Entries";
                        ToolTip = 'PIN Match Bank Entries';
                    }
                    action("G/L Voucher")
                    {
                        ApplicationArea = All;
                        Caption = 'G/L Voucher';
                        Image = "Report";
                        RunObject = Report "G/L Voucher";
                        ToolTip = 'G/L Voucher';
                    }
                    action("PIN Vendor - Payment Receipt")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Vendor - Payment Receipt';
                        Image = "Report";
                        RunObject = Report "PIN Vendor - Payment Receipt";
                        ToolTip = 'PIN Vendor - Payment Receipt';
                    }
                    action("PIN - Order")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN - Order';
                        Image = "Report";
                        RunObject = Report "PIN - Order";
                        ToolTip = 'PIN - Order';
                    }
                    action("PIN Maldives Check")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Maldives Check';
                        Image = "Report";
                        RunObject = Report "PIN Maldives Check";
                        ToolTip = 'PIN Maldives Check';
                    }
                    action("PIN Customer - Payment Receipt")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Customer - Payment Receipt';
                        Image = "Report";
                        RunObject = Report "PIN Customer - Payment Receipt";
                        ToolTip = 'PIN Customer - Payment Receipt';
                    }
                    action("PIN Posting Date Range Update")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Posting Date Range Update';
                        Image = "Report";
                        RunObject = Report "PIN Posting Date Range Update";
                        ToolTip = 'PIN Posting Date Range Update';
                    }
                    action("PIN Employee Payment Receipt")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Employee Payment Receipt';
                        Image = "Report";
                        RunObject = Report "PIN Employee Payment Receipt";
                        ToolTip = 'PIN Employee Payment Receipt';
                    }
                    action("PIN Bank Payment Voucher")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Bank Payment Voucher';
                        Image = "Report";
                        RunObject = Report "PIN Bank Payment Voucher";
                        ToolTip = 'PIN Bank Payment Voucher';
                    }
                    action("PIN Bank Document")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Bank Document';
                        Image = "Report";
                        RunObject = Report "PIN Bank Document";
                        ToolTip = 'PIN Bank Document';
                    }
                    action("PIN Day Book Cust. Ledger")
                    {
                        ApplicationArea = All;
                        Caption = 'PIN Day Book Cust. Ledger';
                        Image = "Report";
                        RunObject = Report "PIN Day Book Cust. Ledger";
                        ToolTip = 'PIN Day Book Cust. Ledger';
                    }
                }
                group("Customised Reports")
                {
                    Caption = 'Hawks Customised Reports';
                    Image = ReferenceData;

                    action("Sales Taxes Collected")
                    {
                        ApplicationArea = SalesTax;
                        Caption = 'Sales Taxes Collected';
                        Image = "Report";
                        RunObject = Report "Sales Taxes Collected";
                        ToolTip = 'View a report that shows the sales taxes that have been collected on behalf of the authorities.';
                    }
                    action("Variant By Location")
                    {
                        ApplicationArea = All;
                        Caption = 'Variant By Location';
                        Image = "Report";
                        RunObject = Report "Variant By Location";
                        ToolTip = 'Variant By Location';
                    }
                    action("Capex Report")
                    {
                        ApplicationArea = All;
                        Caption = 'Capex Report';
                        Image = "Report";
                        RunObject = Report "Capex Report";
                        ToolTip = 'Capex Report';
                    }
                    action("Aged Accounts Payable 1")
                    {
                        ApplicationArea = All;
                        Caption = 'Aged Accounts Payable 1';
                        Image = "Report";
                        RunObject = Report "Aged Accounts Payable 1";
                        ToolTip = 'Aged Accounts Payable 1';
                    }
                    action("Inventory Repoort with name")
                    {
                        ApplicationArea = All;
                        Caption = 'Inventory Repoort with name';
                        Image = "Report";
                        RunObject = Report "Inventory Repoort with name";
                        ToolTip = 'Inventory Repoort with name';
                    }
                    action("Value Entry with item Name")
                    {
                        ApplicationArea = All;
                        Caption = 'Value Entry with item Name';
                        Image = "Report";
                        RunObject = Report "Value Entry with item Name";
                        ToolTip = 'Value Entry with item Name';
                    }
                    action("Value Entry for Margins")
                    {
                        ApplicationArea = All;
                        Caption = 'Value Entry for Margins';
                        Image = "Report";
                        RunObject = Report "Value Entry for Margins";
                        ToolTip = 'Value Entry for Margins';
                    }
                    action("Value Entry for Margins1")
                    {
                        ApplicationArea = All;
                        Caption = 'Value Entry for Margins1';
                        Image = "Report";
                        RunObject = Report "Value Entry for Margins1";
                        ToolTip = 'Value Entry for Margins1';
                    }
                    action("Hawsk Daily Sales Report")
                    {
                        ApplicationArea = All;
                        Caption = 'Hawsk Daily Sales Report';
                        Image = "Report";
                        RunObject = Report "Hawsk Daily Sales Report";
                        ToolTip = 'Hawsk Daily Sales Report';
                    }
                }
            }
        }
    }
}
