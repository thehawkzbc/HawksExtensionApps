report 50175 "Variant By Location"
{
    UsageCategory = ReportsAndAnalysis;
    Caption = 'Variant By Location';
    ApplicationArea = All;
    RDLCLayout = './Variant By Location.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "No.";

            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Item No."=field("No.");

                column(Variant_Code; "Variant Code")
                {
                }
                column(Item_No_; "Item No.")
                {
                }
                column(Description; item.Description)
                {
                }
                column(uom; "Unit of Measure Code")
                {
                }
                column(Qty_by_Location; "Location Code")
                {
                }
                column(Item_Quantity; Quantity)
                {
                }
            }
        }
    }
}
