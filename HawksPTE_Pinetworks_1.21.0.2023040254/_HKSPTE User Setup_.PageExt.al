pageextension 50160 "HKSPTE User Setup" extends "User Setup" // 119
{
    layout
    {
        addafter("Purchase Resp. Ctr. Filter")
        {
            field("Item Journal Approval"; Rec."Item Journal Approval")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Item Journal Approval field.';
            }
        }
    }
}
