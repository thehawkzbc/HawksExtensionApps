pageextension 50203 PurchaseLinesExt1 extends "Purchase lines"
{
    procedure GetSelectedRecords(var TempPurchLine: Record "Purchase Line" temporary)
    var
        PurchLine: Record "Purchase Line";
    begin
        CurrPage.SetSelectionFilter(PurchLine);
        if PurchLine.FindSet()then repeat TempPurchLine:=PurchLine;
                TempPurchLine.Insert();
            until PurchLine.Next() = 0;
    end;
}
