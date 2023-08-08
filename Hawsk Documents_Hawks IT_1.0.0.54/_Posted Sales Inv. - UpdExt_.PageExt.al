pageextension 50043 "Posted Sales Inv. - UpdExt" extends "Posted Sales Inv. - Update"
{
    layout
    {
        addlast(General)
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
