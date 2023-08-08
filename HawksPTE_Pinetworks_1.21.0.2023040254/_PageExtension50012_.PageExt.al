pageextension 50192 "PageExtension50012" extends "Order Processor Role Center"
{
    layout
    {
        modify(Control104)
        {
            Visible = false;
        }
        modify(Control21)
        {
            Visible = false;
        }
        modify(Control1905989608)
        {
            Visible = false;
        }
        modify(Control1)
        {
            Visible = false;
        }
        modify(Control1907692008)
        {
            Visible = false;
        }
        modify(Control14)
        {
            Visible = false;
        }
        modify(Emails)
        {
            Visible = false;
        }
        modify("User Tasks Activities")
        {
            Visible = false;
        }
        modify(ApprovalsActivities)
        {
            Visible = false;
        }
    }
    actions
    {
        modify(Action76)
        {
            Visible = false;
        }
        modify(Action63)
        {
            Visible = false;
        }
        modify(Action62)
        {
            Visible = false;
        }
        modify("Posted Documents")
        {
            Visible = false;
        }
        modify(Items)
        {
            Visible = false;
        }
        modify(Customers)
        {
            Visible = false;
        }
        modify("Item Journals")
        {
            Visible = false;
        }
        modify(SalesJournals)
        {
            Visible = false;
        }
        modify(CashReceiptJournals)
        {
            Visible = false;
        }
        modify("Transfer Orders")
        {
            Visible = false;
        }
        modify("Sales &Quote")
        {
            Visible = false;
        }
        modify("Sales &Invoice")
        {
            Visible = false;
        }
        modify("Sales &Return Order")
        {
            Visible = false;
        }
        modify(Tasks)
        {
            Visible = false;
        }
        modify(Reports)
        {
            Visible = false;
        }
        modify(History)
        {
            Visible = false;
        }
        modify(Action42)
        {
            Visible = false;
        }
        addafter("Transfer Orders")
        {
            action("Whse. - Shipment61005")
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Warehouse Shipment';
                RunObject = report "Whse. - Shipment";
            }
            action("Posted Whse. Shipment List32991")
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Posted Warehouse Shipments';
                RunObject = page "Posted Whse. Shipment List";
            }
            action("Posted Sales Invoices78153")
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Posted Sales Invoices';
                RunObject = page "Posted Sales Invoices";
            }
        }
        modify("Sales &Credit Memo")
        {
            Visible = false;
        }
    }
}
