pageextension 50265 "Sales Order Exten" extends "Sales Order"
{
    actions
    {
        addlast("&Print")
        {
            group(Process)
            {
                action(OrderDetails)
                {
                    Caption = 'Order Confirmation Details';
                    RunObject = page "Sales Comment List";
                    ApplicationArea = all;
                    RunPageLink = "Document Type"=field("Document Type"), "No."=field("No.");
                }
                action(OrderPrint)
                {
                    Caption = 'Order Confirmation Print';
                    RunObject = report "Order Confirmation Report";
                    ApplicationArea = all;
                    Image = Print;
                }
                action(ConfOrderPrint)
                {
                    Caption = 'Order Confirmation Print';
                    RunObject = report "Order Confirmation Report";
                    ApplicationArea = all;
                    Image = Print;
                }
                action(Email)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Send by &Email';
                    Image = Email;
                    ToolTip = 'Prepare to send the document by email. The Send Email window opens prefilled for the customer where you can add or change information before you send the email.';

                    trigger OnAction()
                    var
                        SalesHeader: Record "Sales Header";
                    begin
                        SalesHeader:=Rec;
                        SalesHeader.SetRange("No.", rec."No.");
                        CurrPage.SetSelectionFilter(SalesHeader);
                        SalesHeader.EmailRecords(true);
                    end;
                }
            }
        }
    }
}
