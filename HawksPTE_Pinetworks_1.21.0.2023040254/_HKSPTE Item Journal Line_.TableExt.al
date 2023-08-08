tableextension 50154 "HKSPTE Item Journal Line" extends "Item Journal Line" // 83
{
    fields
    {
        field(50150; Approved; boolean)
        {
            Caption = 'Approved';
            DataClassification = ToBeClassified;
            InitValue = false;
        }
    }
}
