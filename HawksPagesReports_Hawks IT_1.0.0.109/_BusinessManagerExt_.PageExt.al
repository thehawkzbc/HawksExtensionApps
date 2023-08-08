pageextension 50264 "BusinessManagerExt" extends "Business Manager Role Center"
{
    actions
    {
        addafter(Action41)
        {
            group("Hawks Customised Reports")
            {
                Caption = 'Hawks Customised Reports';

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
