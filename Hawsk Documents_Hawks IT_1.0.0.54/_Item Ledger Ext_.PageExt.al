pageextension 50044 "Item Ledger Ext" extends "Item Ledger Entries"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'
        addlast(Control1)
        {
            field("Inventory Posting Group"; Rec."Inventory Posting Group")
            {
                Caption = 'Inventory Posting Group';
                ApplicationArea = All;
            }
        }
    }
}
