report 50038 "Inventory Shipment"
{
    ApplicationArea = All;
    Caption = 'Inventory Shipment';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = '.\src\Layouts\Inventory Shipment.rdlc';

    dataset
    {
        dataitem(InvtDocumentHeader; "Invt. Document Header")
        {
            column(No; "No.")
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
            column(Status; Status)
            {
            }
            dataitem(InvtDocumentLine; "Invt. Document Line")
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
