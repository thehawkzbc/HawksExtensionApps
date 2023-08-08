tableextension 50022 "Activities Cue Ext" extends "Activities Cue"
{
    fields
    {
        field(50000; "Posted Sales Invoices"; Integer)
        {
            CalcFormula = Count("Sales Invoice Header");
            Caption = 'Posted Sales Invoice';
            FieldClass = FlowField;
        }
        field(50001; "Posted Sales Shipments"; Integer)
        {
            CalcFormula = Count("Sales Shipment Header");
            Caption = 'Sales Shipment Header';
            FieldClass = FlowField;
        }
        field(50002; "Posted Purchase Invoices"; Integer)
        {
            CalcFormula = Count("Purch. Inv. Header");
            Caption = 'Posted Sales Invoice';
            FieldClass = FlowField;
        }
    }
}
