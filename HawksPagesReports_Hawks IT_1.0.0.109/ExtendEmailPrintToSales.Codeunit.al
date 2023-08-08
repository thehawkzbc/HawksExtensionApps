codeunit 50011 ExtendEmailPrintToSales
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterSendSalesHeader', '', true, true)]
    local procedure MyProcedurevar(SalesHeader: Record "Sales Header"; ShowDialog: Boolean)
    var
        DocumentSendingProfile: Record "Document Sending Profile";
        DummyReportSelections: Record "Report Selections";
    begin
        IF SalesHeader."Document Type" = SalesHeader."Document Type"::Order THEN BEGIN
            DocumentSendingProfile.TrySendToEMail(DummyReportSelections.Usage::"S.Order".AsInteger(), SalesHeader, SalesHeader.FieldNo("No."), SalesHeader.GetDocTypeTxt(), SalesHeader.FieldNo("Bill-to Customer No."), ShowDialog);
        end;
    end;
    [EventSubscriber(ObjectType::Table, Database::"Requisition Line", 'OnAfterSetUpNewLine', '', false, false)]
    local procedure OnAfterSetUpNewLine(var RequisitionLine: Record "Requisition Line"; LastReqLine: Record "Requisition Line");
    var
        ReqWkshName1: Record "Requisition Wksh. Name";
    begin
        ReqWkshName1.Get(RequisitionLine."Worksheet Template Name", RequisitionLine."Journal Batch Name");
        RequisitionLine."Location Code":=ReqWkshName1."Location Code";
        RequisitionLine."Transfer-from Code":=reqwkshname1."Transfer-from Code";
    end;
}
