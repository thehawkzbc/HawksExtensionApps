pageextension 50185 "PageExtension50059" extends "Posted Purchase Invoices"
{
    layout
    {
        addafter("Vendor Invoice No.")
        {
            field("CIT PO Order No"; Rec."CIT PO Order No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the PO Order No. field.';
            }
        }
    }
}
