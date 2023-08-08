codeunit 50108 GLAccountWorkflow
{
    Permissions = TableData "Approval Entry"=ird;

    trigger OnRun()
    var
        lrec_AppEntry: Record "Approval Entry";
    begin
    end;
    var WFMngt: Codeunit "Workflow Management";
    AppMgmt: Codeunit "Approvals Mgmt.";
    WorkflowEventHandling: Codeunit "Workflow Event Handling";
    WorkflowResponseHandling: Codeunit "Workflow Response Handling";
    SendGLAccountReq: TextConst ENU = 'Approval Request for GL Account is requested', ENG = 'Approval Request for GL Account is requested';
    AppReqGLAccount: TextConst ENU = 'Approval Request for GL Account is approved', ENG = 'Approval Request for GL Account is approved';
    RejReqGLAccount: TextConst ENU = 'Approval Request for GL Account is rejected', ENG = 'Approval Request for GL Account is rejected';
    DelReqGLAccount: TextConst ENU = 'Approval Request for GL Account is delegated', ENG = 'Approval Request for GL Account is delegated';
    CanReqGLAccount: TextConst ENU = 'Approval Request for GL Account is cancelled', ENG = 'Approval Request for GL Account is cancelled';
    SendForPendAppTxt: TextConst ENU = 'Status of GL Account changed to Pending approval', ENG = 'Status of GL Account changed to Pending approval';
    ReleaseGLAccountTxt: TextConst ENU = 'Release GL Account', ENG = 'Release GL Account';
    ReOpenGLAccountTxt: TextConst ENU = 'ReOpen GL Account', ENG = 'ReOpen GL Account';
    procedure RunWorkflowOnCancelGLAccountApprovalCode(): Code[128]begin
        exit(UpperCase('RunWorkflowOnCancelGLAccountApproval'))end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::GLAccountWorkflowintegration, 'OnSendGLAccountforCancel', '', false, false)]
    procedure RunWorkflowOnSendGLAccountCancel(var GLAccount: Record "G/L Account")
    begin
        WFMngt.HandleEvent(RunWorkflowOnCancelGLAccountApprovalCode(), GLAccount);
    end;
    procedure RunWorkflowOnSendGLAccountApprovalCode(): Code[128]begin
        exit(UpperCase('RunWorkflowOnSendGLAccountApproval'))end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::GLAccountWorkflowintegration, 'OnSendGLAccountforApproval', '', false, false)]
    procedure RunWorkflowOnSendGLAccountApproval(var GLAccount: Record "G/L Account")
    begin
        WFMngt.HandleEvent(RunWorkflowOnSendGLAccountApprovalCode(), GLAccount);
    end;
    procedure RunWorkflowOnApproveGLAccountApprovalCode(): Code[128]begin
        exit(UpperCase('RunWorkflowOnApproveGLAccountApproval'))end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnApproveApprovalRequest', '', false, false)]
    procedure RunWorkflowOnApproveGLAccountApproval(var ApprovalEntry: Record "Approval Entry")
    begin
        WFMngt.HandleEventOnKnownWorkflowInstance(RunWorkflowOnApproveGLAccountApprovalCode(), ApprovalEntry, ApprovalEntry."Workflow Step Instance ID");
    end;
    procedure RunWorkflowOnRejectGLAccountApprovalCode(): Code[128]begin
        exit(UpperCase('RunWorkflowOnRejectGLAccountApproval'))end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnRejectApprovalRequest', '', false, false)]
    procedure RunWorkflowOnRejectGLAccountApproval(var ApprovalEntry: Record "Approval Entry")
    begin
        WFMngt.HandleEventOnKnownWorkflowInstance(RunWorkflowOnRejectGLAccountApprovalCode(), ApprovalEntry, ApprovalEntry."Workflow Step Instance ID");
    end;
    procedure RunWorkflowOnDelegateGLAccountApprovalCode(): Code[128]begin
        exit(UpperCase('RunWorkflowOnDelegateGLAccountApproval'))end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnDelegateApprovalRequest', '', false, false)]
    procedure RunWorkflowOnDelegateGLAccountApproval(var ApprovalEntry: Record "Approval Entry")
    begin
        WFMngt.HandleEventOnKnownWorkflowInstance(RunWorkflowOnDelegateGLAccountApprovalCode(), ApprovalEntry, ApprovalEntry."Workflow Step Instance ID");
    end;
    procedure SetStatusToPendingApprovalCodeGLAccount(): Code[128]begin
        exit(UpperCase('SetStatusToPendingApprovalGLAccount'));
    end;
    procedure SetStatusToPendingApprovalGLAccount(var Variant: Variant)
    var
        RecRef: RecordRef;
        GLAccount: Record "G/L Account";
    begin
        RecRef.GetTable(Variant);
        case RecRef.Number()of DATABASE::"G/L Account": begin
            RecRef.SetTable(GLAccount);
            GLAccount.Validate(Status, GLAccount.Status::"Pending Approval");
            GLAccount.Modify();
            Variant:=GLAccount;
        end;
        end;
    end;
    procedure ReleaseGLAccountCode(): Code[128]begin
        exit(UpperCase('ReleaseGLAccount'));
    end;
    procedure ReleaseGLAccount(var Variant: Variant)
    var
        RecRef: RecordRef;
        TargetRecRef: RecordRef;
        ApprovalEntry: Record "Approval Entry";
        GLAccount: Record "G/L Account";
    begin
        RecRef.GetTable(Variant);
        case RecRef.Number()of DATABASE::"Approval Entry": begin
            ApprovalEntry:=Variant;
            TargetRecRef.Get(ApprovalEntry."Record ID to Approve");
            Variant:=TargetRecRef;
            ReleaseGLAccount(Variant);
        end;
        DATABASE::"G/L Account": begin
            RecRef.SetTable(GLAccount);
            GLAccount.Validate(Status, GLAccount.Status::Released);
            GLAccount.Modify();
            Variant:=GLAccount;
        end;
        end;
    end;
    procedure ReOpenGLAccountCode(): Code[128]begin
        exit(UpperCase('ReOpenGLAccount'));
    end;
    procedure ReOpenGLAccount(var Variant: Variant)
    var
        RecRef: RecordRef;
        TargetRecRef: RecordRef;
        ApprovalEntry: Record "Approval Entry";
        GLAccount: Record "G/L Account";
    begin
        RecRef.GetTable(Variant);
        case RecRef.Number()of DATABASE::"Approval Entry": begin
            ApprovalEntry:=Variant;
            TargetRecRef.Get(ApprovalEntry."Record ID to Approve");
            Variant:=TargetRecRef;
            ReOpenGLAccount(Variant);
        end;
        DATABASE::"G/L Account": begin
            RecRef.SetTable(GLAccount);
            GLAccount.Validate(Status, GLAccount.Status::Open);
            GLAccount.Modify();
            Variant:=GLAccount;
        end;
        end;
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowEventsToLibrary', '', false, false)]
    procedure AddGLAccountEventToLibrary()
    begin
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnSendGLAccountApprovalCode(), Database::"G/L Account", SendGLAccountReq, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnApproveGLAccountApprovalCode(), Database::"Approval Entry", AppReqGLAccount, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnRejectGLAccountApprovalCode(), Database::"Approval Entry", RejReqGLAccount, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnDelegateGLAccountApprovalCode(), Database::"Approval Entry", DelReqGLAccount, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnCancelGLAccountApprovalCode(), Database::"G/L Account", CanReqGLAccount, 0, false);
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnAddWorkflowResponsesToLibrary', '', false, false)]
    procedure AddGLAccountRespToLibrary()
    begin
        WorkflowResponseHandling.AddResponseToLibrary(SetStatusToPendingApprovalCodeGLAccount(), 0, SendForPendAppTxt, 'GROUP 0');
        WorkflowResponseHandling.AddResponseToLibrary(ReleaseGLAccountCode(), 0, ReleaseGLAccountTxt, 'GROUP 0');
        WorkflowResponseHandling.AddResponseToLibrary(ReOpenGLAccountCode(), 0, ReOpenGLAccountTxt, 'GROUP 0');
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnExecuteWorkflowResponse', '', false, false)]
    procedure ExeRespForGLAccount(var ResponseExecuted: Boolean; Variant: Variant; xVariant: Variant; ResponseWorkflowStepInstance: Record "Workflow Step Instance")
    var
        WorkflowResponse: Record "Workflow Response";
    begin
        IF WorkflowResponse.GET(ResponseWorkflowStepInstance."Function Name")THEN case WorkflowResponse."Function Name" of SetStatusToPendingApprovalCodeGLAccount(): begin
                SetStatusToPendingApprovalGLAccount(Variant);
                ResponseExecuted:=true;
            end;
            ReleaseGLAccountCode(): begin
                ReleaseGLAccount(Variant);
                ResponseExecuted:=true;
            end;
            ReOpenGLAccountCode(): begin
                ReOpenGLAccount(Variant);
                ResponseExecuted:=true;
            end;
            end;
    end;
}
