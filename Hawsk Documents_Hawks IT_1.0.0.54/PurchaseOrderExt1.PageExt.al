pageextension 50202 PurchaseOrderExt1 extends "Purchase Orders"
{
    procedure GetSelectedRecords(var TempPurchHeader: Record "Purchase Header" temporary)
    var
        PurchHeader: Record "Purchase Header";
    begin
        CurrPage.SetSelectionFilter(PurchHeader);
        if PurchHeader.FindSet()then repeat TempPurchHeader:=PurchHeader;
                TempPurchHeader.Insert();
            until PurchHeader.Next() = 0;
    end;
}
