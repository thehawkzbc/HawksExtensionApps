pageextension 50270 "req. worksheet ext" extends "Req. Worksheet"
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
