report 50036 "Posted Inventory Receipt"
{
    ApplicationArea = All;
    Caption = 'Posted Inventory Receipt';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = '.\src\Layouts\Posted Inventory receipt.rdlc';

    dataset
    {
        dataitem(InvtReceiptHeader; "Invt. Receipt Header")
        {
            column(No; "No.")
            {
            }
            column(PostingDescription; "Posting Description")
            {
            }
            column(DocumentDate; "Document Date")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            column(LocationCode; "Location Code")
            {
            }
            column(ReceiptNo; "Receipt No.")
            {
            }
            dataitem(invtrcptline; "Invt. Receipt Line")
            {
                DataItemLink = "Document No."=FIELD("No.");

                column(ItemNo; "Item No.")
                {
                }
                column(PostingDateLine; "Posting Date")
                {
                }
                column(DocumentNo; "Document No.")
                {
                }
                column(Description; Description)
                {
                }
                column(LocationCodeLine; "Location Code")
                {
                }
                column(InventoryPostingGroup; "Inventory Posting Group")
                {
                }
                column(Quantity; Quantity)
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
