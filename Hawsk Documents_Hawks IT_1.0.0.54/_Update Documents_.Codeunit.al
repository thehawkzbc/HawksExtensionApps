codeunit 50020 "Update Documents"
{
    [EventSubscriber(ObjectType::Page, page::"Posted Sales Shipment - Update", OnAfterRecordChanged, '', false, false)]
    procedure updateShalesShipmentHeader(var SalesShipmentHeader: Record "Sales Shipment Header"; xSalesShipmentHeader: Record "Sales Shipment Header"; var IsChanged: Boolean)
    var
        myInt: Integer;
    begin
        IsChanged:=(SalesShipmentHeader."IMO No." <> xSalesShipmentHeader."IMO No.") or (SalesShipmentHeader."Vessel Name" <> xSalesShipmentHeader."Vessel Name") or (SalesShipmentHeader."BDN No." <> xSalesShipmentHeader."BDN No.") or (SalesShipmentHeader."Delivery Port" <> xSalesShipmentHeader."Delivery Port");
    end;
    [EventSubscriber(ObjectType::Page, page::"Posted Return Receipt - Update", OnAfterRecordChanged, '', false, false)]
    procedure updatereturnreceiptHeader(var ReturnReceiptHeader: Record "Return Receipt Header"; xReturnReceiptHeader: Record "Return Receipt Header"; var IsChanged: Boolean)
    var
        myInt: Integer;
    begin
        IsChanged:=(ReturnReceiptHeader."IMO No." <> xReturnReceiptHeader."IMO No.") or (ReturnReceiptHeader."Vessel Name" <> xReturnReceiptHeader."Vessel Name") or (ReturnReceiptHeader."BDN No." <> xReturnReceiptHeader."BDN No.") or (ReturnReceiptHeader."Delivery Port" <> xReturnReceiptHeader."Delivery Port");
    end;
    [EventSubscriber(ObjectType::Page, page::"Pstd. Sales Cr. Memo - Update", OnAfterRecordChanged, '', false, false)]
    procedure updatesalesCrmemoHeader(var SalesCrMemoHeader: Record "Sales Cr.Memo Header"; xSalesCrMemoHeader: Record "Sales Cr.Memo Header"; var IsChanged: Boolean)
    var
        myInt: Integer;
    begin
        IsChanged:=(SalesCrMemoHeader."IMO No." <> xSalesCrMemoHeader."IMO No.") or (SalesCrMemoHeader."Vessel Name" <> xSalesCrMemoHeader."Vessel Name") or (SalesCrMemoHeader."BDN No." <> xSalesCrMemoHeader."BDN No.") or (SalesCrMemoHeader."Delivery Port" <> xSalesCrMemoHeader."Delivery Port");
    end;
    [EventSubscriber(ObjectType::Page, page::"Posted Sales Inv. - Update", OnAfterRecordChanged, '', false, false)]
    procedure updatesalesinvoiceHeader(var SalesInvoiceHeader: Record "Sales Invoice Header"; xSalesInvoiceHeader: Record "Sales Invoice Header"; var IsChanged: Boolean)
    var
        myInt: Integer;
    begin
        IsChanged:=(SalesInvoiceHeader."IMO No." <> xSalesInvoiceHeader."IMO No.") or (SalesInvoiceHeader."Vessel Name" <> xSalesInvoiceHeader."Vessel Name") or (SalesInvoiceHeader."BDN No." <> xSalesInvoiceHeader."BDN No.") or (SalesInvoiceHeader."Delivery Port" <> xSalesInvoiceHeader."Delivery Port");
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Inv. Header - Edit", OnRunOnBeforeAssignValues, '', false, false)]
    local procedure OnRunOnBeforeAssignValues(var SalesInvoiceHeader: Record "Sales Invoice Header"; SalesInvoiceHeaderRec: Record "Sales Invoice Header");
    begin
        SalesInvoiceHeader."IMO No.":=SalesInvoiceHeaderRec."IMO No.";
        SalesInvoiceHeader."BDN No.":=SalesInvoiceHeaderRec."BDN No.";
        SalesInvoiceHeader."Vessel Name":=SalesInvoiceHeaderRec."Vessel Name";
        SalesInvoiceHeader."Delivery Port":=SalesInvoiceHeaderRec."Delivery Port";
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Credit Memo Hdr. - Edit", OnBeforeSalesCrMemoHeaderModify, '', false, false)]
    local procedure OnBeforeSalesCrMemoHeaderModify(var SalesCrMemoHeader: Record "Sales Cr.Memo Header"; FromSalesCrMemoHeader: Record "Sales Cr.Memo Header");
    begin
        SalesCrMemoHeader."IMO No.":=FromSalesCrMemoHeader."IMO No.";
        SalesCrMemoHeader."BDN No.":=FromSalesCrMemoHeader."BDN No.";
        SalesCrMemoHeader."Vessel Name":=FromSalesCrMemoHeader."Vessel Name";
        SalesCrMemoHeader."Delivery Port":=FromSalesCrMemoHeader."Delivery Port";
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Return Receipt Header - Edit", OnBeforeReturnReceiptHeaderModify, '', false, false)]
    local procedure OnBeforeReturnReceiptHeaderModify(var ReturnReceiptHeader: Record "Return Receipt Header"; ReturnReceiptHeaderRec: Record "Return Receipt Header");
    begin
        ReturnReceiptHeader."IMO No.":=ReturnReceiptHeaderRec."IMO No.";
        ReturnReceiptHeader."BDN No.":=ReturnReceiptHeaderRec."BDN No.";
        ReturnReceiptHeader."Vessel Name":=ReturnReceiptHeaderRec."Vessel Name";
        ReturnReceiptHeader."Delivery Port":=ReturnReceiptHeaderRec."Delivery Port";
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", OnAfterInitItemLedgEntry, '', false, false)]
    local procedure OnAfterInitItemLedgEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; var ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer);
    begin
        NewItemLedgEntry."Inventory Posting Group":=ItemJournalLine."Inventory Posting Group";
    end;
}
