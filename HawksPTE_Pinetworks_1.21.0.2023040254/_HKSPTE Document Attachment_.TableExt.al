tableextension 50159 "HKSPTE Document Attachment" extends "Document Attachment"
{
    fields
    {
        field(50150; "HKSPTE Transferred To SP"; boolean)
        {
            Caption = 'Transferred To SP';
            DataClassification = ToBeClassified;
            InitValue = false;
        }
    }
}
