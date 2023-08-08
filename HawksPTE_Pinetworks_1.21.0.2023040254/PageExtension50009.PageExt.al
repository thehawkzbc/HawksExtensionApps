pageextension 50168 PageExtension50009 extends "Business Manager Role Center"
{
    layout
    {
        addafter(Control16)
        {
            part(HawksRC; HawksCuePage)
            {
                Caption = ' ';
                ApplicationArea = All;
            }
        }
        modify(Control139)
        {
            Visible = false;
        }
    }
    actions
    {
        modify(Action39)
        {
            Visible = false;
        }
        modify("Cash Management")
        {
            Visible = false;
        }
        modify(Action40)
        {
            Visible = false;
        }
        modify(Action41)
        {
            Visible = false;
        }
        modify("CIT VMP365 Group")
        {
            Visible = false;
        }
        modify(Customers)
        {
            Visible = false;
        }
        modify(Vendors)
        {
            Visible = false;
        }
        modify("Bank Accounts")
        {
            Visible = false;
        }
        modify("Chart of Accounts")
        {
            Visible = false;
        }
        modify(Items)
        {
            Visible = false;
        }
        modify("Sales Quote")
        {
            Visible = false;
        }
        modify("Sales Invoice")
        {
            Visible = false;
        }
        modify("Purchase Quote")
        {
            Visible = false;
        }
        modify("<Page Purchase Order>")
        {
            Visible = false;
        }
        modify("Purchase Invoice")
        {
            Visible = false;
        }
        modify("CIT Quote Comparison")
        {
            Visible = false;
        }
        modify(New)
        {
            Visible = false;
        }
        modify(Payments)
        {
            Visible = false;
        }
        modify(Reports)
        {
            Visible = false;
        }
    }
}
