pageextension 50239 FixedAssetExt extends "Fixed Asset Card"
{
    layout
    {
        // Add changes to page layout here 
        addlast(General)
        {
            field(Quantity; Rec.Quantity)
            {
                ApplicationArea = All;
            }
        }
    }
    var myInt: Integer;
}
