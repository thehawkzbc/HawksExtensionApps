tableextension 50021 "Requisition Worksheet Ext" extends "Requisition Wksh. Name"
{
    fields
    {
        field(50000; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE("Use As In-Transit"=CONST(false));
        }
        field(50001; "Transfer-from Code"; Code[10])
        {
            Caption = 'Transfer-from Code';
            TableRelation = Location WHERE("Use As In-Transit"=CONST(false));
        }
    }
}
