tableextension 50009 GLAccountExt extends "G/L Account"
{
    fields
    {
        field(50009; Status;Enum "GLApproval Status")
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
        }
        field(50010; "Date-Time Sent for Approval"; date)
        {
            Caption = 'Date-Time Sent for Approval';
            DataClassification = ToBeClassified;
        }
    }
}
