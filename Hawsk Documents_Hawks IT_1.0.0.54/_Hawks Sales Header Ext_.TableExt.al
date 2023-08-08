tableextension 50075 "Hawks Sales Header Ext" extends "Sales Header"
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
        field(50079; "Country of Origin"; Text[120])
        {
            Caption = 'Country of Origin';
            DataClassification = ToBeClassified;
        }
        field(50080; "Country of Shipment"; Text[120])
        {
            Caption = 'Country of Shipment';
            DataClassification = ToBeClassified;
        }
    }
}
