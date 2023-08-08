tableextension 50080 "General Ledger Ext" extends "General Ledger Setup"
{
    fields
    {
        field(50000; "USD Conversion Factor"; Decimal)
        {
            Caption = 'USD Conversion Factor';
            DataClassification = ToBeClassified;
            DecimalPlaces = 5;
            InitValue = 1.0000000000;
        }
        field(50001; "Rate of Interest"; Decimal)
        {
            Caption = 'Rate of Interest';
            DataClassification = ToBeClassified;
            DecimalPlaces = 2;
            InitValue = 1.0000000000;
        }
    }
}
