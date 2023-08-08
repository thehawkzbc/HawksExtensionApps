codeunit 50153 "Whse.-Post Shipment-PrintOnly"
{
    TableNo = "Warehouse Shipment Line";

    trigger OnRun()
    var
    begin
        WhseShptLine.Copy(Rec);
        Code();
        Rec:=WhseShptLine;
    end;
    var WhseShptLine: Record "Warehouse Shipment Line";
    WhsePostShipment: Codeunit "Whse.-Post Shipment";
    Selection: Integer;
    ShipInvoiceQst: Label '&Ship';
    local procedure "Code"()
    var
        pwhs: record "Posted Whse. Shipment Header";
        WarehouseShipmentHeaderDelete: Record "Warehouse Shipment Header";
        pwhsRecRef: RecordRef;
        Invoice: Boolean;
        HideDialog: Boolean;
        IsPosted: Boolean;
    begin
        HideDialog:=false;
        IsPosted:=false;
        OnBeforeConfirmWhseShipmentPost(WhseShptLine, HideDialog, Invoice, IsPosted);
        if IsPosted then exit;
        if WhseShptLine.Find()then if not HideDialog then begin
                Selection:=StrMenu(ShipInvoiceQst, 1);
                if Selection = 0 then exit;
                Invoice:=(Selection = 2);
            end;
        OnAfterConfirmPost(WhseShptLine, Invoice);
        WhsePostShipment.SetPostingSettings(Invoice);
        WhsePostShipment.SetPrint(false);
        WhsePostShipment.Run(WhseShptLine);
        WhsePostShipment.GetResultMessage();
        Clear(WhsePostShipment);
        Commit();
        //noozan (1) REFERANCED HERE
        //BELOW CODE WAS TAKEN FROM DELIVERY WIZARD
        pwhs.SetRange("Whse. Shipment No.", WhseShptLine."No.");
        if pwhs.FindFirst()then begin
            pwhsRecRef.GetTable(pwhs);
            REPORT.Run(7309, true, false, pwhs);
        end;
        //for delete
        if WarehouseShipmentHeaderDelete.get(WhseShptLine."No.")then begin
            WarehouseShipmentHeaderDelete.DeleteRelatedLines();
            WarehouseShipmentHeaderDelete.Delete();
        end;
        exit;
    end;
    [IntegrationEvent(false, false)]
    local procedure OnAfterConfirmPost(WhseShipmentLine: Record "Warehouse Shipment Line"; Invoice: Boolean)
    begin
    end;
    [IntegrationEvent(false, false)]
    local procedure OnBeforeConfirmWhseShipmentPost(var WhseShptLine: Record "Warehouse Shipment Line"; var HideDialog: Boolean; var Invoice: Boolean; var IsPosted: Boolean)
    begin
    end;
}
