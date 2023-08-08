page 50155 "HKS CP Users"
{
    ApplicationArea = All;
    Caption = 'Customer Portal Users';
    PageType = List;
    SourceTable = "HKS CP User";
    UsageCategory = Lists;
    DataCaptionFields = "Customer No.";
    Editable = false;
    CardPageId = "HKS CP User Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Username; Rec.Username)
                {
                    ToolTip = 'Specifies the value of the Username field.';
                    ApplicationArea = All;
                }
                field(Password; Rec.Password)
                {
                    ToolTip = 'Specifies the value of the Password field.';
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
