pageextension 50266 "Purch. Order Ext" extends "Purchase Order"
{
    actions
    {
        addlast(Print)
        {
            group(Process)
            {
                action(OrderPrint)
                {
                    Caption = 'Bunker Nomincation';
                    RunObject = report "Bunker nomination";
                    ApplicationArea = all;
                    Image = Print;
                //runre = "Document Type" = field("Document Type"), "No." = field("No.");
                }
            }
        }
    }
}
