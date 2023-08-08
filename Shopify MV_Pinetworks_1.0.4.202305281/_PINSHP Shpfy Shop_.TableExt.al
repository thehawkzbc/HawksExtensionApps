tableextension 50890 "PINSHP Shpfy Shop" extends "Shpfy Shop" // 30102
{
    fields
    {
        field(50890; "PINSHP Update Shopify Price"; Boolean)
        {
            Caption = 'Specifies whether D365BC can update product Unit Price when synchronizing to Shopify.';
            DataClassification = ToBeClassified;
            InitValue = true;
        }
    }
}
