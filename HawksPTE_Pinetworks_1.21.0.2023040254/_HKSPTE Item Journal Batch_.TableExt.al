tableextension 50150 "HKSPTE Item Journal Batch" extends "Item Journal Batch" // 233
{
    fields
    {
        field(50150; "Require Approval"; Boolean)
        {
            Caption = 'Require Approval';
            DataClassification = ToBeClassified;
            InitValue = false;
        }
    }
}
