pageextension 50269 "requisition Line ext" extends "Requisition Lines"
{
    layout
    {
        addafter(Description)
        {
            field("Available Qty"; Rec."Available Qty")
            {
                ApplicationArea = All;
            }
        }
    }
}
