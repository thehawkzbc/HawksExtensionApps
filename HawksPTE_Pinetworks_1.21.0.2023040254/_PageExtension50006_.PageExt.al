pageextension 50187 "PageExtension50006" extends "Posted Approval Entries"
{
    layout
    {
        addfirst(Control1)
        {
            field("Table ID94779"; Rec."Table ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the ID of the table where the record that is subject to approval is stored.';
            }
        }
        addafter("Currency Code")
        {
            field("Limit Type68874"; Rec."Limit Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Limit Type field.';
            }
            field("Available Credit Limit (LCY)25488"; Rec."Available Credit Limit (LCY)")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Available Credit Limit (LCY) field.';
            }
        }
    }
}
