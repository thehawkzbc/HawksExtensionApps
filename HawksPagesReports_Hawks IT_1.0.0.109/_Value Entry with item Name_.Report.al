report 50256 "Value Entry with item Name"
{
    ApplicationArea = All;
    Caption = 'Value Entry with item Name';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Excel;
    ExcelLayout = 'Value Entry with item name.xlsx';

    dataset
    {
        dataitem(ValueEntry; "Value Entry")
        {
            RequestFilterFields = "Item No.", "Posting Date", "Item Ledger Entry Type", "Document No.", "Location Code", "Valued Quantity", "Gen. Prod. Posting Group", "Cost Posted to G/L";

            column(ItemNo; "Item No.")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            column(ItemLedgerEntryType; "Item Ledger Entry Type")
            {
            }
            column(DocumentNo; "Document No.")
            {
            }
            column(LocationCode; "Location Code")
            {
            }
            column(ValuedQuantity; "Valued Quantity")
            {
            }
            column(GenProdPostingGroup; "Gen. Prod. Posting Group")
            {
            }
            dataitem(Item; Item)
            {
                DataItemLink = "No."=field("Item No.");

                column(Description; Description)
                {
                }
            }
            column(CostPostedToGL; "Cost Posted to G/L")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
