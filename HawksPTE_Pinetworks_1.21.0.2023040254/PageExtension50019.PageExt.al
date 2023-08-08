pageextension 50194 PageExtension50019 extends "General Ledger Entries"
{
    layout
    {
        addafter("Shortcut Dimension 4 Code")
        {
            field("Journal Batch Name"; Rec."Journal Batch Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Journal Batch Name field.';
            }
        }
    }
}
