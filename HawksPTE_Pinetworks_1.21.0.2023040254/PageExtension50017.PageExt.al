pageextension 50196 PageExtension50017 extends "Sales Order Subform"
{
    layout
    {
        modify("Location Code")
        {
            Visible = false;
        }
        modify("Tax Area Code")
        {
            Visible = false;
        }
        modify("Shortcut Dimension 2 Code")
        {
            Visible = false;
        }
        modify("Shortcut Dimension 1 Code")
        {
            Visible = false;
        }
        modify("Planned Delivery Date")
        {
            Visible = false;
        }
        modify("Tax Group Code")
        {
            Visible = false;
        }
        modify("Line Discount %")
        {
            Visible = false;
        }
        modify("Invoice Disc. Pct.")
        {
            QuickEntry = false;
        }
    }
}
