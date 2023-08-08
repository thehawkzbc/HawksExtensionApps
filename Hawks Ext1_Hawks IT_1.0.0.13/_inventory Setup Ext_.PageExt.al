pageextension 50024 "inventory Setup Ext" extends "Inventory Setup"
{
    layout
    {
        // Modifying the caption of the field 'Address'
        modify("Variant Mandatory if Exists")
        {
            Caption = 'New Address 2';
            Visible = false;
        }
    }
}
