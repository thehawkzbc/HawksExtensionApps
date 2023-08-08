pageextension 50195 PageExtension50018 extends "Item Ledger Entries"
{
    layout
    {
        modify("Shortcut Dimension 5 Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
        addafter("Shortcut Dimension 5 Code")
        {
            field("Transaction Type"; Rec."Transaction Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Transaction Type field.';
            }
        }
    }
}
