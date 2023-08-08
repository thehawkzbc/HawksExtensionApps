pageextension 50179 "PageExtension50044" extends "Sales Order Archives"
{
    layout
    {
        addafter("Sell-to Customer Name")
        {
            field("Transaction Type"; Rec."Transaction Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the number for the transaction type, for the purpose of reporting to INTRASTAT.';
            }
        }
    }
}
