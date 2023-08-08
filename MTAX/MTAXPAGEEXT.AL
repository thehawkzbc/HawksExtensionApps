pageextension 60200 "PINTAX VAT Entries1" extends "VAT Entries"
{
    layout
    {
        addlast(content)
        {
            field("PINTAX Tax Activity Number1"; Rec."PINTAX Tax Activity Number1")
            {
                ApplicationArea = all;
                Caption = 'PINTAX Tax Activity Number1';
            }
            field("PINTAX Force Closed1"; Rec."PINTAX Force Closed1")
            {
                ApplicationArea = all;
                Caption = 'PINTAX Force Closed1';
            }
        }
    }

    actions
    {
    }

}
