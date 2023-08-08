pageextension 50250 "Physical inv Journal Ext" extends "Phys. Inventory Journal"
{
    layout
    {
        // Add changes to page layout here
        addafter(Amount)
        {
            field("Transaction Type"; Rec."Transaction Type")
            {
                ApplicationArea = All;
            }
        }
    }
    var myInt: Integer;
}
