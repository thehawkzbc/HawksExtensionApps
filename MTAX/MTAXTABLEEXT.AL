tableextension 60200 "PINTAX Tax VAT Entry1" extends "VAT Entry"
{
    fields
    {
        field(60200; "PINTAX Tax Activity Number1"; Integer)
        {
            Caption = 'Tax activity number';
            Description = 'Tax activity number provided by MIRA - Defaulted from Outlet dimension';
            Editable = false;
            DataClassification = SystemMetadata;
        }

        field(60201; "PINTAX Force Closed1"; Boolean)
        {
            Caption = 'Force Closed';
            DataClassification = SystemMetadata;
            InitValue = false;
            Editable = true;
        }
    }

    keys
    {
        key("PINTAX Tax Activity Number1"; "PINTAX Tax Activity Number1")
        {
        }

        key("PINTAX Force Closed1"; "PINTAX Force Closed1")
        {
        }
    }

    fieldgroups
    {
    }

}

tableextension 60201 "PINTAX Tax Dimension Value1" extends "Dimension Value"
{
    fields
    {
        field(60200; "PINTAX Tax Activity Number1"; Integer)
        {
            Caption = 'Tax Activity Number';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key("PINTAX Tax Activity Number1"; "PINTAX Tax Activity Number1")
        {
        }
    }

    fieldgroups
    {
    }



}
