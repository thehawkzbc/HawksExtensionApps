pageextension 50032 "Hawks Posted Invoice Ext" extends "Posted Sales Invoice"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'
        addlast("Work Description")
        {
            field("IMO No."; Rec."IMO No.")
            {
                Caption = 'IMO No.';
                ApplicationArea = All;
            }
            field("Vessel Name"; Rec."Vessel Name")
            {
                Caption = 'Vessel Name';
                ApplicationArea = All;
            }
            field("BDN No."; Rec."BDN No.")
            {
                Caption = 'BDN No.';
                ApplicationArea = All;
            }
            field("Delivery Port"; Rec."Delivery Port")
            {
                Caption = 'Delivery Port';
                ApplicationArea = All;
            }
        }
    }
}
