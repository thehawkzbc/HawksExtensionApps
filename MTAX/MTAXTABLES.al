table 60200 "PINTAX Maldives Tax Setup1"
{
    Caption = 'Tax Setup (Maldives)';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = SystemMetadata;
        }

        field(2; "Tax Activity Dimension"; Code[20])
        {
            TableRelation = Dimension.Code;
            Caption = 'Tax Activity Number Linked to Dimension';
            DataClassification = OrganizationIdentifiableInformation;
        }

        field(10; "InpTax Stmt Bus. Posting Fltr"; Text[100])
        {
            TableRelation = "VAT Business Posting Group";
            Caption = 'Input Tax Statement Bus. Posting Filter';
            DataClassification = SystemMetadata;
            ValidateTableRelation = false;
        }

        field(11; "InpTax Stmt Prod. Posting Fltr"; Text[100])
        {
            TableRelation = "VAT Product Posting Group";
            Caption = 'Input Tax Statement Prod. Posting Filter';
            DataClassification = SystemMetadata;
            ValidateTableRelation = false;
        }

        field(12; "InpTax Stmt Amount Fltr"; Text[100])
        {
            Caption = 'Input Tax Statement Amount Filter';
            DataClassification = SystemMetadata;
        }

        field(20; "Include Closed VAT Entries"; Boolean)
        {
            Caption = 'Incl. Closed VAT Entries';
            DataClassification = SystemMetadata;
        }

        field(21; "Include Reversed VAT Entries"; Boolean)
        {
            Caption = 'Incl. Reversed VAT Entries';
            DataClassification = SystemMetadata;
        }

        field(22; "Incl. Force Closed VAT Entries"; Boolean)
        {
            Caption = 'Include Force Closed VAT Entries';
            DataClassification = SystemMetadata;
        }
        field(23; "TaxActionName"; Code[20])
        {
            Caption = 'TaxActionName';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
    VAR
        RecordhasBeenRead: Boolean;

    procedure GetRecordOnce()
    begin
    end;
}

table 60201 "PINTAX Input Tax Stmt1"
{
    Caption = 'Input Tax Statement';
    DataClassification = ToBeClassified;
    TableType = Temporary;

    fields
    {
        field(1; RowNo; Integer)
        {
            Caption = 'Row No.';
            DataClassification = CustomerContent;
        }

        field(2; Type; Enum "General Posting Type")
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
        }

        field(3; "Document Type"; Enum "Gen. Journal Document Type")
        {
            Caption = 'Document Type';
            DataClassification = ToBeClassified;
        }

        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
        }

        field(5; "Document Date"; Date)
        {
            Caption = 'Document Date';
            DataClassification = ToBeClassified;
        }

        field(6; BillToPayTo; Code[20])
        {
            Caption = 'BillToPayTo';
            DataClassification = ToBeClassified;
        }

        field(7; "Vendor Name"; Text[100])
        {
            Caption = 'Vendor/Customer Name';
            DataClassification = ToBeClassified;
        }

        field(8; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
            DataClassification = ToBeClassified;
        }

        field(9; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
        }

        field(10; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            DataClassification = ToBeClassified;
        }

        field(11; Base; Decimal)
        {
            Caption = 'Base';
            DataClassification = ToBeClassified;
        }

        field(12; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }

        field(13; "Vat Bus. Posting Group"; Code[20])
        {
            Caption = 'Vat Bus. Posting Group';
            DataClassification = ToBeClassified;
        }

        field(14; "Vat Prod. Posting Group"; Code[20])
        {
            Caption = 'Vat Prod. Posting Group';
            DataClassification = ToBeClassified;
        }

        field(15; Closed; Boolean)
        {
            Caption = 'Closed';
            DataClassification = ToBeClassified;
        }

        field(16; Reversed; Boolean)
        {
            Caption = 'Reversed';
            DataClassification = ToBeClassified;
        }

        field(17; "Force Closed"; Boolean)
        {
            Caption = 'Force Closed';
            DataClassification = ToBeClassified;
        }

        field(18; "Tax Activity Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(19; "TaxActivityName"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; RowNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

}
