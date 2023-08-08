pageextension 50267 "Invt. Shipment Subform ext" extends "Invt. Shipment Subform"
{
    layout
    {
        addafter(Description)
        {
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                Caption = 'Source Name';
                ApplicationArea = All;
            }
            field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
            {
                Caption = 'Source Code';
                ApplicationArea = All;
            }
        }
    }
}
