page 50401 "HKS CP Cust Ledger Entry"
{
    APIGroup = 'CP';
    APIPublisher = 'Pinetworks';
    APIVersion = 'v1.0';
    Caption = 'hKSCPCustLedgerEntry';
    DelayedInsert = true;
    InsertAllowed = false;
    Editable = false;
    EntityName = 'customerLedgerEntry';
    EntitySetName = 'customerLedgerEntries';
    PageType = API;
    SourceTable = "Cust. Ledger Entry";
    DataAccessIntent = ReadOnly;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(postingDate; Rec."Posting Date")
                {
                    Caption = 'postingDate', Locked = true;
                    Editable = false;
                }
                field(documentDate; Rec."Document Date")
                {
                    Caption = 'documentDate', Locked = true;
                    Editable = false;
                }
                field(documentType; Rec."Document Type")
                {
                    Caption = 'documentType', Locked = true;
                    Editable = false;
                }
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'documentNo', Locked = true;
                    Editable = false;
                }
                field(externalDocumentNo; Rec."External Document No.")
                {
                    Caption = 'externalDocumentNo', Locked = true;
                    Editable = false;
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'amount', Locked = true;
                    Editable = false;
                }
                field(amountLCY; Rec."Amount (LCY)")
                {
                    Caption = 'amountLCY', Locked = true;
                    Editable = false;
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'currencyCode', Locked = true;
                    Editable = false;
                }
                field(remainingAmount; Rec."Remaining Amount")
                {
                    Caption = 'remainingAmount', Locked = true;
                    Editable = false;
                }
                field(customerNo; Rec."Customer No.")
                {
                    Caption = 'customerNo', Locked = true;
                    Editable = false;
                }
                field(entryNo; Rec."Entry No.")
                {
                    Caption = 'entryNo', Locked = true;
                    Editable = false;
                }
                field(description; Rec.Description)
                {
                    Caption = 'description', Locked = true;
                    Editable = false;
                }
                field(dueDate; Rec."Due Date")
                {
                    Caption = 'dueDate', Locked = true;
                    Editable = false;
                }
                field(poNumber; po(Rec."Document No."))
                {
                    Caption = 'PO Number';
                }
            }
        }
    }
    procedure po(DocumentNo: Text): Text var
        SalesInvoiceHeader: Record "Sales Invoice Header";
    begin
        SalesInvoiceHeader.SetRange("No.", DocumentNo);
        if(SalesInvoiceHeader.FindFirst())then exit(SalesInvoiceHeader."Your Reference");
    end;
}
