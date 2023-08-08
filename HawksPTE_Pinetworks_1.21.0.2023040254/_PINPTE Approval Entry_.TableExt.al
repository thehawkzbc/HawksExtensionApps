tableextension 50157 "PINPTE Approval Entry" extends "Approval Entry"
{
    fields
    {
        field(50150; "PINPTE CustVendNo"; Code[20])
        {
            Caption = 'Customer/Vendor No.';
            DataClassification = ToBeClassified;
        }
        field(50151; "PINPTE CustVendName"; Text[100])
        {
            Caption = 'Customer/Vendor Name';
            DataClassification = ToBeClassified;
        }
    }
    trigger OnBeforeInsert()
    var
        No: Code[20];
        Name: Text[100];
    begin
        GetCustVendorDetails(No, Name);
        "PINPTE CustVendNo":=No;
        "PINPTE CustVendName":=Name;
    end;
}
