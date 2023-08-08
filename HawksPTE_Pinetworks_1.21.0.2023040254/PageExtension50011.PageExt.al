pageextension 50199 PageExtension50011 extends "WMS Ship & Receive Activities"
{
    layout
    {
        modify("Unassigned Movements")
        {
            Visible = false;
        }
        modify("Movements - All")
        {
            Visible = false;
        }
        modify(Internal)
        {
            Visible = false;
        }
    }
}
