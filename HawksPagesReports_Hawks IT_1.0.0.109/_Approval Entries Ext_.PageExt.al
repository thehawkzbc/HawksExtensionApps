pageextension 50258 "Approval Entries Ext" extends "Approval Entries"
{
    actions
    {
        addafter("&Delegate")
        {
            action(ExportToExcel)
            {
                Caption = 'Export to Excel';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Export;

                trigger OnAction()
                var
                begin
                    ClearApprovalEntries(Rec);
                end;
            }
        }
    }
    local procedure ClearApprovalEntries(var Rec: Record "Approval Entry")
    var
        ApprovalEntries1: Record "Approval Entry";
    begin
    end;
}
