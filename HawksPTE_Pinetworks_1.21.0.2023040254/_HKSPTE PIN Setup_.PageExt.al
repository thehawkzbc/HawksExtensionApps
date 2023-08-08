pageextension 50166 "HKSPTE PIN Setup" extends "PIN Setup"
{
    layout
    {
        addlast(General)
        {
            // TODO: Remove when latest mvui is ready to be deployed
            field("HKS Overr. VAT PPG Pre-paym. Err."; Rec."HKSPTE Overr. VAT PPG. Err.")
            {
                ToolTip = 'Disables Pre-payment error on VAT Prod Posting Group Validation';
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addlast(Processing)
        {
            action(UploadTnc)
            {
                Caption = 'Upload Sales Terms and Conditions';
                ToolTip = 'Upload Sales Terms and Conditions';
                ApplicationArea = All;
                Image = Import;

                trigger OnAction()
                var
                    FromFileName: Text;
                    inS: InStream;
                begin
                    if rec."HKSPTE Sales TnC".HasValue then if not Confirm(OverwriteFileQst)then exit;
                    if UploadIntoStream('Import', '', 'PDF Files(*.pdf)|*.pdf', FromFileName, inS)then begin
                        if FromFileName = '' then exit;
                        clear(rec."HKSPTE Sales TnC");
                        rec."HKSPTE Sales TnC".ImportStream(ins, FromFileName);
                        rec.Modify(true);
                    end end;
            }
            action(DownloadTnc)
            {
                Caption = 'Download Sales Terms and Conditions';
                ToolTip = 'Download Sales Terms and Conditions';
                ApplicationArea = All;

                trigger OnAction()
                var
                    TenantMedia: Record "Tenant Media";
                    Ins: InStream;
                    FileName: Text;
                begin
                    if not rec."HKSPTE Sales TnC".HasValue then exit;
                    if TenantMedia.Get(rec."HKSPTE Sales TnC".MediaId)then begin
                        TenantMedia.CalcFields(Content);
                        if TenantMedia.Content.HasValue then begin
                            FileName:='Sales Terms and Condition.pdf';
                            TenantMedia.Content.CreateInStream(Ins);
                            DownloadFromStream(Ins, '', '', '', FileName);
                        end end end;
            }
        }
    }
    var OverwriteFileQst: Label 'Overwrite the existing file?';
}
