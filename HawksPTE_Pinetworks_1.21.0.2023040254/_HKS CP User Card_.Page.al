page 50156 "HKS CP User Card"
{
    Caption = 'Customer Portal User';
    PageType = Card;
    SourceTable = "HKS CP User";
    DataCaptionFields = "Customer No.", Username;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.';
                    ApplicationArea = All;
                }
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
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.';
                    ApplicationArea = All;
                    Visible = false;
                }
            }
        }
    }
}
