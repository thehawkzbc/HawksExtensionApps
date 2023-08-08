pageextension 50001 PageExtension50001 extends "User Setup"
{
    layout
    {
        addafter("Salespers./Purch. Code")
        {
            field("Approval Administrator24153"; Rec."Approval Administrator")
            {
                ApplicationArea = All;
            }
        }
    }
}
