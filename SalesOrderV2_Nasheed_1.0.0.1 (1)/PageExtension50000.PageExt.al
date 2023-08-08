pageextension 50000 PageExtension50000 extends "Sales Order Subform"
{
    layout
    {
        addafter("Unit of Measure Code")
        {
            field("Location Code52537"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
        }
    }
}
