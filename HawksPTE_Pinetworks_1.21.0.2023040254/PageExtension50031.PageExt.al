pageextension 50171 PageExtension50031 extends "Get Post.Doc - P.InvLn Subform"
{
    layout
    {
        addafter(Description)
        {
            field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the VAT Bus. Posting Group field.';
            }
        }
    }
}
