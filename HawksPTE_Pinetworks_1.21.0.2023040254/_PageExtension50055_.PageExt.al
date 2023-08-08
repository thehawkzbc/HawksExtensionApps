pageextension 50183 "PageExtension50055" extends "Purchase Order Subform"
{
    layout
    {
        modify("Prepayment %")
        {
            Visible = true;
            ApplicationArea = All;
        }
        moveafter("Unit of Measure Code"; "Prepayment %")
    }
}
