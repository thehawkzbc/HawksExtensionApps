tableextension 50156 "HKSPTE Customer Ext" extends Customer // 18
{
    fields
    {
        field(50150; "Blocked Reason";Enum "HKSPTE Customer Blocked Reason")
        {
            Caption = 'Blocked Reason';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if not(rec."Blocked Reason" = "Blocked Reason"::" ")then if not rec.IsBlocked()then Error('Customer should be Blocked, before setting Blocked Reason code');
            end;
        }
        field(50151; "KYC Completed"; Boolean)
        {
            Caption = 'KYC Completed';
            DataClassification = ToBeClassified;
        }
        field(50152; "Agreement Expiry Date"; Date)
        {
            Caption = 'Agreement Expiry Date';
            DataClassification = ToBeClassified;
        }
        field(50153; "HKS Approved Limit"; Decimal)
        {
            Caption = 'Approval Limit';
            DataClassification = ToBeClassified;
        }
        field(50154; "HKS Temp Credit Limit"; Decimal)
        {
            Caption = 'Temporary Limit';
            DataClassification = ToBeClassified;
        }
        field(50155; "HKS Temp Credit Limit Date"; Date)
        {
            Caption = 'Temporary Limit Date';
            DataClassification = ToBeClassified;
        }
    }
}
