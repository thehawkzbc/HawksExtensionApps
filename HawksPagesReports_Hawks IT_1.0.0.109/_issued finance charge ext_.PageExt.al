pageextension 50253 "issued finance charge ext" extends "Issued Fin. Charge Memo List"
{
    layout
    {
        addafter("Customer No.")
        {
            field("Document Date"; Rec."Document Date")
            {
                ApplicationArea = All;
            }
        }
    }
}
