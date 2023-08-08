pageextension 50007 PageExtension50007_85979 extends "Transfer Order Subform"
{
    layout
    {
        addafter(Quantity)
        {
            field("Transfer-to Code66413"; Rec."Transfer-to Code")
            {
                ApplicationArea = All;
            }
            field("Transfer-from Code95592"; Rec."Transfer-from Code")
            {
                ApplicationArea = All;
            }
            field("Transfer-from Code85979"; Rec."Transfer-from Code")
            {
                ApplicationArea = All;
            }
        }
    }
}
