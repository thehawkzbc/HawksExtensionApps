tableextension 50161 "HKSPTE Incoming Document" extends "Incoming Document"
{
    fields
    {
        field(50150; "HKSPTE Transferred To SP"; boolean)
        {
            Caption = 'HKSPTE Transferred To SP';
            DataClassification = ToBeClassified;
            InitValue = false;
        }
        field(50151; "HKSPTE Error To SP"; boolean)
        {
            Caption = 'Error Transfer To SP';
            DataClassification = ToBeClassified;
            InitValue = false;
        }
    }
}
