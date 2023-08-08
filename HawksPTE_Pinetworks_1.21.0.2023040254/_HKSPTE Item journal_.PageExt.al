pageextension 50159 "HKSPTE Item journal" extends "Item Journal" // 40
{
    layout
    {
        modify("Reason Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
        moveafter("Location Code"; "Reason Code")
        addafter("Unit Cost")
        {
            field(Approved; Rec.Approved)
            {
                ApplicationArea = All;
                Editable = canApproveJournalLine;
                ToolTip = 'Specifies the value of the Approved field.';
            }
        }
        modify("Transaction Type")
        {
            ShowMandatory = true;
        }
    }
    trigger OnOpenPage()
    begin
        UserSetup.SetFilter("User ID", UserId);
        UserSetup.SetFilter("Item Journal Approval", '%1', TRUE);
        if UserSetup.FindFirst()then canApproveJournalLine:=true
        else
            canApproveJournalLine:=false;
    end;
    var UserSetup: Record "User Setup";
    canApproveJournalLine: Boolean;
}
