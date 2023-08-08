pageextension 50176 "PageExtension50040" extends "Posted Sales Shipments"
{
    layout
    {
        addafter("No.")
        {
            field("Order No."; Rec."Order No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the number of the sales order that this invoice was posted from.';
            }
        }
    }
}
