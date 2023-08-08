pageextension 50186 "PageExtension50005" extends "Posted Purchase Receipts"
{
    layout
    {
        addafter("Buy-from Vendor Name")
        {
            field("Order No."; Rec."Order No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Order No. field.';
            }
        }
        modify("Buy-from Vendor Name")
        {
            Width = 44;
        }
    }
}
