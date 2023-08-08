pageextension 50198 PageExtension50013 extends "SO Processor Activities"
{
    layout
    {
        modify("Sales Return Orders - Open")
        {
            Visible = false;
        }
        modify(Returns)
        {
            Visible = false;
        }
        modify("Average Days Delayed")
        {
            Visible = false;
        }
        modify("Sales Quotes - Open")
        {
            Visible = false;
        }
        modify("Sales Orders - Open")
        {
            Visible = false;
        }
        modify("For Release")
        {
            Visible = false;
        }
    }
}
