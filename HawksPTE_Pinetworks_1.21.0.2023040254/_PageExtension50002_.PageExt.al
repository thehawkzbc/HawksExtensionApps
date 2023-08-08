pageextension 50191 "PageExtension50002" extends "Recurring General Journal"
{
    layout
    {
        addafter("Posting Date")
        {
            field("Due Date"; Rec."Due Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the due date on the entry.';
            }
        }
        addafter("Gen. Prod. Posting Group")
        {
            field("VAT Prod. Posting Group38757"; Rec."VAT Prod. Posting Group")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the VAT specification of the involved item or resource to link transactions made for this record with the appropriate general ledger account according to the VAT posting setup.';
            }
        }
    }
}
