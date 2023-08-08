pageextension 50169 PageExtension50028 extends "Customer Ledger Entries"
{
    layout
    {
        addafter("Customer Name")
        {
            field("Sell-to Customer No."; Rec."Sell-to Customer No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Sell-to Customer No. field.';
            }
        }
        addafter("Due Date")
        {
            field("Closed at Date"; Rec."Closed at Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Closed at Date field.';
            }
        }
    }
}
