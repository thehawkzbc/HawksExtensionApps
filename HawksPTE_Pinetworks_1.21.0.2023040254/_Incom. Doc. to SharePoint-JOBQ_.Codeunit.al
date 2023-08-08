codeunit 50158 "Incom. Doc. to SharePoint-JOBQ"
{
    trigger OnRun()
    var
        IncomingDocument: Record "Incoming Document";
        Utils: Codeunit Utils;
        TransferCounter: Integer;
    begin
        IncomingDocument.Reset();
        IncomingDocument.SetRange("HKSPTE Transferred To SP", false);
        IncomingDocument.SetRange(Posted, true);
        IncomingDocument.SetFilter("Document No.", '<>%1', '');
        TransferCounter:=1;
        if IncomingDocument.FindFirst()then repeat if IncomingDocument."HKSPTE Transferred To SP" = false then begin
                    if Utils.TransferIncomingDocToSP(IncomingDocument)then IncomingDocument."HKSPTE Transferred To SP":=true
                    else
                        IncomingDocument."HKSPTE Error To SP":=true;
                    IncomingDocument.Modify(false);
                    Sleep(1000);
                end;
                TransferCounter+=1;
                if TransferCounter > 50 then exit;
            until IncomingDocument.Next() = 0;
    end;
}
