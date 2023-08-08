codeunit 50151 "DelivaryAppCodeUnit"
{
    procedure OpenCamera(var Handled: Boolean; fieldName: Text; var WarehouseShipmentHeader: Record "Warehouse Shipment Header")
    var
        Cam: Codeunit Camera;
        SP: Codeunit "SharePoint EFQ";
        FileMgmt: Codeunit "File Management";
        Ref: RecordRef;
        Instream: InStream;
        PictureName: Text;
        Folder: text;
        Token: Text;
        Filename: text;
        FileExtention: Text;
    begin
        Clear(Cam);
        cam.Run();
        Handled:=cam.GetPicture(Instream, PictureName);
        if(Handled = true)then begin
            ref.GetTable(WarehouseShipmentHeader);
            Folder:=SP.GetFolderForRecord(ref, true);
            sp.GetAccessTokenAgain(Token);
            sp.StoreAccessToken(Token);
            FileExtention:=FileMgmt.GetExtension(PictureName);
            Filename:=FileMgmt.CreateFileNameWithExtension(fieldName + '_' + WarehouseShipmentHeader."No.", FileExtention);
            sp.UploadFile(Folder, Instream, Filename)end;
    end;
    procedure updateShippedQty(id: Text; amount: Decimal): Decimal var
        WarehouseShipmentLine: Record "Warehouse Shipment Line";
    begin
        WarehouseShipmentLine.Reset();
        WarehouseShipmentLine.SetRange("No.", id);
        if WarehouseShipmentLine.FindFirst()then begin
            WarehouseShipmentLine.Validate("Qty. to Ship", amount);
            WarehouseShipmentLine.Modify(true);
            exit(WarehouseShipmentLine."Qty. to Ship");
        end;
        exit(0);
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Whse.-Post Shipment", 'OnBeforePostedWhseShptHeaderInsert', '', false, false)]
    local procedure OnBeforePostedWhseShptHeaderInsert(var PostedWhseShipmentHeader: Record "Posted Whse. Shipment Header"; WarehouseShipmentHeader: Record "Warehouse Shipment Header");
    begin
        WarehouseShipmentHeader.CalcFields("Signature Image");
        PostedWhseShipmentHeader."Meter Start":=WarehouseShipmentHeader."Meter Start";
        PostedWhseShipmentHeader."Meter End":=WarehouseShipmentHeader."Meter End";
        PostedWhseShipmentHeader."Check Water Contamination":=WarehouseShipmentHeader."Check Water Contamination";
        PostedWhseShipmentHeader."Take Sample for Visiblity Test":=WarehouseShipmentHeader."Take Sample for Visiblity Test";
        PostedWhseShipmentHeader."Check Barge Meter":=WarehouseShipmentHeader."Check Barge Meter";
        PostedWhseShipmentHeader."Check Client Meter":=WarehouseShipmentHeader."Check Client Meter";
        PostedWhseShipmentHeader."ROB Client Tank":=WarehouseShipmentHeader."ROB Client Tank";
        PostedWhseShipmentHeader."Signature Image":=WarehouseShipmentHeader."Signature Image";
        PostedWhseShipmentHeader."Received By":=WarehouseShipmentHeader."Received By";
        PostedWhseShipmentHeader."Received By ID":=WarehouseShipmentHeader."Received By ID";
        PostedWhseShipmentHeader."Shipment Date":=WarehouseShipmentHeader."Shipment Date";
        PostedWhseShipmentHeader."Posting Date":=WarehouseShipmentHeader."Posting Date";
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Check Line", 'OnAfterCheckItemJnlLine', '', false, false)]
    local procedure OnAfterCheckItemJnlLine(var ItemJnlLine: Record "Item Journal Line"; CalledFromInvtPutawayPick: Boolean; CalledFromAdjustment: Boolean);
    var
        batch: Record "Item Journal Batch";
    begin
        batch.SetRange(Name, ItemJnlLine."Journal Batch Name");
        batch.SetRange("Journal Template Name", ItemJnlLine."Journal Template Name");
        if not batch.FindFirst()then exit;
        if batch."Require Approval" = true then if not ItemJnlLine.Approved then Error('All Item Journal lines should be approved');
        if ItemJnlLine."Transaction Type" = '' then Error('Transaction Type is Mandatory');
    end;
}
