pageextension 50036 "Hawks Sales Invoice Ext" extends "Sales Invoice"
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
            field("Country of Origin"; Rec."Country of Origin")
            {
                Caption = 'Country Of Origin';
                ApplicationArea = All;
            }
            field("Country of Shipment"; Rec."Country of Shipment")
            {
                Caption = 'Country Of Shipment';
                ApplicationArea = All;
            }
        }
    }
}
