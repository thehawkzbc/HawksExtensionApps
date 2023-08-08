pageextension 50890 "PINSHP Shpfy Shop Card" extends "Shpfy Shop Card" // 30101
{
    layout
    {
        addafter(CanUpdateShopifyProducts)
        {
            field("PINSHP PinshpUpdateShopifyPrice"; Rec."PINSHP Update Shopify Price")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether D365BC can update product Unit Price when synchronizing to Shopify.';
                Enabled = Rec."Can Update Shopify Products";
            }
        }
    }
}
