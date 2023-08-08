codeunit 50156 "Utils"
{
    procedure GetFullName(userID: Guid): Text var
        UserInfo: Record User;
    begin
        if UserInfo.Get(userID)then exit(UserInfo."Full Name");
        exit('');
    end;
    procedure GetFullName(userID: Code[50]): Text var
        UserInfo: Record User;
    begin
        UserInfo.SetRange("User Name", userID);
        if UserInfo.FindFirst()then exit(UserInfo."Full Name");
        exit('');
    end;
    procedure GetUserName(userID: Guid): code[50]var
        UserInfo: Record User;
    begin
        if UserInfo.Get(userID)then exit(UserInfo."User Name");
        exit('');
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnOpenDocument', '', false, false)]
    local procedure OnOpenDocument(RecRef: RecordRef; var Handled: Boolean);
    begin
        if RecRef.Number = Database::"Gen. Journal Line" then Handled:=true;
    end;
    /*
        [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Batch", 'OnAfterPostGenJnlLine', '', false, false)]
        local procedure OnAfterPostGenJnlLine(var GenJournalLine: Record "Gen. Journal Line"; CommitIsSuppressed: Boolean; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line");
        var
            IncomingDocument: Record "Incoming Document";
        begin

            if CommitIsSuppressed then
                exit;
            //transfer this to SP -->  GenJournalLine."Incoming Document Entry No."
            if GenJournalLine."Incoming Document Entry No." <> 0 then
                if IncomingDocument.Get(GenJournalLine."Incoming Document Entry No.") then
                    if TransferIncomingDocToSP(IncomingDocument) then
                        IncomingDocument."HKSPTE Transferred To SP" := true
                    else
                        IncomingDocument."HKSPTE Error To SP" := true;

        end;
    */
    procedure DeleteIncomingDocumentAttachment()
    var
        IncomingDocument: Record "Incoming Document";
        // RecRef: RecordRef;
        // NavRecordVariant: Variant;
        IncomingDocumentAttachment: Record "Incoming Document Attachment";
    begin
        IncomingDocument.SetRange("HKSPTE Transferred To SP", true);
        IncomingDocument.SetRange(Posted, true);
        IncomingDocument.SetRange(Processed, true);
        if IncomingDocument.FindSet()then repeat //           rec.UndoPostedDocFields                            
                //IncomingDocument.Delete(true);
                IncomingDocumentAttachment.SetRange("Incoming Document Entry No.", IncomingDocument."Entry No.");
                IncomingDocumentAttachment.DeleteAll(false);
            until IncomingDocument.Next() = 0;
    end;
    [TryFunction]
    procedure TransferIncomingDocToSP(var IncomingDocument: Record "Incoming Document")
    var
        IncomingDocumentAttachment: Record "Incoming Document Attachment";
        TableMappingEFQ: Record "Table Mapping EFQ";
        SharePointEFQ: Codeunit "SharePoint EFQ";
        DataTypeManagement: Codeunit "Data Type Management";
        Ref: RecordRef;
        Folder: Text;
        Filename: Text;
        Instream: InStream;
        RelatedRecordVariant: Variant;
    begin
        if IncomingDocument.GetRecord(RelatedRecordVariant)then DataTypeManagement.GetRecordRef(RelatedRecordVariant, ref)
        else
            exit;
        IncomingDocumentAttachment.SetRange("Incoming Document Entry No.", IncomingDocument."Entry No.");
        if IncomingDocumentAttachment.FindSet()then repeat Folder:=SharePointEFQ.GetFolderForRecord(Ref, true);
                System.Sleep(500);
                IncomingDocumentAttachment.CalcFields(Content);
                if IncomingDocumentAttachment.Content.HasValue then begin
                    IncomingDocumentAttachment.Content.CreateInStream(Instream);
                    SharePointEFQ.GetTableMapping(TableMappingEFQ, Ref);
                    Filename:=SharePointEFQ.SanitizeName(IncomingDocumentAttachment.Name);
                    SharePointEFQ.UploadFile(TableMappingEFQ, Folder, Instream, Filename + '.' + IncomingDocumentAttachment."File Extension", false)end until IncomingDocumentAttachment.Next() = 0;
    end;
    procedure DeleteEmailOutbox()
    var
        EmailOutbox: Record "Email Outbox";
    begin
        EmailOutbox.DeleteAll();
    end;
    procedure DeleteSentEmails()
    var
        SentEmail: Record "Sent Email";
        i: Integer;
        baseRec: Integer;
    begin
        if not SentEmail.FindFirst()then exit;
        baseRec:=SentEmail.Id;
        for i:=1 to 50 do begin
            SentEmail.SetFilter(Id, '%1..%2', baseRec, baseRec + 100);
            SentEmail.DeleteAll();
            SentEmail.Reset();
            if not SentEmail.FindFirst()then exit;
            baseRec:=SentEmail.Id;
        end;
    end;
    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnBeforeCheckPrepmtAmtInvEmpty', '', false, false)]
    local procedure OnBeforeCheckPrepmtAmtInvEmpty(var PurchaseLine: Record "Purchase Line"; var IsHandled: Boolean; xPurchaseLine: Record "Purchase Line");
    var
        PINSetup: Record "PIN Setup";
    begin
        PINSetup.Get();
        if PINSetup."HKSPTE Overr. VAT PPG. Err." then IsHandled:=true;
    end;
}
