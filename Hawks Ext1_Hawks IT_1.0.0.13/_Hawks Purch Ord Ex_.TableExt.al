tableextension 50020 "Hawks Purch Ord Ex" extends "Purchase Header"
{
    fields
    {
        field(50075; "Vendor Quote No."; Code[20])
        {
            Caption = 'Vendor Quote No.';
            DataClassification = ToBeClassified;
        }
    }
}
