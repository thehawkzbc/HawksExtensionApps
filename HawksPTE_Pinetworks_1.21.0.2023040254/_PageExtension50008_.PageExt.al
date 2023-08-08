pageextension 50189 "PageExtension50008" extends "Vendor List"
{
    layout
    {
        addafter(Contact)
        {
            field("E-Mail"; Rec."E-Mail")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the vendor''s email address.';
            }
        }
        modify("Search Name")
        {
            Visible = false;
        }
    }
}
