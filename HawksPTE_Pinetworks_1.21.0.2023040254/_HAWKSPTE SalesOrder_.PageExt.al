pageextension 50152 "HAWKSPTE SalesOrder" extends "Sales Order" // 42
{
    layout
    {
        moveafter("Attached Documents"; Control1902018507)
        modify(IncomingDocAttachFactBox)
        {
            Visible = false;
        }
        modify("Attached Documents")
        {
            Visible = false;
        }
        modify(Control1902018507)
        {
            Visible = true;
        }
        modify(Control1903720907)
        {
            Visible = false;
        }
        modify(Control1900316107)
        {
            Visible = false;
        }
        modify(Control1906127307)
        {
            Visible = false;
        }
        modify(Control1901314507)
        {
            Visible = false;
        }
        modify(Control1905767507)
        {
            Visible = false;
        }
        modify("Prepmt. Payment Discount %")
        {
            Visible = false;
        }
        modify("Prepmt. Pmt. Discount Date")
        {
            Visible = false;
        }
        modify("Prepayment Due Date")
        {
            Visible = false;
        }
        modify("Prepmt. Payment Terms Code")
        {
            Visible = false;
        }
        modify("Compress Prepayment")
        {
            Visible = false;
        }
        modify("Order Date")
        {
            Visible = false;
        }
        modify("Due Date")
        {
            Visible = false;
        }
        modify("Requested Delivery Date")
        {
            Visible = false;
        }
        modify("Location Code")
        {
            Visible = false;
        }
        modify("Shortcut Dimension 1 Code")
        {
            Visible = false;
        }
        modify("Posting Date")
        {
            Importance = Additional;
        }
        modify("Shortcut Dimension 2 Code")
        {
            Visible = false;
        }
        modify("Prepayment %")
        {
            Visible = false;
        }
        modify("Payment Terms Code")
        {
            Visible = false;
        }
        modify("Currency Code")
        {
            Visible = false;
        }
        modify("Sell-to City")
        {
            Visible = false;
        }
        modify("Sell-to Post Code")
        {
            Visible = false;
        }
        modify("Sell-to Country/Region Code")
        {
            Visible = false;
        }
        modify("Sell-to Contact No.")
        {
            Visible = false;
        }
        modify("Sell-to E-Mail")
        {
            Visible = false;
        }
        modify("Sell-to Contact")
        {
            Visible = false;
        }
        modify("No. of Archived Versions")
        {
            Visible = false;
        }
        modify("Document Date")
        {
            Visible = false;
        }
        modify("Promised Delivery Date")
        {
            Visible = false;
        }
        modify("External Document No.")
        {
            Visible = false;
        }
        modify("Assigned User ID")
        {
            Visible = false;
        }
        modify("Responsibility Center")
        {
            Visible = false;
        }
        modify("Opportunity No.")
        {
            Visible = false;
        }
        modify("Campaign No.")
        {
            Visible = false;
        }
        modify("Salesperson Code")
        {
            Visible = false;
        }
        modify("Prices Including VAT")
        {
            Visible = false;
        }
        modify("VAT Bus. Posting Group")
        {
            Visible = false;
        }
        modify("Payment Discount %")
        {
            Visible = false;
        }
        modify("Pmt. Discount Date")
        {
            Visible = false;
        }
        moveafter("Your Reference"; "Payment Method Code")
        modify("Sell-to Address")
        {
            Importance = Standard;
        }
        modify("Sell-to Address 2")
        {
            Importance = Standard;
        }
        modify("Sell-to Phone No.")
        {
            Importance = Standard;
        }
        modify("Payment Method Code")
        {
            Importance = Standard;
        }
        modify("Ship-to Contact")
        {
            Visible = false;
        }
        modify("Shipment Method Code")
        {
            Visible = false;
        }
        modify("Shipping Agent Code")
        {
            Visible = false;
        }
        modify("Shipping Agent Service Code")
        {
            Visible = false;
        }
        modify("Package Tracking No.")
        {
            Visible = false;
        }
        modify("Shipment Date")
        {
            Visible = false;
        }
        modify("Shipping Advice")
        {
            Visible = false;
        }
        modify("Shipping Time")
        {
            Visible = false;
        }
        modify("Combine Shipments")
        {
            Visible = false;
        }
        modify("Outbound Whse. Handling Time")
        {
            Visible = false;
        }
        modify("Late Order Shipping")
        {
            Visible = false;
        }
        modify(BillToOptions)
        {
            Importance = Additional;
        }
        modify(ShippingOptions)
        {
            Importance = Additional;
        }
        modify(ApprovalFactBox)
        {
            Visible = true;
        }
        addafter(Control1900201301)
        {
            group(CustomerStatistics)
            {
                Caption = 'Customer Statistics';

                part(AgedAccReceivableChart; "Aged Acc. Receivable Chart")
                {
                    ApplicationArea = Basic, Suite;
                    SubPageLink = "No."=FIELD("Bill-to Customer No.");
                }
            }
        }
    }
    actions
    {
        modify("Create Inventor&y Put-away/Pick")
        {
            Promoted = false;
        }
    }
}
