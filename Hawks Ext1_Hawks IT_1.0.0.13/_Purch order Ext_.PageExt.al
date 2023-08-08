pageextension 50023 "Purch order Ext" extends "Purchase Order"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'
        addlast(General)
        {
            field("Vendor Quote No."; Rec."Vendor Quote No.")
            {
                Caption = 'Vendor Quote No.';
                ApplicationArea = All;
            }
        }
    }
}
