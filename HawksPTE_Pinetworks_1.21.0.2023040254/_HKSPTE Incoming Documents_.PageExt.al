pageextension 50165 "HKSPTE Incoming Documents" extends "Incoming Documents"
{
    layout
    {
        addafter(StatusField)
        {
            field("HKSPTE Transferred To SP"; Rec."HKSPTE Transferred To SP")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the HKSPTE Transferred To SP field.';
            }
            field("HKSPTE Error To SP"; Rec."HKSPTE Error To SP")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Error Transfer To SP field.';
            }
        }
        addafter(Processed)
        {
            field(SystemModifiedAt; Rec.SystemModifiedAt)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SystemModifiedAt field.';
            }
        }
    }
    actions
    {
        addlast(Process)
        {
            action(PINTransferAttachmentsCustom)
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Caption = 'Transfer Attachments to SharePoint - Pinetworks';
                ToolTip = 'Transfer attachments from Incoming Docs the mapped SharePoint folder';
                ApplicationArea = all;
                Image = TransferFunds;

                trigger OnAction()
                var
                    IncomingDocument: Record "Incoming Document";
                    Utils: Codeunit Utils;
                    ImportingLbl: Label 'Importing attachments to SharePoint #1###############################', Comment = '#1# is filename';
                    Window: Dialog;
                    TransferCounter: Integer;
                begin
                    CurrPage.SetSelectionFilter(IncomingDocument);
                    Window.Open(ImportingLbl);
                    IncomingDocument.SetRange("HKSPTE Transferred To SP", false);
                    IncomingDocument.SetRange(Posted, true);
                    IncomingDocument.SetFilter("Document No.", '<>%1', '');
                    //SP.GetAccessTokenAgain(token); // Ensure that we have a valid access token to sharepoint
                    //SP.StoreAccessToken(token);
                    TransferCounter:=1;
                    if IncomingDocument.FindSet(true)then repeat Window.Update(1, IncomingDocument.Description);
                            if Utils.TransferIncomingDocToSP(IncomingDocument)then IncomingDocument."HKSPTE Transferred To SP":=true
                            else
                                IncomingDocument."HKSPTE Error To SP":=true;
                            IncomingDocument.Modify(false);
                            Sleep(500);
                            TransferCounter+=1;
                            if TransferCounter > 500 then exit;
                        until IncomingDocument.Next() = 0;
                end;
            }
            action(PINDeleteAttachmentsCustom)
            {
                Caption = 'Delete  Attachments Transfered to SharePoint - Pinetworks';
                ToolTip = 'Delete attachments that are transferred to SP';
                ApplicationArea = all;
                Image = DeleteExpiredComponents;

                trigger OnAction()
                var
                    util: Codeunit Utils;
                begin
                    util.DeleteIncomingDocumentAttachment();
                end;
            }
            /*    action(PINDeleteEmailOutBox)
                {
                    Caption = 'Delete  Email Outbox - Pinetworks';
                    ToolTip = 'Delete Email outbox';
                    ApplicationArea = all;
                    Image = DeleteXML;
                    trigger OnAction()
                    var
                        util: Codeunit Utils;
                    begin
                        util.DeleteEmailOutbox();
                    end;
                }
                action(PINDeleteSentEmail)
                {
                    Caption = 'Delete  Sent Email  - Pinetworks';
                    ToolTip = 'Delete Sent Email';
                    ApplicationArea = all;
                    Image = DeleteXML;
                    trigger OnAction()
                    var
                        util: Codeunit Utils;
                    begin
                        util.DeleteSentEmails();
                    end;
                }
                */
            action(ResetJournalTransferSP)
            {
                Caption = 'Reset SP Status';
                ToolTip = 'restart';
                ApplicationArea = All;
                Image = ResetStatus;

                trigger OnAction()
                var
                    IncomingDocument: Record "Incoming Document";
                begin
                    CurrPage.SetSelectionFilter(IncomingDocument);
                    //IncomingDocument.SetRange("Document Type", IncomingDocument."Document Type"::Journal);
                    //IncomingDocument.SetRange("HKSPTE Transferred To SP", true);
                    IncomingDocument.ModifyAll("HKSPTE Error To SP", false);
                    IncomingDocument.ModifyAll("HKSPTE Transferred To SP", false);
                end;
            }
            action(ManualCloseIncomingDocument)
            {
                Caption = 'SPC Close Incoming Document';
                ToolTip = 'Mark Incoming document as transfered to Sharepoint';
                ApplicationArea = All;
                Image = Close;

                trigger OnAction()
                var
                    IncomingDocument: Record "Incoming Document";
                begin
                    CurrPage.SetSelectionFilter(IncomingDocument);
                    IncomingDocument.SetRange("HKSPTE Transferred To SP", false);
                    //   IncomingDocument.ModifyAll("HKSPTE Error To SP", false);
                    Message('Updating %1 records', IncomingDocument.Count);
                    IncomingDocument.ModifyAll("HKSPTE Transferred To SP", true, false);
                end;
            }
        }
    }
}
