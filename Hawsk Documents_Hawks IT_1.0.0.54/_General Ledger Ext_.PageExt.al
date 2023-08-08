pageextension 50029 "General Ledger Ext" extends "General Ledger Setup"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'
        addlast(General)
        {
            field("USD Conversion Factor"; Rec."USD Conversion Factor")
            {
                Caption = 'USD/LCY Conversion Factor';
                ApplicationArea = All;
            }
            field("Rate of Interest"; Rec."Rate of Interest")
            {
                Caption = 'Rate of Interest';
                ApplicationArea = All;
            }
        }
    }
}
