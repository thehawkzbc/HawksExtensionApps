tableextension 60051 "PIN Sales Line1" extends "Sales Line"
{
    fields
    {
        field(60050; "PIN Vendor Item No.1"; Text[50])
        {
            Caption = 'Vendor Item No.';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

    var
        pinbasecodeunit: Codeunit "PINetworks Base";

}

tableextension 60052 "PIN Sales Invoice Line1" extends "Sales Invoice Line"
{
    fields
    {
        field(60050; "PIN Vendor Item No.1"; Text[50])
        {
            Caption = 'Vendor Item No.';
            FieldClass = FlowField;
            CalcFormula = lookup(Item."Vendor Item No." where("No." = field("No.")));
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }
    var
        pinbasecodeunit: Codeunit "PINetworks Base";

}

tableextension 60053 "PIN Item1" extends Item
{
    fields
    {
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60054 "PIN Cust Ledger Entry1" extends "Cust. Ledger Entry"
{
    fields
    {
        field(60101; "PIN Gen. Customer Name1"; Text[100])
        {
            Caption = 'Gen. Customer Name';
            DataClassification = CustomerContent;
            Editable = false;
        }

        field(60102; "PIN Gen. Customer ID No.1"; Code[20])
        {
            Caption = 'Gen. Customer ID No.';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60055 "PIN Gen. Journal Batch1" extends "Gen. Journal Batch"
{
    fields
    {
        field(60101; "PIN Payment Method1"; Code[10])
        {
            Caption = 'Payment Method';
            DataClassification = ToBeClassified;
            TableRelation = "Payment Method";
        }

        field(60050; "PIN Set Recip. Ba. Acc. Mdt1"; Boolean)
        {
            Caption = 'Set Recipient Bank Account mandatory';
            DataClassification = ToBeClassified;
            InitValue = false;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60056 "PIN Sales Shipment Line1" extends "Sales Shipment Line"
{
    fields
    {
        field(60050; "PIN Vendor Item No.1"; Text[50])
        {
            Caption = 'Vendor Item No.';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60057 "PIN Transfer Line1" extends "Transfer Line"
{
    fields
    {
        field(60050; "PIN Vendor Item No.1"; Text[50])
        {
            Caption = 'Vendor Item No.';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }
    var
        pinbasecodeunit: Codeunit "PINetworks Base";

}

tableextension 60058 "PIN Transfer Shipment Line1" extends "Transfer Shipment Line"
{
    fields
    {
        field(60050; "PIN Vendor Item No.1"; Text[50])
        {
            Caption = 'Vendor Item No.';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60059 "PIN Transfer Receipt Line1" extends "Transfer Receipt Line"
{
    fields
    {
        field(60050; "PIN Vendor Item No.1"; Text[50])
        {
            Caption = 'Vendor Item No.';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60060 "PIN Warehouse Activity Line1" extends "Warehouse Activity Line"
{
    fields
    {
        field(60001; "PIN Item Bin Quantity"; Integer)
        {
            Caption = 'PIN Item Bin Quantity';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

    procedure GetItemBinQuantity(): Decimal
    begin
    end;
}

tableextension 60061 "PIN Whse. Worksheet Line1" extends "Whse. Worksheet Line"
{
    fields
    {
        field(60001; pinitemtobinquantity; Integer)
        {
            Caption = 'pin item to bin quantity';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

    procedure GetItemToBinQuantity(): Decimal
    begin
    end;
}

tableextension 60062 "PIN Item Variant1" extends "Item Variant"
{
    fields
    {
        field(60050; "PIN Vendor Item Code1"; Code[50])
        {
            Caption = 'Vendor Item Code';
            DataClassification = ToBeClassified;
            InitValue = 'false';

        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60063 "PIN Customer1" extends Customer
{
    fields
    {
    }

    keys
    {
    }

    fieldgroups
    {
    }

    procedure CalcCustomerBalance(): Decimal
    begin
    end;
}

tableextension 60064 "PIN Sales Shipment Header1" extends "Sales Shipment Header"
{
    fields
    {
        field(60050; "PIN Total Qty Shipped1"; Decimal)
        {
            Caption = 'Total Quantity Shipped';
            FieldClass = FlowField;
            CalcFormula = sum("Sales Shipment Line".Quantity where("Document No." = field("No.")));
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60065 "PIN Vendor Ledger Entry1" extends "Vendor Ledger Entry"
{
    fields
    {
        field(60050; "PIN Agreement No.1"; Text[50])
        {
            Caption = 'Agreement No.';
        }

        field(60051; "PIN Start Date1"; Date)
        {
            Caption = 'Start Date';
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60066 "PIN Purch. Inv. Header1" extends "Purch. Inv. Header"
{
    fields
    {
        field(60107; "PIN Recipient Bank Account1"; Code[20])
        {
            Caption = 'Recipient Bank Account';
            DataClassification = ToBeClassified;
            TableRelation = "Vendor Bank Account".Code where("Vendor No." = field("Buy-from Vendor No."));
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60101 "PIN Post Code1" extends "Post Code"
{
    fields
    {
        field(60101; "Atoll Code1"; Code[3])
        {
            Caption = 'Atoll Code';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60102 "PIN G/L Account1" extends "G/L Account"
{
    fields
    {
        field(60101; "PIN Responsibility Center1"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center".Code;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

    procedure SetSecurityFilterOnRespCenter()
    begin
    end;

    procedure GetGLFilter(UserCode: Text): Code[10]
    begin
    end;

    [IntegrationEvent(False, False)]
    local procedure OnBeforeSetSecurityFilterOnRespCenter(var GLAccount: Record "G/L Account"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(False, False)]
    local procedure OnAfterGetGLFilter(var UserSetup: Record "User Setup"; var UserRespCenter: Code[10])
    begin
    end;
}

tableextension 60103 "PIN Workflow User GroupMember1" extends "Workflow User Group Member"
{
    fields
    {
        field(60101; "PIN Role1"; Text[50])
        {
            Caption = 'Role';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60111 vatentrymv1 extends "VAT Entry"
{
    fields
    {
        field(60111; Name1; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Vendor".Name where("No." = field("Bill-to/Pay-to No.")));
            Editable = false;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60112 "PIN User Setup1" extends "User Setup"
{
    fields
    {
        field(60110; "PIN Can Ship1"; Boolean)
        {
            Caption = 'Can Ship';
            Description = 'Whether the user can post shipping documents';
        }

        field(60111; "PIN Can Invoice1"; Boolean)
        {
            Caption = 'Can Invoice';
            Description = 'Whether the user can post invoice documents';
        }

        field(60113; "PIN Void Check1"; Boolean)
        {
            Caption = 'Void Check';
            Description = 'Whether the user can void checks';
        }

        field(60112; Location1; Code[10])
        {
            Caption = 'Default location';
            DataClassification = ToBeClassified;
            Description = 'Default location for sales and purchase documents by the user';
            TableRelation = Location.Code;
        }

        field(60114; "PIN User Setup Admin1"; Boolean)
        {
            Caption = 'User Setup Admin';
            Description = 'Whether this user is a user setup administrator';
        }

        field(60115; "PIN GL Resp. Ctr. Filter1"; Code[10])
        {
            Caption = 'G/L Resp. Ctr. Filter';
            TableRelation = "Responsibility Center".Code;
        }

        field(60116; "PIN Can Edit Sales Price1"; Boolean)
        {
            Caption = 'Can Edit Sales Price';
            Description = 'Whether this user can edit price on sales documents (Quote, Order & Invoice)';
        }

        field(60117; "PIN Designation1"; Text[100])
        {
            Caption = 'Designation';
            Description = 'Designation of the user';
            InitValue = "false";
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60113 PINGenJournalLine1 extends "Gen. Journal Line"
{
    fields
    {
        field(60110; "Approval Status1"; Enum "General Journal Line Approval Status")
        {
            DataClassification = SystemMetadata;
            Editable = false;
        }

        field(60101; "PIN Gen. Customer Name1"; Text[100])
        {
            Caption = 'Gen. Customer Name';
            DataClassification = CustomerContent;
            Editable = true;
        }

        field(60102; "PIN Gen. Customer ID No.1"; Code[20])
        {
            Caption = 'Gen. Customer ID No.';
            DataClassification = CustomerContent;
            Editable = true;
        }

        field(60103; "PIN Agreement No.1"; Text[50])
        {
            Caption = 'Agreement No.';
        }

        field(60104; "PIN Start Date1"; Date)
        {
            Caption = 'Start Date';
        }

        field(60105; "PIN No. Of Rec. Agreements1"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Gen. Journal Line" where("PIN Agreement No." = filter('<>')));
        }

        field(60106; "PIN Expired Rec. Agreements1"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Gen. Journal Line" where("PIN Agreement No." = filter('<>'), "Expiration Date" = field("PIN Expired Rec. Agreements DF")));
        }

        field(60107; "PIN Expired Rec. AgreementsDF"; Date)
        {
            FieldClass = FlowFilter;
        }

        field(60108; "PIN Expiring in 3 Months1"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Gen. Journal Line" where("PIN Agreement No." = filter('<>'), "Expiration Date" = field("PIN Expiring in 3 Months DF")));
        }

        field(60109; "PIN Expiring in 3 Months DF1"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(60112; "PIN SystemCreatedBy1"; Text[50])
        {
            Caption = 'PIN System CreatedBy';
        }
        field(60111; "pin system modifiedby1"; Text[50])
        {
            Caption = 'pin system modifiedby';
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60114 "PIN Approval Entry1" extends "Approval Entry"
{
    fields
    {
        field(60101; "PIN WF User Group1"; Code[20])
        {
            Caption = 'PIN WF User Group';
            DataClassification = ToBeClassified;
            TableRelation = "Workflow User Group".Code;
            Editable = false;
        }

        field(60102; "PIN Role1"; Text[50])
        {
            Caption = 'Role';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60116 "PIN Sales Header1" extends "Sales Header"
{
    fields
    {
        field(60101; "PIN Gen. Customer Name1"; Text[100])
        {
            Caption = 'Gen. Customer Name';
            DataClassification = CustomerContent;
        }

        field(60102; "PIN Gen. Customer ID No.1"; Code[20])
        {
            Caption = 'Gen. Customer ID No.';
            DataClassification = CustomerContent;
        }

        field(60110; "Payment Reference1"; Code[50])
        {
            Caption = 'Payment Reference';
            DataClassification = ToBeClassified;
        }

        field(60111; "PIN Credit Limit1"; Decimal)
        {
            Caption = 'Customer Credit limit';
            FieldClass = FlowField;
            AutoFormatType = 1;
            CalcFormula = lookup("Customer"."Credit Limit (LCY)" where("No." = field("Bill-to Customer No.")));
        }

        field(60112; "PIN Cust. Amount Overdue1"; Decimal)
        {
            Caption = 'Customer Overdue Amount';
            FieldClass = FlowField;
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" Where("Customer No." = FIELD("Bill-to Customer No."), "Initial Entry Due Date" = FIELD(UPPERLIMIT("Date Filter"))));
        }

        field(60113; "PIN Approved Date1"; DateTime)
        {
            Caption = 'Approved Date';
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(60114; "PIN Approver1"; Text[80])
        {
            Caption = 'Approver';
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(60115; "PIN Line DiscounAmount Total"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Line Discount Amount" WHERE("Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.")));
            Caption = 'Line Discount Amount Total';
            Editable = false;
            FieldClass = FlowField;
        }

        field(60116; "MVUIREP PIN Cust. Amount Overdue"; Code[10])
        {
            Caption = 'MVUIREP PIN Cust. Amount Overdue';
            DataClassification = ToBeClassified;
        }
        field(60117; "mvuirep payment reference"; Code[50])
        {
            Caption = 'mvuirep payment reference1';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
    }

    fieldgroups
    {
    }

    procedure CheckCustomerHasOverdue(): Decimal
    begin
    end;

    procedure CheckCustomerBalance(): Decimal
    begin
    end;

    procedure CustomerBalanceGreaterThanZero()
    begin
    end;

    procedure CustomerBalanceNotGreaterThanZero()
    begin
    end;

    procedure CustomerHasOverdueBalance()
    begin
    end;

    procedure CustomerHasOverdueBalance(NotificationId: Guid)
    begin
    end;

    procedure CustomerHasNoOverdueBalance()
    begin
    end;

    [IntegrationEvent(True, False)]
    procedure OnCustomerHasOverdueBalance(NotificationId: Guid)
    begin
    end;

    [IntegrationEvent(True, False)]
    procedure OnCustomerHasNoOverdueBalance()
    begin
    end;

    [IntegrationEvent(True, False)]
    procedure OnCustomerBalanceGreaterThanZero(NotificationId: Guid)
    begin
    end;

    [IntegrationEvent(True, False)]
    procedure OnCustomerBalanceNotGreaterThanZero()
    begin
    end;
}

tableextension 60120 "PIN Detailed Emp Ledger Entry1" extends "Detailed Employee Ledger Entry"
{
    fields
    {
    }

    keys
    {
        key(pinkey3ss; "Applied Empl. Ledger Entry No.")

        {
        }
    }

    fieldgroups
    {
    }

}

tableextension 60121 "PIN Purchase Header1" extends "Purchase Header"
{
    fields
    {
        field(60101; "PIN Priority1"; Enum "PIN Priority")
        {
            Caption = 'PIN Priority';
            DataClassification = ToBeClassified;
            InitValue = Normal;
        }

        field(60102; "PIN Approved Date1"; DateTime)
        {
            Caption = 'Approved Date';
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(60103; "PIN Approver1"; Text[80])
        {
            Caption = 'Approver';
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(60104; "PIN Email Sent1"; Boolean)
        {
            Caption = 'Email Sent';
            DataClassification = ToBeClassified;
        }

        field(60105; "PIN Last Email Sent Time1"; DateTime)
        {
            Caption = 'Last Email Sent Time';
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(60106; "PIN Amount Including Tax(LCY)"; Decimal)
        {
            Caption = 'Amount Including Tax (LCY)';
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(60107; "PIN Recipient Bank Account1"; Code[20])
        {
            Caption = 'Recipient Bank Account';
            DataClassification = ToBeClassified;
            TableRelation = "Vendor Bank Account".Code where("Vendor No." = field("Buy-from Vendor No."));
        }
        field(60108; "pin system modifiedby1"; Text[100])
        {
            Caption = 'pin system modifiedby';
            DataClassification = ToBeClassified;
        }
        field(60109; "PIN SystemCreatedBy1"; Text[100])
        {
            Caption = 'PIN SystemCreatedBy';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }
    var
        pinbase: Codeunit "PINetworks Base";

}

tableextension 60122 "PIN Purchase Line1" extends "Purchase Line"
{
    fields
    {
        field(60101; "PIN Priority1"; Enum "PIN Priority")
        {
            Caption = 'PIN Priority';
            DataClassification = ToBeClassified;
        }

        field(60102; "PIN Email Sent1"; Boolean)
        {
            Caption = 'Email Sent';
            FieldClass = FlowField;
            CalcFormula = lookup("Purchase Header"."PIN Email Sent" where("No." = field("Document No.")));
        }
        field(60103; "PIN Vendor Item No.1"; Code[20])
        {
            Caption = 'pin vendor item no';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60123 "PIN Employee Ledger Entry1" extends "Employee Ledger Entry"
{
    fields
    {
        field(60120; "PIN External Document No.1"; Code[35])
        {
            Caption = 'External Document No.';
        }
    }

    keys
    {
        key(pinkey2; "Document Type", "Employee No.", "Posting Date", "Currency Code")
        {
        }
    }

    fieldgroups
    {
    }

}

tableextension 60124 "PIN Bin Content1" extends "Bin Content"
{
    fields
    {
        field(60101; "Item Description1"; Text[100])
        {
            Caption = 'Item Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Item.Description where("No." = field("Item No.")));
            Editable = false;
        }
        field(60102; "Description1"; text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
    }

    fieldgroups
    {
    }

}

tableextension 60125 "PIN Bank Acc. Reconciliation1" extends "Bank Acc. Reconciliation"
{
    fields
    {
    }

    keys
    {
    }

    fieldgroups
    {
    }

    procedure PINMatchCandidateFilterDate(): Date
    begin
    end;
}

tableextension 60126 "PIN Bank Account1" extends "Bank Account"
{
    fields
    {
        field(60101; "PIN Responsibility Center1"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center".Code;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

    procedure SetSecurityFilterOnRespCenter()
    begin
    end;

    procedure GetBankFilter(UserCode: Text): Code[10]
    begin
    end;

    [IntegrationEvent(False, False)]
    local procedure OnBeforeSetSecurityFilterOnRespCenter(var GLAccount: Record "Bank Account"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(False, False)]
    local procedure OnAfterGetBankFilter(var UserSetup: Record "User Setup"; var UserRespCenter: Code[10])
    begin
    end;
}

tableextension 60127 "PIN Sales Invoice Header1" extends "Sales Invoice Header"
{
    fields
    {
        field(60101; "PIN Gen. Customer Name11"; Text[100])
        {
            Caption = 'Gen. Customer Name';
            DataClassification = CustomerContent;
            Editable = false;
        }

        field(40102; "PIN Gen. Customer ID No.1"; Code[20])
        {
            Caption = 'Gen. Customer ID No.';
            DataClassification = CustomerContent;
            Editable = false;
        }

        field(60103; "PIN Line DiscountAmount Total"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Invoice Line"."Line Discount Amount" WHERE("Document No." = FIELD("No.")));
            Caption = 'Line Discount Amount Total';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }


}
//vikas
tableextension 60128 pincompanyinformation extends "Company Information"
{
    fields
    {
        field(60001; "PIN Registration No.1"; code[50])
        {
            Caption = 'PIN Registration No.1';
            DataClassification = ToBeClassified;
        }
    }


    var
        myInt: Integer;
}



//vikas
// tableextension 60130 "pinuser1" extends User

// {
//     fields
//     {
//         field(60001; "pin desgination1"; Text[50])
//         {
//             Caption = 'pin desgination';
//             DataClassification = ToBeClassified;
//         }
//     }


//     var
//         myInt: Integer;
// }
