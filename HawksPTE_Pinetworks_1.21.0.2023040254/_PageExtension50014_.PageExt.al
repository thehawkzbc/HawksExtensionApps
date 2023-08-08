pageextension 50197 "PageExtension50014" extends "Sales Order List"
{
    layout
    {
        addafter("Completely Shipped")
        {
            field("Transaction Type"; Rec."Transaction Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the type of transaction that the document represents, for the purpose of reporting to INTRASTAT.';
            }
        }
        modify(Control1902018507)
        {
            Visible = false;
        }
        modify("Attached Documents")
        {
            Visible = false;
        }
        modify(Control1905767507)
        {
            Visible = false;
        }
        modify(Control1900316107)
        {
            Visible = false;
        }
        modify("Location Code")
        {
            Visible = false;
        }
        modify("Assigned User ID")
        {
            Visible = false;
        }
        modify("External Document No.")
        {
            Visible = false;
        }
        modify(Amount)
        {
            Visible = false;
        }
    }
    actions
    {
        modify(Dimensions)
        {
            Promoted = false;
        }
        modify(Approvals)
        {
            Promoted = false;
        }
        modify(Statistics)
        {
            Promoted = false;
        }
        modify(Release)
        {
            Promoted = false;
        }
        modify(Reopen)
        {
            Promoted = false;
        }
        modify(Post)
        {
            Promoted = false;
        }
        modify("Post &Batch")
        {
            Promoted = false;
        }
    }
}
