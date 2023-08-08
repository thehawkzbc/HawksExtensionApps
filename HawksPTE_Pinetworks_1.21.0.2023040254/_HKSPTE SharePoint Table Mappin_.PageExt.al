pageextension 50164 "HKSPTE SharePoint Table Mappin" extends "SharePoint Table Mapping EFQ"
{
    actions
    {
        addafter(TransferAttachments)
        {
            action(PINTransferAttachmentsCustom)
            {
                Caption = 'Transfer Attachments to SharePoint - Pinetworks';
                ToolTip = 'Transfer attachments from standard BC into the mapped SharePoint folder';
                ApplicationArea = all;
                Image = TransferFunds;

                trigger OnAction()
                var
                    // PinSetup: Record "PIN Setup";
                    da: Record "Document Attachment";
                    Mapping: Record "Table Mapping EFQ";
                    TempBlob: Codeunit "Temp Blob";
                    SP: Codeunit "SharePoint EFQ";
                    Ref: RecordRef;
                    FR: FieldRef;
                    KR: KeyRef;
                    //UploadFailedErr: Label 'Upload to SharePoint failed';
                    TransferToSharePointQst: Label 'Transfer %1 attachments for %2 to Sharepoint?', Comment = '%1 = attachment count, %2 = tablename';
                    WrongTableErr: Label 'Only tables with 1-field primary key can be used for importing attachments, aborting!';
                    WrongTable2Err: Label 'Only sales header and purchase header tables with 2-field primary keys can be used for importing attachments, aborting!';
                    ImportingLbl: Label 'Importing attachments to SharePoint #1###############################', Comment = '#1# is filename';
                    Folder: Text;
                    Filename: Text;
                    InS: InStream;
                    DocumentStream: OutStream;
                    Window: Dialog;
                    TransferCounter: Integer;
                begin
                    //  PinSetup.Get();
                    TransferCounter:=1;
                    Window.Open(ImportingLbl);
                    da.setrange("Table ID", Rec.TableNo);
                    da.SetRange("HKSPTE Transferred To SP", false);
                    if confirm(StrSubstNo(TransferToSharePointQst, da.Count(), Rec."Table Name"))then if da.FindSet(true)then repeat Ref.Open(Da."Table ID");
                                KR:=Ref.KeyIndex(1);
                                case KR.FieldCount()of 1: begin
                                    FR:=KR.FieldIndex(1);
                                    FR.Value:=DA."No.";
                                end;
                                2: if Da."Table ID" in[36, 38]then begin
                                        FR:=KR.FieldIndex(1);
                                        if FR.Type = FieldType::Option then FR.Value:=da."Document Type";
                                        FR:=KR.FieldIndex(2);
                                        FR.Value:=DA."No.";
                                    end
                                    else
                                        error(WrongTable2Err);
                                else if KR.FieldCount() <> 1 then error(WrongTableErr);
                                end;
                                if Ref.Find('=')then begin
                                    Window.Update(1, da."File Name");
                                    clear(TempBlob);
                                    Folder:=SP.GetFolderForRecord(Ref, true);
                                    TempBlob.CreateOutStream(DocumentStream);
                                    da."Document Reference ID".ExportStream(DocumentStream);
                                    TempBlob.CreateInStream(InS);
                                    SP.GetTableMapping(Mapping, Ref);
                                    Filename:=sp.SanitizeName(da."File Name");
                                    Sleep(100);
                                    if SP.UploadFile(Mapping, Folder, InS, Filename + '.' + da."File Extension", false)then begin
                                        da."HKSPTE Transferred To SP":=true;
                                        da.Modify();
                                        TransferCounter+=1;
                                        if(TransferCounter mod 100 = 0)then Commit();
                                        if TransferCounter > 1000 then exit;
                                    end;
                                    Ref.Close()end;
                            until da.Next() = 0;
                end;
            }
        }
    }
}
