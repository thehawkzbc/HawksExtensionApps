pageextension 50263 "GLAccountExt" extends "G/L Account Card"
{
    actions
    {
        addafter("F&unctions")
        {
            group("Request Approval")
            {
                Caption = 'Request Approval';
                Image = SendApprovalRequest;

                action(SendApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Send A&pproval Request';
                    //Enabled = (NOT OpenApprovalEntriesExist) AND EnabledApprovalWorkflowsExist AND CanRequestApprovalForFlow;
                    Image = SendApprovalRequest;
                    ToolTip = 'Request approval to change the record.';

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                        EventsCU: Codeunit GLAccountWorkflowintegration;
                    begin
                        // if ApprovalsMgmt.CheckCustomerApprovalsWorkflowEnabled(Rec) then
                        //     ApprovalsMgmt.OnSendCustomerForApproval(Rec);
                        //SetWorkFlowEnabled();
                        EventsCU.OnSendGLAccountforApproval(Rec);
                    end;
                }
                action(CancelApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Cancel Approval Re&quest';
                    Visible = false;
                    //Enabled = CanCancelApprovalForRecord OR CanCancelApprovalForFlow;
                    Image = CancelApprovalRequest;
                    ToolTip = 'Cancel the approval request.';

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                        WorkflowWebhookManagement: Codeunit "Workflow Webhook Management";
                    begin
                    //ApprovalsMgmt.OnCancelCustomerApprovalRequest(Rec);
                    //WorkflowWebhookManagement.FindAndCancel(RecordId);
                    end;
                }
                group(Flow)
                {
                    Caption = 'Power Automate';

                    action(CreateFlow)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Create a Power Automate approval flow';
                        Image = Flow;
                        ToolTip = 'Create a new flow in Power Automate from a list of relevant flow templates.';

                        //Visible = IsSaaS;
                        trigger OnAction()
                        var
                            FlowServiceManagement: Codeunit "Flow Service Management";
                            FlowTemplateSelector: Page "Flow Template Selector";
                        begin
                            // Opens page 6400 where the user can use filtered templates to create new flows.
                            FlowTemplateSelector.SetSearchText(FlowServiceManagement.GetCustomerTemplateFilter());
                            FlowTemplateSelector.Run();
                        end;
                    }
#if not CLEAN21 action(SeeFlows)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'See my flows';
                        Image = Flow;
                        RunObject = Page "Flow Selector";
                        ToolTip = 'View and configure Power Automate flows that you created.';
                        Visible = false;
                        ObsoleteState = Pending;
                        ObsoleteReason = 'This action has been moved to the tab dedicated to Power Automate';
                        ObsoleteTag = '21.0';
                    }
#endif

                }
            }
        }
    }
}
