pageextension 50268 "requisition worksheet ext" extends "Req. Wksh. Names"
{
    layout
    {
        addafter(Description)
        {
            field("Location Code"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
            field("Transfer-from Code"; Rec."Transfer-from Code")
            {
                ApplicationArea = All;
            }
        }
    }
}
