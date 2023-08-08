pageextension 50178 PageExtension50043 extends "Bank Account Ledger Entries"
{
    layout
    {
        addafter("Entry No.")
        {
            field("Statement Status"; Rec."Statement Status")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the statement status of the bank account ledger entry.';
            }
            field("Statement No."; Rec."Statement No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the bank account statement that the ledger entry has been applied to, if the Statement Status is Bank Account Ledger Applied.';
            }
            field("Statement Line No."; Rec."Statement Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the number of the statement line that has been applied to by this ledger entry line.';
            }
        }
    }
}
