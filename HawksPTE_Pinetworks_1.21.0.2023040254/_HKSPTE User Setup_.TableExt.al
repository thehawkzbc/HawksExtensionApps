tableextension 50155 "HKSPTE User Setup" extends "User Setup" // 91
{
    fields
    {
        field(50150; "Item Journal Approval"; boolean)
        {
            Caption = 'Item Journal Approval';
            DataClassification = ToBeClassified;
            InitValue = false;
        }
    }
}
