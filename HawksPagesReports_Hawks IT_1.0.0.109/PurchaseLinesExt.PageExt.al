pageextension 50251 PurchaseLinesExt extends "Purchase Order Subform"
{
    layout
    {
        addafter("Qty. to Invoice")
        {
            field("Depreciation Book Code"; Rec."Depreciation Book Code")
            {
                ApplicationArea = All;
            }
        }
    }
    var myInt: Integer;
}
