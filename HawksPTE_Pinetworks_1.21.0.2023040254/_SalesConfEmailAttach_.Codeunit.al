codeunit 50152 "SalesConfEmailAttach" //rename this later
{
    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesLine', '', false, false)]
    local procedure OnAfterCopyItemJnlLineFromSalesLine(var ItemJnlLine: Record "Item Journal Line"; SalesLine: Record "Sales Line");
    begin
        ItemJnlLine."Order No.":=SalesLine."Document No.";
    end;
    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromPurchLine', '', false, false)]
    local procedure OnAfterCopyItemJnlLineFromPurchLine(var ItemJnlLine: Record "Item Journal Line"; PurchLine: Record "Purchase Line");
    begin
        ItemJnlLine."Order No.":=PurchLine."Document No.";
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Document-Mailing", 'OnBeforeSendEmail', '', false, false)]
    local procedure OnBeforeSendEmail(var TempEmailItem: Record "Email Item"; var IsFromPostedDoc: Boolean; var PostedDocNo: Code[20]; var HideDialog: Boolean; var ReportUsage: Integer; var EmailSentSuccesfully: Boolean; var IsHandled: Boolean; EmailDocName: Text[250]; SenderUserID: Code[50]; EmailScenario: Enum "Email Scenario");
    var
        TenantMedia: Record "Tenant Media";
        PINSetup: Record "PIN Setup";
        ins: InStream;
    begin
        case ReportUsage of "Report Selection Usage"::"S.Invoice".AsInteger(): if PostedDocNo <> '' then AttachWarehouseShipments(TempEmailItem, PostedDocNo);
        "Report Selection Usage"::"S.Order".AsInteger(): begin
            PINSetup.Get();
            if not PINSetup."HKSPTE Sales TnC".HasValue then exit;
            if TenantMedia.Get(PINSetup."HKSPTE Sales TnC".MediaId)then begin
                TenantMedia.CalcFields(Content);
                if TenantMedia.Content.HasValue then begin
                    TenantMedia.Content.CreateInStream(Ins);
                    TempEmailItem.AddAttachment(ins, 'Terms and Conditions for Sale of Fuel.pdf');
                end end end;
        end;
    end;
    local procedure AttachWarehouseShipments(var TempEmailItem: Record "Email Item"; InvoiceNo: Code[20])
    var
        PostedWhseShipments: Record "Posted Whse. Shipment Header";
        TempBlob: Codeunit "Temp Blob";
        RecRef: RecordRef;
        outStreamReport: OutStream;
        inStreamReport: InStream;
        Parameters: Text;
        AttachmentName: Text;
        PostedWhseShipmentsFilter: Text;
        FileNameLbl: Label 'Delivery Note %1.pdf', Comment = '%1=Delivery Note No.';
    begin
        //Print Report       
        PostedWhseShipmentsFilter:=GetPostedWarehouseShipmentsForSameSalesOrderFilter(InvoiceNo);
        if PostedWhseShipmentsFilter <> '' then begin
            PostedWhseShipments.SetFilter("No.", PostedWhseShipmentsFilter);
            if PostedWhseShipments.FindSet()then repeat RecRef.GetTable(PostedWhseShipments);
                    TempBlob.CreateOutStream(outStreamReport);
                    report.SaveAs(report::"Whse. - Posted Shipment", Parameters, ReportFormat::Pdf, outStreamReport, RecRef);
                    AttachmentName:=StrSubstNo(FileNameLbl, PostedWhseShipments."No.");
                    TempBlob.CreateInStream(inStreamReport);
                    TempEmailItem.AddAttachment(inStreamReport, AttachmentName);
                until PostedWhseShipments.Next() = 0 end end;
    local procedure GetPostedWarehouseShipmentsForSameSalesOrderFilter(InvoiceNo: Code[20]): Text;
    var
        q: Query "PIN Whse Shipments - Sales Inv";
        WhseShipNo: Code[20];
        WhseShipNoFilter: Text;
    begin
        WhseShipNo:='';
        q.SetRange(q.Inv_No_, InvoiceNo);
        q.Open();
        while q.Read()do if WhseShipNo <> q.PostWhseShpNo then begin
                WhseShipNo:=q.PostWhseShpNo;
                WhseShipNoFilter+=(q.PostWhseShpNo + '|');
            end;
        q.Close();
        WhseShipNoFilter:=WhseShipNoFilter.TrimEnd('|');
        exit(WhseShipNoFilter);
    end;
}
