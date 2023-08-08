page 50409 "HKS CP Sales Invoice PDF"
{
    APIGroup = 'CP';
    APIPublisher = 'Pinetworks';
    APIVersion = 'v1.0';
    Caption = 'SalesInvoicePDF';
    DelayedInsert = true;
    EntityName = 'SalesInvoicePDF';
    EntitySetName = 'SalesInvoicePDFs';
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
                field("sales_invoice"; PictureAsJson)
                {
                    Editable = false;
                }
            }
        }
    }
    var PictureAsJson: Text;
    trigger OnAfterGetRecord()
    var
        HKSCPGetPdfAsJson: Codeunit "HKSCP GetPdfAsJson";
    begin
        PictureAsJson:=HKSCPGetPdfAsJson.GetInvoicePdfAsJson(Rec."No.");
    end;
}
