pageextension 50400 "HKS CP Customer Card" extends "Customer Card"
{
    layout
    {
        addafter(Shipping)
        {
            group(CustomerPortal)
            {
                field("CP Password"; Rec."CP Password")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CP Password field.';
                }
                field("Customer Type"; Rec."Customer Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Type field.';
                }
                field("Identification No"; Rec."Identification No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Identification No field.';
                }
                field("CP Status"; Rec."CP Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CP Status field.';
                }
                field("Contact Name"; Rec."Contact Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contact Name field.';
                }
            }
        }
    }
}
