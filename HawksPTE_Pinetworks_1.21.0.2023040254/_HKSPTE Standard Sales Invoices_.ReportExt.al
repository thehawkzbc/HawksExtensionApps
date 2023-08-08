reportextension 50152 "HKSPTE Standard Sales Invoices" extends "Standard Sales - Invoice" //1306
//TODO
//Migrate- to MVUIREP v2 - change Warehouse shipment as a data item.
{
    dataset
    {
        add(ShipmentLine)
        {
            column(PINPTE_WhseShptNo; GetWhseShipmentNo_WhseShipmentNo(ShipmentLine."Document No."))
            {
            }
            column(PINPTE_PostedWhseShptNo; GetWhseShipmentNo_No(ShipmentLine."Document No."))
            {
            }
        }
    }
    procedure GetWhseShipmentNo_WhseShipmentNo(ShipmentNo: Code[20]): Text var
        PostedWhseShipmentLine: Record "Posted Whse. Shipment Line";
        WhseShipNo: TextBuilder;
        LastShipmentNo: Code[20];
    begin
        PostedWhseShipmentLine.SetRange("Posted Source No.", ShipmentNo);
        PostedWhseShipmentLine.SetRange("Posted Source Document", PostedWhseShipmentLine."Posted Source Document"::"Posted Shipment");
        LastShipmentNo:='';
        if PostedWhseShipmentLine.FindSet()then repeat if LastShipmentNo <> PostedWhseShipmentLine."Whse. Shipment No." then begin
                    if LastShipmentNo <> '' then WhseShipNo.Append(' : ');
                    WhseShipNo.Append(PostedWhseShipmentLine."Whse. Shipment No.");
                    LastShipmentNo:=PostedWhseShipmentLine."Whse. Shipment No.";
                end until PostedWhseShipmentLine.Next() = 0;
        exit(WhseShipNo.ToText());
    end;
    procedure GetWhseShipmentNo_No(ShipmentNo: Code[20]): Text var
        PostedWhseShipmentLine: Record "Posted Whse. Shipment Line";
        WhseShipNo: TextBuilder;
        LastShipmentNo: Code[20];
    begin
        PostedWhseShipmentLine.SetRange("Posted Source No.", ShipmentNo);
        PostedWhseShipmentLine.SetRange("Posted Source Document", PostedWhseShipmentLine."Posted Source Document"::"Posted Shipment");
        LastShipmentNo:='';
        if PostedWhseShipmentLine.FindSet()then repeat if LastShipmentNo <> PostedWhseShipmentLine."No." then begin
                    if LastShipmentNo <> '' then WhseShipNo.Append(' : ');
                    WhseShipNo.Append(PostedWhseShipmentLine."No.");
                    LastShipmentNo:=PostedWhseShipmentLine."No.";
                end until PostedWhseShipmentLine.Next() = 0;
        exit(WhseShipNo.ToText());
    end;
}
