pageextension 50184 PageExtension50057 extends "Finance Charge Memo List"
{
    layout
    {
        modify("Shortcut Dimension 1 Code")
        {
            ApplicationArea = All;
            Visible = true;
        }
        moveafter("Interest Amount"; "Shortcut Dimension 1 Code")
    }
}
