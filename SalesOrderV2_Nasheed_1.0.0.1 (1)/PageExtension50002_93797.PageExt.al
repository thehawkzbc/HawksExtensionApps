pageextension 50002 PageExtension50002_93797 extends "Sales Order"
{
    layout
    {
        addafter("Payment Method Code")
        {
            field("Shortcut Dimension 1 Code29678"; Rec."Shortcut Dimension 1 Code")
            {
                ApplicationArea = All;
            }
            field("Shortcut Dimension 2 Code18025"; Rec."Shortcut Dimension 2 Code")
            {
                ApplicationArea = All;
            }
            field("Location Code85099"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
        }
    }
}
