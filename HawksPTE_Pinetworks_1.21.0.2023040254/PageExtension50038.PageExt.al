pageextension 50174 PageExtension50038 extends "Whse. Shipment Subform"
{
    layout
    {
        modify("Destination No.")
        {
            ApplicationArea = All;
        }
        moveafter("Source No."; "Destination No.")
    }
}
