tableextension 50151 "PIN Vat Entry Cancel" extends "VAT Entry" // 254
{
    fields
    {
        field(50151; "Force Closed -removed"; Boolean)
        {
            ObsoleteState = Removed;
            ObsoleteReason = 'Replaced by Tax Localization extension';
            Caption = 'Force Closedx';
            DataClassification = ToBeClassified;
            InitValue = false;
            Editable = true;
        }
    }
}
