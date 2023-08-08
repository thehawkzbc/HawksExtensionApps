page 50406 "HKS CP Delivary Notes"
{
    APIGroup = 'CP';
    APIPublisher = 'Pinetworks';
    APIVersion = 'v1.0';
    Caption = 'HKSCPDeliveryNote';
    DelayedInsert = true;
    EntityName = 'DeliveryNote';
    EntitySetName = 'DeliveryNotes';
    PageType = API;
    SourceTable = "Posted Whse. Shipment Line";
    Editable = false;
    DataAccessIntent = ReadOnly;

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
                field("sales_order_no"; Rec."Source No.")
                {
                    Editable = false;
                }
                field("source_document"; Rec."Source Document")
                {
                    Editable = false;
                }
                field("destination_type"; Rec."Destination Type")
                {
                    Editable = false;
                }
                field("customer_number"; Rec."Destination No.")
                {
                    Editable = false;
                }
                field("posting_date"; Rec."Posting Date")
                {
                    Editable = false;
                }
                field("shipment_date"; Rec."Shipment Date")
                {
                    Editable = false;
                }
            }
        }
    }
}
