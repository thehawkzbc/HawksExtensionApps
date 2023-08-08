pageextension 50092 "O365 Activities Ext" extends "O365 Activities"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'
        addlast("Ongoing Sales")
        {
            field("Posted Sales Invoices"; Rec."Posted Sales Invoices")
            {
                Caption = 'Posted Sales Invoices';
                ApplicationArea = All;
            }
        }
        addlast("Ongoing Purchases")
        {
            field("Posted Purchase Invoices"; Rec."Posted Purchase Invoices")
            {
                Caption = 'Posted Purchase Invoices';
                ApplicationArea = All;
            }
        }
    }
}
