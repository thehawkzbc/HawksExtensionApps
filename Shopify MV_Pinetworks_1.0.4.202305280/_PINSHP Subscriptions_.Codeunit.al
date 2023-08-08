codeunit 50890 "PINSHP Subscriptions"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Shpfy Product Events", 'OnBeforeSendUpdateShopifyProductVariant', '', false, false)]
    local procedure OnBeforeSendUpdateShopifyProductVariant(ShopifyShop: Record "Shpfy Shop"; var ShopifyVariant: Record "Shpfy Variant"; xShopifyVariant: Record "Shpfy Variant");
    begin
        if ShopifyShop."PINSHP Update Shopify Price" then exit;
        // this will set price to the value already in shopify product,
        // therefore preventing any price update from being sent.
        ShopifyVariant.Price:=xShopifyVariant.Price;
        ShopifyVariant.Modify();
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Shpfy Order Events", 'OnAfterMapCustomer', '', false, false)]
    local procedure OnAfterMapCustomer(var ShopifyOrderHeader: Record "Shpfy Order Header");
    var
        Customer: Record Customer;
    begin
        if not Customer.Get(ShopifyOrderHeader."Sell-to Customer No.")then exit;
        if Customer."Bill-to Customer No." = '' then exit;
        if ShopifyOrderHeader."Bill-to Customer No." = Customer."Bill-to Customer No." then exit;
        ShopifyOrderHeader.Validate("Bill-to Customer No.", Customer."Bill-to Customer No.");
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Shpfy Order Events", 'OnAfterProcessSalesDocument', '', false, false)]
    local procedure OnAfterProcessSalesDocument(var SalesHeader: Record "Sales Header"; OrderHeader: Record "Shpfy Order Header");
    var
        SalesLine: Record "Sales Line";
        SalesCalcDiscountByType: Codeunit "Sales - Calc Discount By Type";
    begin
        SalesCalcDiscountByType.ApplyInvDiscBasedOnAmt(OrderHeader."Discount Amount", SalesHeader);
        if SalesHeader."Location Code" = '' then begin
            SalesLine.SetRange("Document No.", SalesHeader."No.");
            SalesLine.SetRange("Document Type", SalesHeader."Document Type");
            SalesLine.SetRange(Type, "Sales Line Type"::Item);
            if SalesLine.FindFirst()then begin
                SalesHeader.Validate("Shortcut Dimension 1 Code", SalesLine."Shortcut Dimension 1 Code");
                SalesHeader.Validate("Shortcut Dimension 2 Code", SalesLine."Shortcut Dimension 2 Code");
            end;
        end;
        SalesHeader.Modify(true);
    end;
}
