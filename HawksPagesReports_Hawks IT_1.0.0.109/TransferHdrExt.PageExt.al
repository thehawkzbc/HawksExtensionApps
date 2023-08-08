pageextension 50011 TransferHdrExt extends "Transfer Order"
{
    layout
    {
        addafter(Status)
        {
            field("Total Qty"; Rec."Total Qty")
            {
                ApplicationArea = All;
                CaptionClass = Caption;
                Editable = false;
                Enabled = false;
                ToolTip = 'Total Quantity';
                Caption = 'Total Qty';
            }
            field("Total Shipped Qty"; Rec."Total Shipped Qty")
            {
                ApplicationArea = All;
                CaptionClass = Caption;
                Editable = false;
                Enabled = false;
                ToolTip = 'Total Shipped Quantity';
                Caption = 'Total Shipped Qty';
            }
        }
    }
}
