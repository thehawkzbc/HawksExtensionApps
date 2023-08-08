tableextension 50010 "TransferHdr Ext" extends "Transfer Header"
{
    fields
    {
        field(50010; "Total Qty"; Decimal)
        {
            Caption = 'Total Qty';
            FieldClass = FlowField;
            CalcFormula = Sum("Transfer Line".Quantity WHERE("Document No."=FIELD("No.")));
        }
        field(50011; "Total Shipped Qty"; Decimal)
        {
            Caption = 'Total Shipped Qty';
            FieldClass = FlowField;
            CalcFormula = Sum("Transfer Line"."Quantity Shipped" WHERE("Document No."=FIELD("No.")));
        }
    }
}
