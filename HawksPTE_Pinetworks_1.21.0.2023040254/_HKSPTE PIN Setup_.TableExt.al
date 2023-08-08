tableextension 50160 "HKSPTE PIN Setup" extends "PIN Setup"
{
    fields
    {
        field(50150; "HKSPTE SP Connector Txfr Limit"; Integer)
        {
            Caption = 'SP Connector Transfer Limit';
            DataClassification = ToBeClassified;
            InitValue = 1000;
        }
        field(50151; "HKSPTE Sales TnC"; Media)
        {
            Caption = 'Sales Terms and Conditions PDF';
        }
        // TODO: Remove when latest mvui is ready to be deployed
        field(50152; "HKSPTE Overr. VAT PPG. Err."; Boolean)
        {
            Caption = 'HKS Override VAT Prod Posting Group Pre-Payment Error';
            DataClassification = ToBeClassified;
            InitValue = false;
        }
    }
}
