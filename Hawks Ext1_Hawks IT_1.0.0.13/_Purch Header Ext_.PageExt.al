pageextension 50022 "Purch Header Ext" extends "Purchase Order List"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'
        addlast(Control1)
        {
            field("Vendor Quote No."; Rec."Vendor Quote No.")
            {
                Caption = 'Vendor Quote No.';
                ApplicationArea = All;
            }
            field("Vendor Invoice No."; Rec."Vendor Invoice No.")
            {
                Caption = 'Vendor Invoice No.';
                ApplicationArea = All;
            }
        }
    }
}
