table 50150 "HawksCueTable"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimaryKey; Code[250])
        {
            DataClassification = ToBeClassified;
        }
        field(2; CheckToPrint; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Gen. Journal Line" where("Document Type"=filter(Payment), "Approval Status"=filter(Approved), "Check Printed"=filter(false), "Bank Payment Type"=filter("Computer Check")));
        }
        field(3; CheckPendingApproval; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Gen. Journal Line" where("Document Type"=filter(Payment), "Approval Status"=filter("Pending Approval"), "Check Printed"=filter(false), "Bank Payment Type"=filter("Computer Check")));
        }
        field(4; IBTransferPending; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Gen. Journal Line" where("Document Type"=filter(Payment), "Approval Status"=filter(Approved), "Bank Payment Type"=filter(IB)));
        }
        field(5; RTGSPending; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Gen. Journal Line" where("Document Type"=filter(Payment), "Approval Status"=filter(Approved), "Bank Payment Type"=filter(RTGS)));
        }
        field(6; TTPending; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Gen. Journal Line" where("Document Type"=filter(Payment), "Approval Status"=filter(Approved), "Bank Payment Type"=filter(TT)));
        }
        field(7; OnlinePayments; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Gen. Journal Line" where("Document Type"=filter(Payment), "Approval Status"=filter(Approved), "Bank Payment Type"=filter(OP)));
        }
        //accounts payable
        field(50; "Purchase Documents - BU10 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('10'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(51; "Purchase Documents - BU25 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('25'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(52; "Purchase Documents - BU35 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('35'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(53; "Purchase Documents - BU15 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('15'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(54; "Purchase Documents - BU20 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('20'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(55; "Purchase Documents - BU40 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('40'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(56; "Purchase Documents - BU45 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('45'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(57; "Purchase Documents - BU50 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('50'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(58; "Purchase Documents - BU55 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('55'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(59; "Purchase Documents - BU60 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('60'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(60; "Purchase Documents - BU65 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('65'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(61; "Purchase Documents - BU70 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('70'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(62; "Purchase Documents - BU75 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('75'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(63; "Purchase Documents - BU30 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('30'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
        field(64; "Purchase Documents - BU90 "; Integer)
        {
            CalcFormula = Count("Vendor Ledger Entry" where("Document Type"=FILTER(Invoice|"Credit Memo"), "Global Dimension 1 Code"=const('90'), Open=CONST(true)));
            Caption = 'Overdue Purchase Documents';
            FieldClass = FlowField;
        }
    }
    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }
}
