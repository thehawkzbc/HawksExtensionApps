report 50035 "Posted Inventory Shipment"
{
    ApplicationArea = All;
    Caption = 'Posted Inventory Shipment';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = '.\src\Layouts\Posted Inventory shipment.rdlc';

    dataset
    {
        dataitem(InvtShipmentHeader; "Invt. Shipment Header")
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
            column(ShipmentNo; "Shipment No.")
            {
            }
            dataitem(invtShipLine; "Invt. Shipment Line")
            {
                DataItemLink = "Document No."=FIELD("No.");

                //DataItemLinkReference = "Invt. Shipment Header";
                // DataItemTableView = SORTING("Document No.", "Line No.") WHERE("" = CONST(0));
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
