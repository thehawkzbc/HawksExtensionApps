pageextension 50180 PageExtension50045 extends "Posted Sales Invoices"
{
    layout
    {
        addafter("Location Code")
        {
            field("Payment Method Code"; Rec."Payment Method Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies how the customer must pay for products on the sales document.';
            }
        }
        addafter(Corrective)
        {
            field("User ID"; Rec."User ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the User ID field.';
            }
        }
        addafter("Due Date")
        {
            field("Your Reference"; Rec."Your Reference")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the customer''s reference. The contents will be printed on sales documents.';
            }
        }
        addafter("External Document No.")
        {
            field("Transaction Type"; Rec."Transaction Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Transaction Type field.';
            }
        }
    }
}
