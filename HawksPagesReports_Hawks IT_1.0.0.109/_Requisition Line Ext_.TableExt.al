tableextension 50015 "Requisition Line Ext" extends "Requisition Line"
{
    fields
    {
        field(50000; Comments; Text[100])
        {
            Caption = 'Comments';
            DataClassification = ToBeClassified;
        }
        field(50001; "Available Qty"; Decimal)
        {
            Caption = 'Available Qty';
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No."=FIELD("No."), "Location Code"=FIELD("Location Code")));
            DecimalPlaces = 0: 5;
            Editable = false;
            FieldClass = FlowField;
        }
    }
    trigger OnInsert()
    var
        reqwsname: Record "Requisition Wksh. Name";
    begin
        reqwsname.SetRange("Worksheet Template Name", 'REQ.');
        reqwsname.SetRange(name, "Journal Batch Name");
        IF reqwsname.FindSet then begin
            "Transfer-from Code":=reqwsname."Transfer-from Code";
            "Location Code":=reqwsname."Location Code";
        end;
    end;
}
