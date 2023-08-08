table 60051 "PIN Procurement Role Center1"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimaryKey; Code[250])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "PIN PO Open Purchase Orders"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Purchase Header" where(Status = const(Open), "Document Type" = const(Order)));
        }

        field(3; "PIN PO Pending IT Approvals"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Approval Entry" where(Status = const(Open), "Document Type" = const(Order), "PIN Role1" = const('IT')));
        }

        field(4; "PIN PO Pending Budg. Approvals"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Approval Entry" where(Status = const(Open), "Document Type" = const(Order), "PIN Role1" = const('Budget')));
        }

        field(5; "PIN PO Pending With Proc."; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Purchase Header" where(
                "Document Type" = const(Order),
                "PIN Email Sent" = const(false),
                Status = const(Released)));
        }

        field(6; "PIN PO Pending Arrival"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Purchase Line" where(
                "Document Type" = const(Order),
                "Completely Received" = const(false),
                "Expected Receipt Date" = field("PIN GTE Work Date Filter"),
                Quantity = filter(> 0),
                "PIN Email Sent" = const(true)
            ));
        }

        field(7; "PIN PO Arrival Overdue"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Purchase Line" where(
                "Document Type" = const(Order),
                "Completely Received" = const(false),
                "Expected Receipt Date" = field("PIN LT Work Date Filter"),
                Quantity = filter(> 0),
                "PIN Email Sent" = const(true)
            ));
        }

        field(8; "PIN PO Completely Received"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Purchase Header" where(
                "Document Type" = const(Order),
                "Completely Received" = const(true)
            ));
        }

        field(9; "PIN TO Inbound Orders"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Transfer Line" where("Qty. in Transit" = filter(> 0), "Transfer-to Code" = field("PIN User Default Location")));
        }

        field(10; "PIN TO Outbound Orders"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Transfer Line" where("Qty. in Transit" = filter(> 0), "Transfer-from Code" = field("PIN User Default Location")));
        }

        field(11; "PIN TO Open Transfer Orders"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Transfer Header" where(Status = const(Open)));
        }

        field(12; "PIN User Default Location"; Code[10])
        {
            FieldClass = FlowFilter;
        }

        field(13; "PIN LT Work Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }

        field(14; "PIN GTE Work Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    procedure SetUserDefaultLocationFilter()
    begin
    end;
}

table 60102 "PIN EffectivePermissionList1"
{
    DataClassification = CustomerContent;
    TableType = Normal;

    fields
    {
        field(1; LineNo; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }

        field(2; "User Security ID"; Guid)
        {
            Caption = 'User Security ID';
            TableRelation = User."User Security ID";
        }

        field(3; "Role ID"; Code[20])
        {
            Caption = 'Role ID';
            TableRelation = "Aggregate Permission Set"."Role ID";
        }

        field(4; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            TableRelation = Company.Name;
        }

        field(5; "User Name"; Code[50])
        {
            Caption = 'User Name';
        }

        field(6; "Role Name"; Text[30])
        {
            Caption = 'Role Name';
        }

        field(7; "App Name"; Text[250])
        {
            Caption = 'App Name';
        }

        field(8; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionMembers = TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System,,,,,,,,,;
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System,,,,,,,,,';
        }

        field(9; "Object ID"; Integer)
        {
            Caption = 'Object ID';
        }

        field(10; "Object Name"; Text[249])
        {
            Caption = 'Object Name';
        }

        field(11; "Read Permission"; Option)
        {
            Caption = 'Read Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = ,Yes,Indirect;
        }

        field(12; "Insert Permission"; Option)
        {
            Caption = 'Insert Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = ,Yes,Indirect;
        }

        field(13; "Modify Permission"; Option)
        {
            Caption = 'Modify Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = ,Yes,Indirect;
        }

        field(14; "Delete Permission"; Option)
        {
            Caption = 'Delete Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = ,Yes,Indirect;
        }

        field(15; "Execute Permission"; Option)
        {
            Caption = 'Execute Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = ,Yes,Indirect;
        }
    }

    keys
    {
        key(PK; LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    procedure RefreshData()
    begin
    end;
}

table 60103 "PIN Contact Balances1"
{
    Caption = 'Contact Balances';
    TableType = Temporary;
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Contact No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }

        field(2; "Contact Name"; Text[100])
        {
            Caption = 'Name';
            FieldClass = FlowField;
            CalcFormula = lookup(contact.Name where("No." = field("Contact No.")));
        }

        field(3; "Item Group"; Code[20])
        {
        }

        field(5; Customer; Code[20])
        {
        }

        field(6; Vendor; Code[20])
        {
        }

        field(10; CustomerCurrency; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Customer."Currency Code" where("No." = field(Customer)));
        }

        field(11; VendorCurrency; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor."Currency Code" where("No." = field(Vendor)));
        }

        field(20; CustomerBalance; Decimal)
        {
            FieldClass = FlowField;
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Customer No." = FIELD(Customer),
                                                                         "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                         "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Cust Balance';
            Editable = false;
        }

        field(22; VendorBalance; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Detailed Vendor Ledg. Entry".Amount WHERE("Vendor No." = FIELD(Vendor),
                                                                           "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                           "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                           "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Vend Balance';
            Editable = false;
            FieldClass = FlowField;
        }

        field(24; NetBalance; Decimal)
        {
            AutoFormatType = 1;
            Editable = false;
        }

        field(67; "Balance Due (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No." = FIELD(Customer),
                                                                                 "Initial Entry Due Date" = FIELD(UPPERLIMIT("Date Filter")),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Balance Due (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }

        field(55; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }

        field(56; "Global Dimension 1 Filter"; Code[20])
        {
            CaptionClass = '1,2,3';
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }

        field(57; "Global Dimension 2 Filter"; Code[20])
        {
            CaptionClass = '1,3,2';
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }

        field(111; "Currency Filter"; Code[10])
        {
            Caption = 'Currency Filter';
            FieldClass = FlowFilter;
            TableRelation = Currency;
        }
    }

    keys
    {
        key(PK; "Contact No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

}

table 60104 "PIN Inventory Activities Cue1"
{
    Caption = 'Inventory Activities Cue';
    DataClassification = ToBeClassified;
    ReplicateData = false;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }

        field(2; "TransferOrders - Inbound"; Integer)
        {
            CalcFormula = Count("Transfer Header" where("Transfer-to Code" = field("Location Filter"),
                                                        "Completely Received" = const(false),
                                                        Status = const(Released)));
            Caption = 'Inbound';
            FieldClass = FlowField;
        }

        field(3; "TransferOrders - Outbound"; Integer)
        {
            CalcFormula = Count("Transfer Header" where("Transfer-from Code" = field("Location Filter"),
                                                        "Completely Shipped" = const(false),
                                                        Status = const(Released)));
            Caption = 'Outbound';
            FieldClass = FlowField;
        }

        field(4; "TransferOrders - Arriving"; Integer)
        {
            CalcFormula = Count("Transfer Header" where("Transfer-to Code" = field("Location Filter"),
                                                        "Has Shipped Lines" = const(true)));
            Caption = 'Arriving';
            FieldClass = FlowField;
        }

        field(8; "TransferOrders - Inbound Open"; Integer)
        {
            CalcFormula = Count("Transfer Header" where("Transfer-to Code" = field("Location Filter"),
                                                        Status = const(Open)));
            Caption = 'Open Inbound Orders';
            FieldClass = FlowField;
        }

        field(9; "TransferOrders - Outbound Open"; Integer)
        {
            CalcFormula = Count("Transfer Header" where("Transfer-from Code" = field("Location Filter"),
                                                        Status = const(Open)));
            Caption = 'Open Outbound Orders';
            FieldClass = FlowField;
        }

        field(10; "TxfrLines - Arrivals"; Integer)
        {
            CalcFormula = Count("Transfer Line" where("Transfer-from Code" = field("Location Filter"),
                                                        "Qty. to Receive" = filter(> 0)));
            Caption = 'Arrival';
            FieldClass = FlowField;
        }

        field(11; "TxfrLines - Arrivals(overdue)"; Integer)
        {
            CalcFormula = Count("Transfer Line" where("Transfer-from Code" = field("Location filter"),
                                                        "Qty. to Receive" = filter(> 0),
                                                        "Receipt Date" = field("Overdue Date Filter")));
            Caption = 'Arrival (Overdue)';
            FieldClass = FlowField;
        }

        field(50; "User ID Filter"; Code[50])
        {
            Caption = 'User ID Filter';
            FieldClass = FlowFilter;
        }

        field(51; "Location Filter"; Code[10])
        {
            Caption = 'Location Filter';
            FieldClass = FlowFilter;
        }

        field(52; "Overdue Date Filter"; Date)
        {
            Caption = 'Overdue Date Filter';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    procedure SetLocationFilter()
    begin
    end;
}

table 60110 "PIN Setup1"
{
    Caption = 'PIN Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }

        field(2; "PIN WF User Group Default Role"; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Workflow User Group Default Role';
            InitValue = "Direct Approver";
        }

        field(10; "Journal Admin Team"; Code[10])
        {
            Caption = 'Journal Admin Team';
            DataClassification = ToBeClassified;
            TableRelation = Team;
        }

        field(11; "ExtDoc No. Mandatory-AutoMatch"; Boolean)
        {
            Caption = 'Ext Doc No. Mandatory for Auto Match';
            DataClassification = ToBeClassified;
            InitValue = false;
        }

        field(12; AutoTrackingEnabled; Boolean)
        {
            Caption = 'Auto Tracking Enabled';
            DataClassification = ToBeClassified;
            InitValue = false;
        }

        field(13; "Restrict Sales Price Change"; Boolean)
        {
            Caption = 'Restrict Sales Price Change';
            DataClassification = ToBeClassified;
            InitValue = false;
        }

        field(14; "Restrict Unappl Paym Posting"; Boolean)
        {
            Caption = 'Restrict Unapplied Payment Posting';
            DataClassification = ToBeClassified;
            InitValue = false;
        }

        field(15; "Keep Original Document No."; Boolean)
        {
            Caption = 'Do not replace Document No. with Posting No. Series.';
            DataClassification = ToBeClassified;
            InitValue = true;
        }

        field(16; "Bank Rec Enhanced Automatching"; Boolean)
        {
            Caption = 'Bank Recon. Enhanced Automatching';
            DataClassification = ToBeClassified;
            InitValue = false;
        }

        field(17; "Overr. VAT PPG Pre-paym. Err."; Boolean)
        {
            Caption = 'Override VAT Prod Posting Group Pre-Payment Error';
            DataClassification = ToBeClassified;
            InitValue = false;
        }

        field(18; "Set Rec. Name & Acc. Mandatory"; Boolean)
        {
            Caption = 'Set Rec. Name & Account Mandatory';
            DataClassification = ToBeClassified;
            InitValue = false;
        }

        field(19; "Restrict Unappl CSHRCP Posting"; Boolean)
        {
            Caption = 'Restrict Unapplied Cash Receipt Posting';
            DataClassification = ToBeClassified;
            InitValue = false;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    procedure GetRecordOnce()
    begin
    end;
}
//vikas
table 60111 "Workflow status batch"
{

    DataClassification = ToBeClassified;

    fields
    {
        field(1; id; Code[20])
        {
            DataClassification = ToBeClassified;

        }
    }


    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}


table 60112 "Workflow status line"
{

    DataClassification = ToBeClassified;

    fields
    {
        field(1; id; Code[20])
        {
            DataClassification = ToBeClassified;

        }
    }



    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}


