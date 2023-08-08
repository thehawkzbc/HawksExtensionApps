tableextension 50077 "Hawks Sales ShipIv Ext" extends "Sales Invoice Header"
{
    fields
    {
        field(50075; "Vessel Name"; Text[50])
        {
            Caption = 'Vessel Name';
            DataClassification = ToBeClassified;
        }
        field(50076; "IMO No."; Code[20])
        {
            Caption = 'IMO No.';
            DataClassification = ToBeClassified;
        }
        field(50077; "BDN No."; Code[20])
        {
            Caption = 'BDN No.';
            DataClassification = ToBeClassified;
        }
        field(50078; "Delivery Port"; Text[50])
        {
            Caption = 'Delivery Port';
            DataClassification = ToBeClassified;
        }
    }
}
