page 50408 "HKS CP Sales Invoice"
{
    APIGroup = 'CP';
    APIPublisher = 'Pinetworks';
    APIVersion = 'v1.0';
    Caption = 'HKSCSISalesInvoice';
    DelayedInsert = true;
    EntityName = 'SalesInvoice';
    EntitySetName = 'SalesInvoices';
    PageType = API;
    SourceTable = "Sales Invoice Header";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No"; Rec."No.")
                {
                    Editable = false;
                }
                field("customer_no"; Rec."Sell-to Customer No.")
                {
                    Editable = false;
                }
                field("order_no"; Rec."Order No.")
                {
                    Editable = false;
                }
                field(filename; filename)
                {
                    Editable = false;
                }
                field("Posting_Date"; Rec."Posting Date")
                {
                    Editable = false;
                }
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        DocumentAttachment: Record "Document Attachment";
    begin
        DocumentAttachment.SetRange("No.", Rec."No.");
        DocumentAttachment.SetFilter("File Name", '*GDN*');
        if DocumentAttachment.FindFirst()then filename:=DocumentAttachment."File Name";
    end;
    var filename: Text;
}
