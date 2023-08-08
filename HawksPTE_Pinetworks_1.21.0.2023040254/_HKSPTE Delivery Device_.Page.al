page 50154 "HKSPTE Delivery Device"
{
    Caption = 'Delivery Device';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Control1903327208; "WMS Ship & Receive Activities")
            {
                ApplicationArea = Warehouse;
            }
        }
    }
    actions
    {
        area(Creation)
        {
            action("Sales &Order")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales &Order';
                Image = Document;
                //Promoted = false;
                RunObject = Page "Sales Order";
                RunPageMode = Create;
                ToolTip = 'Create a new sales order for items or services.';
            }
        }
    }
}
