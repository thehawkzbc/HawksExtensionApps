pageextension 50150 "HKSPTE Gen Journal" extends "General Journal" // 39
{
    layout
    {
        modify(IncomingDocAttachFactBox)
        {
            Visible = true;
        }
    }
    actions
    {
        // Add changes to page actions here
        addbefore("&Line")
        {
            action("Import")
            {
                ApplicationArea = All;
                ToolTip = 'Import file';
                Image = Import;
                Promoted = true;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    Codeunit.Run(50155);
                end;
            }
        }
    }
}
