pageextension 50003 PageExtension50006_62459 extends "Purchase Order"
{
    layout
    {
        addafter("CIT Acknowledgement Reason")
        {
            field("Location Code62459"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
        }
        moveafter("Location Code62459"; "Shortcut Dimension 1 Code")
        moveafter("Shortcut Dimension 1 Code"; "Shortcut Dimension 2 Code")
    }
}
