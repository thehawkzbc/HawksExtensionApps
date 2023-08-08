tableextension 50081 "Item Ledger Entry Ext" extends "Item Ledger Entry"
{
    fields
    {
        field(50075; "Inventory Posting Group"; Code[20])
        {
            Caption = 'Inventory Posting Group';
            DataClassification = ToBeClassified;
        }
    }
}
