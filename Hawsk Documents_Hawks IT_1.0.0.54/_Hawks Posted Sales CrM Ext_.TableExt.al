tableextension 50079 "Hawks Posted Sales CrM Ext" extends "Sales Cr.Memo Header"
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
