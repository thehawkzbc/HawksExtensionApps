pageextension 50188 PageExtension50007 extends "Customer List"
{
    layout
    {
        addafter(Contact)
        {
            field("E-Mail"; Rec."E-Mail")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the customer''s email address.';
            }
        }
    }
}
