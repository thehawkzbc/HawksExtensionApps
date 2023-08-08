pageextension 50201 TransferOrderExt1 extends "Transfer order"
{
    actions
    {
        addafter(Documents)
        {
            action(GetOrderLines)
            {
                ApplicationArea = all;
                Caption = 'Get Order Lines';
                Image = Order;
                ToolTip = 'Add transfer order lines from purchase lines.';

                trigger OnAction()
                begin
                    getpurchaselines();
                end;
            }
        }
    }
    local procedure getpurchaselines()
    var
        PurchHeader: Record "Purchase Header";
        TempPurchHeader: Record "Purchase Header" temporary;
        PurchaseOrders: Page "Purchase orders";
    begin
        clear(PurchHeader);
        PurchHeader.SetCurrentKey("Document Type");
        PurchHeader.SetRange("Document Type", PurchHeader."Document Type"::Order);
        PurchHeader.SetRange("Location Code", REC."Transfer-from Code");
        PurchaseOrders.SetTableView(PurchHeader);
        PurchaseOrders.LookupMode:=true;
        if PurchaseOrders.RunModal() = ACTION::LookupOK then begin
            PurchaseOrders.GetSelectedRecords(TempPurchHeader);
            CreateTransferLinesFromSelectedPurchlines(TempPurchHeader);
        end;
    end;
    local procedure CreateTransferLinesFromSelectedPurchlines(var TempPurchHeader: Record "Purchase Header" temporary)
    var
        PurchLine: Record "Purchase Line";
        TempPurchLine: Record "Purchase Line" temporary;
        SelectionFilterManagement: Codeunit SelectionFilterManagement;
        PurchaseLines: Page "Purchase Lines";
        RecRef: RecordRef;
    begin
        RecRef.GetTable(TempPurchHeader);
        PurchLine.SetFilter("Document No.", SelectionFilterManagement.GetSelectionFilter(RecRef, TempPurchHeader.FieldNo("No.")));
        PurchLine.SetRange(Type, PurchLine.Type::Item);
        PurchLine.SetRange("Location Code", rec."Transfer-from Code");
        PurchaseLines.SetTableView(PurchLine);
        PurchaseLines.LookupMode:=true;
        if PurchaseLines.RunModal() = ACTION::LookupOK then begin
            PurchaseLines.GetSelectedRecords(TempPurchLine);
            CreateTransferLinesFromSelectedLines(TempPurchLine);
        end;
    end;
    local procedure CreateTransferLinesFromSelectedLines(var PurchLine: Record "Purchase Line")
    var
        TransferLine: Record "Transfer Line";
        LineNo: Integer;
    begin
        TransferLine.SetRange("Document No.", Rec."No.");
        if TransferLine.FindLast()then;
        LineNo:=TransferLine."Line No.";
        if PurchLine.FindSet()then repeat LineNo:=LineNo + 10000;
                AddTransferLineFromLine(PurchLine, LineNo);
            until PurchLine.Next() = 0;
    end;
    local procedure AddTransferLineFromLine(PurchLine: Record "Purchase Line"; LineNo: Integer)
    var
        TransferLine: Record "Transfer Line";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TempItemLedgerEntry: Record "Item Ledger Entry" temporary;
        ItemTrackingDocMgt: Codeunit "Item Tracking Doc. Management";
        ItemTrackingMgt: Codeunit "Item Tracking Management";
    begin
        TransferLine."Document No.":=Rec."No.";
        TransferLine."Line No.":=LineNo;
        TransferLine.Validate("Item No.", PurchLine."No.");
        TransferLine.Validate("Variant Code", PurchLine."Variant Code");
        TransferLine.Validate(Quantity, PurchLine.Quantity);
        TransferLine.Validate("Unit of Measure Code", PurchLine."Unit of Measure Code");
        TransferLine."Shortcut Dimension 1 Code":=PurchLine."Shortcut Dimension 1 Code";
        TransferLine."Shortcut Dimension 2 Code":=PurchLine."Shortcut Dimension 2 Code";
        TransferLine."Dimension Set ID":=PurchLine."Dimension Set ID";
        //  OnAddTransferLineFromReceiptLineOnBeforeTransferLineInsert(TransferLine, PurchRcptLine, Rec);
        TransferLine.Insert(true);
    // PurchLine.FilterPstdDocLnItemLedgEntries(ItemLedgerEntry);
    // ItemTrackingDocMgt.CopyItemLedgerEntriesToTemp(TempItemLedgerEntry, ItemLedgerEntry);
    // ItemTrackingMgt.CopyItemLedgEntryTrkgToTransferLine(TempItemLedgerEntry, TransferLine);
    // OnAfterAddTransferLineFromReceiptLine(TransferLine, PurchRcptLine, TempItemLedgerEntry, Rec);
    end;
}
