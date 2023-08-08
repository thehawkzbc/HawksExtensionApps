codeunit 50109 GLAccountWorkflowintegration
{
    [IntegrationEvent(false, false)]
    PROCEDURE OnSendGLAccountforApproval(VAR GLAccount: Record "G/L Account");
    begin
    end;
    [IntegrationEvent(false, false)]
    PROCEDURE OnSendGLAccountforCancel(VAR GLAccount: Record "G/L Account");
    begin
    end;
    procedure IsGLAccountEnabled(var GLAccount: Record "G/L Account"): Boolean var
        WFMngt: Codeunit "Workflow Management";
        WFCode: Codeunit GLAccountWorkflow;
    begin
        exit(WFMngt.CanExecuteWorkflow(GLAccount, WFCode.RunWorkflowOnSendGLAccountApprovalCode()));
    end;
    local procedure CheckGLAccountWorkflowEnabled(): Boolean var
        GLAccount: Record "G/L Account";
        NoWorkflowEnb: TextConst ENU = 'No workflow Enabled for this Record type', ENG = 'No workflow Enabled for this Record type';
    begin
        if not IsGLAccountEnabled(GLAccount)then Error(NoWorkflowEnb);
    end;
}
