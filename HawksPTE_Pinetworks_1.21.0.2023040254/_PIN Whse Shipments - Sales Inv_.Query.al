query 50152 "PIN Whse Shipments - Sales Inv"
{
    Caption = 'PIN Whse Shipments - Sales Inv';
    QueryType = Normal;
    OrderBy = ascending(PostWhseShpNo);

    elements
    {
    dataitem(Inv_Header;
    "Sales Invoice Header")
    {
    column(Inv_No_;
    "No.")
    {
    }
    dataitem(Posted_Whse__Shipment_Line;
    "Posted Whse. Shipment Line")
    {
    DataItemLink = "Source No."=Inv_Header."Order No.";
    SqlJoinType = LeftOuterJoin;

    column(PostWhseShpNo;
    "No.")
    {
    }
    column(OrderNo;
    "Source No.")
    {
    }
    }
    }
    }
    trigger OnBeforeOpen()
    begin
    end;
}
