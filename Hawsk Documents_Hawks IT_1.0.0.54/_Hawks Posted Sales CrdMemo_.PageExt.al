pageextension 50035 "Hawks Posted Sales CrdMemo" extends "Posted Sales Credit Memo"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'
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
