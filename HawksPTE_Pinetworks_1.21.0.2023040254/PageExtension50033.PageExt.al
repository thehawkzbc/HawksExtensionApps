pageextension 50173 PageExtension50033 extends "Check Ledger Entries"
{
    layout
    {
        addafter("Entry No.")
        {
            field("User ID"; Rec."User ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the ID of the user who posted the entry, to be used, for example, in the change log.';
            }
        }
    }
}
