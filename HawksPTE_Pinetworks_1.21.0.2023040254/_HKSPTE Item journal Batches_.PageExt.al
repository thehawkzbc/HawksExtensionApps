pageextension 50158 "HKSPTE Item journal Batches" extends "Item Journal Batches" // 262
{
    layout
    {
        addlast(Control1)
        {
            field("Require Approval"; Rec."Require Approval")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Require Approval field.';
            }
        }
    }
}
