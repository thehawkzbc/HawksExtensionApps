pageextension 60051 "PIN Cash Account Balances 1" extends "Cash Account Balances"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60052 "PIN Chart of Accounts (G/L)1" extends "Chart of Accounts (G/L)"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60053 "PINChart of Accounts Overview1" extends "Chart of Accounts Overview"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60054 "PIN G/L Account Balance1" extends "G/L Account Balance"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60055 "PIN G/LAccount Balance/Budget1" extends "G/L Account Balance/Budget"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60056 "PIN G/L Accounts ListPart1" extends "G/L Accounts ListPart"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60057 "PIN G/L Balance1" extends "G/L Balance"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60058 "PIN G/L Balance/Budget1" extends "G/L Balance/Budget"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60059 "PIN Bank Account Card1" extends "Bank Account Card"
{
    layout
    {
        addlast(General)
        {
            field("PIN Responsibility Center1"; Rec."PIN Responsibility Center1")
            {
                ApplicationArea = ALL;
            }
        }



    }

    actions
    {
    }

}

pageextension 60060 "PIN Bank Account Balance1" extends "Bank Account Balance"
{
    layout
    {

    }

    actions
    {
    }

}

pageextension 60061 "PIN Bank Account List1" extends "Bank Account List"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60062 "PIN Bank Account Statistics1" extends "Bank Account Statistics"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60063 "PIN whse shipment1" extends "Warehouse Shipment"
{
    layout
    {
    }

    actions
    {
        addlast(processing)
        {
            action(pinautotracking)
            {
                ApplicationArea = all;
            }
        }

    }
    var
        pinsetuprec: Record "PIN Setup";
        autotrackingenabled: Boolean;
}

pageextension 60064 "PIN Sales Quote Subform1" extends "Sales Quote Subform"
{
    layout
    {
        addlast(content)
        {
            field("PIN Vendor Item No.1"; Rec."PIN Vendor Item No.1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }
    var
        PINetworksBaseCod: Codeunit "PINetworks Base";
        UnitPriceEditable: Boolean;
        LineAmountEditable: Boolean;

}

pageextension 60065 "PIN Posted Sales InvoiceLines" extends "Posted Sales Invoice Subform"
{
    layout
    {
        addlast(content)
        {
            field("PIN Vendor Item No.1"; Rec."PIN Vendor Item No.1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60066 "PIN ApplyBankAccLedgerEntries1" extends "Apply Bank Acc. Ledger Entries"
{
    layout
    {
        addlast(content)
        {
            field(balaaccountname; balaaccountname)
            {
                ApplicationArea = all;

            }
        }
    }

    actions
    {
    }
    var
        balaaccountname: Text[100];

}

pageextension 60067 "PIN Purchase Quote Subform1" extends "Purchase Quote Subform"
{
    layout
    {
        addlast(content)
        {
            field("pin vendor item no.1"; "")
            {
                ApplicationArea = all;
            }
        }

    }

    actions
    {
    }


}

pageextension 60068 "PIN Sales Journal1" extends "Sales Journal"
{
    layout
    {
        addlast(content)
        {
            field("PIN Gen. Customer ID No.1"; Rec."PIN Gen. Customer ID No.1")
            {
                ApplicationArea = all;
            }
            field("PIN Gen. Customer Name1"; Rec."PIN Gen. Customer Name1")
            {
                ApplicationArea = all;
            }
        }
        addlast(factboxes)
        {

            part(workflowstatusbatch1; "Workflow status batch")
            {
                ApplicationArea = Basic, Suite;
            }
            part(workflowstastusline1; "Workflow status line")
            {
                ApplicationArea = Basic, Suite;
            }
        }


    }

    actions
    {
        addbefore("Request Approval")
        {
            group("request approval1")
            {
                group("send approval request")
                {
                    action(sendapprovalrequestjournalbatch1)
                    {
                        ApplicationArea = all;
                    }
                    action(sendapprovalrequestjournalline1)
                    {
                        ApplicationArea = all;
                    }
                }
                group("cancel approval request")
                {
                    action(cancelapprovalrequestjournalbatch1)
                    {
                        ApplicationArea = all;
                    }
                    action(cancekapprovalrequestjournalline1)
                    {
                        ApplicationArea = all;
                    }
                }
            }
            action(approvals1)
            {
                ApplicationArea = all;
            }
        }
    }
    var
        GenJnlManagement: Codeunit GenJnlManagement;
        PayrollManagement: Codeunit "Payroll Management";
        JournalErrorsMgt: Codeunit "Journal Errors Mgt.";
        CurrentJnlBatchName: Code[10];
        OpenApprovalEntriesExistForCurrUser: Boolean;
        OpenApprovalEntriesOnJnlBatchExist: Boolean;
        OpenApprovalEntriesOnJnlLineExist: Boolean;
        OpenApprovalEntriesOnBatchOrCurrJnlLineExist: Boolean;
        OpenApprovalEntriesOnBatchOrAnyJnlLineExist: Boolean;
        ShowWorkflowStatusOnBatch: Boolean;
        ShowWorkflowStatusOnLine: Boolean;
        CanCancelApprovalForJnlBatch: Boolean;
        CanCancelApprovalForJnlLine: Boolean;
        CanRequestFlowApprovalForBatch: Boolean;
        CanRequestFlowApprovalForBatchAndAllLines: Boolean;
        CanRequestFlowApprovalForBatchAndCurrentLine: Boolean;
        CanCancelFlowApprovalForBatch: Boolean;
        CanCancelFlowApprovalForLine: Boolean;
        ShowAllLinesEnabled: Boolean;

}

pageextension 60069 "PIN Posted Sales Invoice1" extends "Posted Sales Invoice"
{
    layout
    {
        addfirst(General)
        {
            field("PIN Gen. Customer ID No.1"; Rec."PIN Gen. Customer ID No.1")
            {
                ApplicationArea = all;
            }
            field("PIN Gen. Customer Name11"; Rec."PIN Gen. Customer Name11")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60070 "PIN General Journal Batches1" extends "General Journal Batches"
{
    layout
    {
        addfirst(content)
        {
            field("PIN Payment Method1"; Rec."PIN Payment Method1")
            {
                ApplicationArea = all;
            }
            field("PIN Set Recip. Ba. Acc. Mdt1"; Rec."PIN Set Recip. Ba. Acc. Mdt1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60071 "PIN PostedSales Shpt. Subform" extends "Posted Sales Shpt. Subform"
{
    layout
    {
        addfirst(content)
        {
            field("PIN Vendor Item No.1"; Rec."PIN Vendor Item No.1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60072 "PINPos. Trans. Shpt. Subform" extends "Posted Transfer Shpt. Subform"
{
    layout
    {
        addfirst(content)
        {
            field("PIN Vendor Item No.1"; Rec."PIN Vendor Item No.1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60073 "PIN Posted Trans.Rcpt. Subf." extends "Posted Transfer Rcpt. Subform"
{
    layout
    {
        addfirst(content)
        {
            field("PIN Vendor Item No.1"; Rec."PIN Vendor Item No.1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60074 "PIN WarehouseMovementSubform1" extends "Warehouse Movement Subform"
{
    layout
    {
        addfirst(content)
        {
            field("PIN Item Bin Quantity1"; Rec."PIN Item Bin Quantity")
            {
                ApplicationArea = all;

            }
        }
    }

    actions
    {
    }

}

pageextension 60075 "PIN MovementWorksheet1" extends "Movement Worksheet"
{
    layout
    {
        addfirst(content)
        {
            field(pinitemtobinquantity; Rec.pinitemtobinquantity)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60076 "PIN User Card1" extends "User Card"
{
    layout
    {
        addlast(content)
        {
            field("pin desgination1"; "pin desgination")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }
    var
        pinbasecodeunit: Codeunit "PINetworks Base";
        "pin desgination": Code[50];

}

pageextension 60077 "PIN User List1" extends Users
{
    layout
    {
        addlast(content)
        {
            field("pin desgination1"; "pin desgination")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }
    var
        pinbasecodeunit: Codeunit "PINetworks Base";
        "pin desgination": Code[50];

}

pageextension 60078 "PIN Item Variants1" extends "Item Variants"
{
    layout
    {
        addlast(content)
        {
            field("PIN Vendor Item Code1"; Rec."PIN Vendor Item Code1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60079 "PIN Vendor Bank Account Card1" extends "Vendor Bank Account Card"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60080 "PIN Company Information1" extends "Company Information"
{
    layout
    {
        addlast(General)
        {
            field("PIN Registration No.1"; Rec."PIN Registration No.1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60081 "PIN General Ledger Entries1" extends "General Ledger Entries"
{
    layout
    {
        addlast(content)
        {
            field("Document Date1"; Rec."Document Date")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60082 "PIN Revaluation Journal1" extends "Revaluation Journal"
{
    layout
    {
        addlast(content)
        {
            field("Transaction Type1"; Rec."Transaction Type")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60083 "PIN Purchase Journal1" extends "Purchase Journal"
{
    layout
    {
        addlast(content)

        {

            part(WorkflowStatusBatch1; "Workflow status batch")
            {
                ApplicationArea = Basic, Suite;
            }
            part(workflowstatusline1; "Workflow status line")
            {
                ApplicationArea = Basic, Suite;
            }


        }
    }
    actions
    {
        addlast(processing)
        {
            group("request approval1")
            {
                group(sendapprovalrequest1)
                {
                    action(sendapprovalrequestjournalbatch1)
                    {
                        ApplicationArea = all;
                        Caption = 'send approval request journalbatch';
                    }
                    action(sendapprovalrequestjournalline1)
                    {
                        Caption = 'send approval request journalline';
                        ApplicationArea = all;
                    }
                }
                group(cancelapprovalrequest1)
                {
                    action(cancelapprovalrequestjournalbatch1)
                    {
                        Caption = 'cancel approval request journalbatch';
                        ApplicationArea = all;

                    }
                    action(cancelapprovalrequestjournalline1)
                    {
                        Caption = 'cancel approval request journalline';
                        ApplicationArea = all;

                    }
                }
            }
        }
        addlast(processing)
        {
            action(approvals1)
            {
                ApplicationArea = all;

            }
        }
    }

    var
        GenJnlManagement: Codeunit GenJnlManagement;
        PayrollManagement: Codeunit "Payroll Management";
        JournalErrorsMgt: Codeunit "Journal Errors Mgt.";
        CurrentJnlBatchName: Code[10];
        OpenApprovalEntriesExistForCurrUser: Boolean;
        OpenApprovalEntriesOnJnlBatchExist: Boolean;
        OpenApprovalEntriesOnJnlLineExist: Boolean;
        OpenApprovalEntriesOnBatchOrCurrJnlLineExist: Boolean;
        OpenApprovalEntriesOnBatchOrAnyJnlLineExist: Boolean;
        ShowWorkflowStatusOnBatch: Boolean;
        ShowWorkflowStatusOnLine: Boolean;
        CanCancelApprovalForJnlBatch: Boolean;
        CanCancelApprovalForJnlLine: Boolean;
        CanRequestFlowApprovalForBatch: Boolean;
        CanRequestFlowApprovalForBatchAndAllLines: Boolean;
        CanRequestFlowApprovalForBatchAndCurrentLine: Boolean;
        CanCancelFlowApprovalForBatch: Boolean;
        CanCancelFlowApprovalForLine: Boolean;
        ShowAllLinesEnabled: Boolean;

}


pageextension 60084 "PIN Accountant Role Center1" extends "Accountant Role Center"
{
    layout
    {
        addlast(rolecenter)
        {
            part(pinrecurringpaymentscues1; "PIN Recurring Payments Cues1")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
    }

}

pageextension 60085 "PIN Acc. Manager Role Center1" extends "Accounting Manager Role Center"
{
    layout
    {
        addlast(rolecenter)
        {
            part(pinrecurringpaymentscues; "PIN Recurring Payments Cues")
            {
                ApplicationArea = Basic, Suite;

            }
        }
    }

    actions
    {
    }

}

pageextension 60086 "PIN Business Mgr. Role Center1" extends "Business Manager Role Center"
{
    layout
    {
        addlast(rolecenter)
        {
            part(pinrecurringpaymentscues1; "PIN Recurring Payments Cues")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
    }

}

pageextension 60087 "PIN Vendor Ledger Entries1" extends "Vendor Ledger Entries"
{
    layout
    {
        addlast(content)
        {
            field("PIN Agreement No.1"; Rec."PIN Agreement No.")
            {
                ApplicationArea = all;
            }
            field("PIN Start Date1"; Rec."PIN Start Date")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60101 SalesOrderSubform501011 extends "Sales Order Subform"
{
    layout
    {
        addlast(content)
        {
            field("PIN Vendor Item No.1"; Rec."PIN Vendor Item No.1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

    var
        PINetworksBaseCod: Codeunit "PINetworks Base";
        UnitPriceEditable: Boolean;
        LineAmountEditable: Boolean;

}

pageextension 60102 PurchaseInvoiceSubformMV1 extends "Purch. Invoice Subform"
{
    layout
    {
        addlast(content)
        {
            field("PIN Vendor Item No.1"; Rec."PIN Vendor Item No.1")
            {
                ApplicationArea = all;

            }


        }
        addlast(content)
        {
            field("Gen. Prod. Posting Group1"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = all;
            }
            field("PIN Priority1"; Rec."PIN Priority1")
            {
                ApplicationArea = all;
            }

        }
    }

    actions
    {
    }

}

pageextension 60103 SalesInvoice501031 extends "Sales Invoice"
{
    layout
    {
        addlast(content)
        {
            field("PIN Gen. Customer ID No.1"; Rec."PIN Gen. Customer ID No.1")
            {
                ApplicationArea = all;
            }
            field("PIN Gen. Customer Name1"; Rec."PIN Gen. Customer Name1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60104 SalesInvoiceSubform501041 extends "Sales Invoice Subform"
{
    layout
    {
        addlast(content)
        {
            field("PIN Vendor Item No.1"; Rec."PIN Vendor Item No.1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

    var
        PINetworksBaseCod: Codeunit "PINetworks Base";
        UnitPriceEditable: Boolean;
        LineAmountEditable: Boolean;

}

pageextension 60105 TransferOrder501051 extends "Transfer Order"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60106 TransferOrderSubform1 extends "Transfer Order Subform"
{
    layout
    {
        addlast(content)
        {
            field("PIN Vendor Item No.1"; Rec."PIN Vendor Item No.1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60107 TransferOrders501071 extends "Transfer Orders"
{
    layout
    {
        addlast(content)
        {
            field("Transfer-from Name"; Rec."Transfer-from Name")
            {
                ApplicationArea = all;

            }
        }
        addlast(content)
        {
            field("Transfer-to Name"; Rec."Transfer-to Name")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60108 PostedTransferShipments501081 extends "Posted Transfer Shipments"
{
    layout
    {
        addlast(content)
        {
            field("Transfer-from Name"; Rec."Transfer-from Name")
            {
                ApplicationArea = all;

            }
        }
        addlast(content)
        {
            field("Transfer-to Name"; Rec."Transfer-to Name")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60109 PostedTransferReceipts501091 extends "Posted Transfer Receipts"
{
    layout
    {
        addlast(content)
        {
            field("Transfer-from Name"; Rec."Transfer-from Name")
            {
                ApplicationArea = all;

            }
        }
        addlast(content)
        {
            field("Transfer-to Name"; Rec."Transfer-to Name")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60110 "PIN Purchase Order1" extends "Purchase Order"
{
    layout
    {
        addlast(content)
        {
            field("PIN Priority1"; Rec."PIN Priority1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60111 RecurGenJournalMV1 extends "Recurring General Journal"
{
    layout
    {
        addlast(content)
        {
            field("External Document No.1"; Rec."External Document No.")
            {
                ApplicationArea = all;
            }
        }
        addlast(content)
        {
            part(workflowstatusbatch1; "Workflow status batch")
            {
                ApplicationArea = Basic, Suite;
            }
            part(incomingdocattachfactbox1; "Incoming Doc. Attach. FactBox")
            {
                ApplicationArea = Basic, Suite;
            }
            part(workflowstatusline1; "Workflow status line")
            {
                ApplicationArea = Basic, Suite;
            }

        }
        addlast(content)
        {
            field("PIN Agreement No.1"; Rec."PIN Agreement No.1")
            {
                ApplicationArea = all;
            }
            field("PIN Start Date1"; Rec."PIN Start Date1")
            {
                ApplicationArea = all;
            }
        }
    }


    actions
    {
        addlast(processing)
        {
            group("request approval1")
            {
                group(sendapprovalrequest1)
                {
                    action(sendapprovalrequestjournalbatch1)
                    {
                        Caption = 'send approval request journalbatch';
                        ApplicationArea = all;
                    }
                    action(sendapprovalrequestjournalline1)
                    {
                        Caption = 'send approval request journalline';
                        ApplicationArea = all;
                    }

                }

            }

        }
        addlast(processing)
        {
            action(approvals1)
            {
                ApplicationArea = all;
            }
        }
    }

    var
        GenJnlManagement: Codeunit GenJnlManagement;
        PayrollManagement: Codeunit "Payroll Management";
        JournalErrorsMgt: Codeunit "Journal Errors Mgt.";
        CurrentJnlBatchName: Code[10];
        OpenApprovalEntriesExistForCurrUser: Boolean;
        OpenApprovalEntriesOnJnlBatchExist: Boolean;
        OpenApprovalEntriesOnJnlLineExist: Boolean;
        OpenApprovalEntriesOnBatchOrCurrJnlLineExist: Boolean;
        OpenApprovalEntriesOnBatchOrAnyJnlLineExist: Boolean;
        ShowWorkflowStatusOnBatch: Boolean;
        ShowWorkflowStatusOnLine: Boolean;
        CanCancelApprovalForJnlBatch: Boolean;
        CanCancelApprovalForJnlLine: Boolean;
        CanRequestFlowApprovalForBatch: Boolean;
        CanRequestFlowApprovalForBatchAndAllLines: Boolean;
        CanRequestFlowApprovalForBatchAndCurrentLine: Boolean;
        CanCancelFlowApprovalForBatch: Boolean;
        CanCancelFlowApprovalForLine: Boolean;
        ShowAllLinesEnabled: Boolean;

}

pageextension 60112 "PIN Purchase Quotes1" extends "Purchase Quotes"
{
    layout
    {
        addlast(content)
        {
            field("PIN Priority1"; Rec."PIN Priority")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60113 "PIN MV Check Preview1" extends "Check Preview"
{
    layout
    {
        addlast(content)
        {
            group("custom name1")
            {
                field(custompayeename1; CustomPayeeName)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
    }

    var
        Vend: Record Vendor;
        VendorBankAccount: Record "Vendor Bank Account";
        Customer: Record Customer;
        CustomerBankAccount: Record "Customer Bank Account";
        CustomPayeeName: Text[100];
}

pageextension 60114 "SalesQuote50114.PageExt.al1" extends "Sales Quote"
{
    layout
    {
        addlast(content)
        {
            field("PIN Gen. Customer ID No.1"; Rec."PIN Gen. Customer ID No.")
            {
                ApplicationArea = all;
            }
            field("PIN Gen. Customer Name1"; Rec."PIN Gen. Customer Name1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60115 "PIN Jrnl Line Details FactBox1" extends "Journal Line Details FactBox"
{
    layout
    {
        addlast(Content)
        {
            field("PIN SystemCreatedBy1"; Rec."PIN SystemCreatedBy1")
            {
                ApplicationArea = all;
            }
            field("pin system modifiedby1"; Rec."pin system modifiedby1")
            {
                ApplicationArea = all;
            }
        }

    }

    actions
    {
    }

    var
        PinCodeBase: Codeunit "PINetworks Base";

}

pageextension 60120 PurchaseOrderSubform1 extends "Purchase Order Subform"
{
    layout
    {
        addlast(content)
        {
            field("PIN Vendor Item No.1"; Rec."PIN Vendor Item No.1")
            {
                ApplicationArea = all;
            }

        }
        addlast(content)
        {
            field("PIN Priority1"; Rec."PIN Priority")
            {
                ApplicationArea = all;

            }
        }
        addlast(content)
        {
            field("VAT Bus. Posting Group1"; Rec."VAT Bus. Posting Group")
            {
                ApplicationArea = all;

            }
            field("VAT Prod. Posting Group1"; Rec."VAT Prod. Posting Group")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }


}

pageextension 60121 CashReceiptJournal1 extends "Cash Receipt Journal"
{
    layout
    {
        addlast(content)
        {
            field("Payment Reference1"; Rec."Payment Reference")
            {
                ApplicationArea = all;
            }
        }
        addlast(content)
        {
            field("PIN Gen. Customer Name1"; Rec."PIN Gen. Customer Name")
            {
                ApplicationArea = all;
            }
            field("PIN Gen. Customer ID No.1"; Rec."PIN Gen. Customer ID No.")
            {
                ApplicationArea = all;

            }
            field("Payment Method Code1"; Rec."Payment Method Code")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60122 PostedPurchaseInvoices1 extends "Posted Purchase Invoices"
{
    layout
    {
        addlast(content)
        {
            field(SystemModifiedAt; Rec.SystemModifiedAt)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60123 PostedWHShipmentList1 extends "Posted Whse. Shipment List"
{
    layout
    {
        addlast(content)
        {
            field("Posting Date1"; Rec."Posting Date")
            {
                ApplicationArea = all;
            }
            field(SystemModifiedAt1; Rec.SystemModifiedAt)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60124 SalesOrderList1 extends "Sales Order List"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60125 UserSetup1 extends "User Setup"
{
    layout
    {
        addlast(content)
        {
            field("PIN GL Resp. Ctr. Filter1"; Rec."PIN GL Resp. Ctr. Filter")

            {
                ApplicationArea = all;
            }
            field(Location1; Rec.Location)
            {
                ApplicationArea = all;
            }
            field("PIN Can Ship1"; Rec."PIN Can Ship")
            {
                ApplicationArea = all;
            }
            field("PIN Can Invoice1"; Rec."PIN Can Invoice")
            {
                ApplicationArea = all;
            }
            field("PIN Can Edit Sales Price1"; Rec."PIN Can Edit Sales Price")
            {
                ApplicationArea = all;
            }
        }
        addlast(content)
        {
            field("PIN Designation1"; Rec."PIN Designation")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }
    var
        SalesPriceChangeRestricted: Boolean;

}

pageextension 60126 "Payment Jour Approval Status1" extends "Payment Journal"
{
    layout
    {
        addlast(content)
        {
            field("Approval Status1"; Rec."Approval Status")
            {
                ApplicationArea = all;
            }
        }
        addlast(content)
        {
            field("pin system modifiedby1"; Rec."pin system modifiedby1")
            {
                ApplicationArea = all;
            }
            field("PIN SystemCreatedBy1"; Rec."PIN SystemCreatedBy1")
            {
                ApplicationArea = all;
            }

        }
    }

    actions
    {
    }

    var
        TempVendorBankAccount: Record "Vendor Bank Account" temporary;
        PinCodeBase: Codeunit "PINetworks Base";
        IsRecipientBankAccountRestrictionsOn: Boolean;
        RecipientBankAccountDetailRestrictionLbl: Label 'RecipientBankAccountDetailRestrictionLbl';

}

pageextension 60127 "PIN Sales Order1" extends "Sales Order"
{
    layout
    {
        addlast(content)
        {
            field("mvuirep payment reference1"; Rec."mvuirep payment reference")
            {
                ApplicationArea = all;
            }
        }
        addlast(content)
        {
            field("MVUIREP PIN Cust. Amount Overdue1"; Rec."MVUIREP PIN Cust. Amount Overdue")
            {
                ApplicationArea = all;
            }

        }
        addlast(content)
        {
            field("PIN Gen. Customer ID No.1"; Rec."PIN Gen. Customer ID No.1")
            {
                ApplicationArea = all;
            }
            field("PIN Gen. Customer Name1"; Rec."PIN Gen. Customer Name1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        addlast(processing)
        {
            action("mvuirep auto tracking")
            {
                ApplicationArea = all;
            }
        }
    }

    var
        PINSetupRec: Record "PIN Setup";
        AutoTrackingEnabled: Boolean;
}

pageextension 60128 "PIN  Post codes1" extends "Post Codes"
{
    layout
    {
        addlast(content)
        {
            field("Atoll Code1"; Rec."Atoll Code1")
            {
                ApplicationArea = all;
            }
        }

    }

    actions
    {
    }

}

pageextension 60129 "PIN Bank Acc. Ledger Entries1" extends "Bank Account Ledger Entries"
{
    Editable = true;

    layout
    {
        addlast(content)
        {
            field("External Document No.1"; Rec."External Document No.")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60130 "PIN Purchase Invoices1" extends "Purchase Invoices"
{
    layout
    {
        addlast(content)
        {
            field("PIN Priority1"; Rec."PIN Priority1")
            {
                ApplicationArea = all;
            }
        }

    }

    actions
    {
        addlast(processing)
        {
            action(bulkdelete1)
            {
                ApplicationArea = all;
            }
        }
    }

    var
        DeleteConfirmQst: Label ' DeleteConfirmQst';

}

pageextension 60131 "PIN Sales Invoices1" extends "Sales Invoice List"
{
    layout
    {
    }

    actions
    {
        addlast(processing)
        {
            action(bulkdelete1)
            {
                ApplicationArea = all;
            }
        }

    }

    var
        DeleteConfirmQst: Label ' DeleteConfirmQst';
}

pageextension 60132 "PIN Sales Credit Memos1" extends "Sales Credit Memos"
{
    layout
    {
    }

    actions
    {
        addlast(processing)
        {
            action(bulkdelete1)
            {
                ApplicationArea = all;
            }
        }

    }

    var
        DeleteConfirmQst: Label ' DeleteConfirmQst';
}


pageextension 60133 CustomerLedgerEntries1 extends "Customer Ledger Entries"
{
    layout
    {
        addlast(content)
        {
            field("Payment Reference1"; Rec."Payment Reference")
            {
                ApplicationArea = all;
            }
        }

        addlast(content)
        {
            field("PIN Gen. Customer ID No.1"; Rec."PIN Gen. Customer ID No.1")
            {
                ApplicationArea = all;
            }
            field("PIN Gen. Customer Name1"; Rec."PIN Gen. Customer Name1")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60134 PINImportPurchasePriceList1 extends "Purchase Price List Lines"
{
    layout
    {
    }

    actions
    {
        addlast(Processing)
        {
            action(importfromexcel1)
            {
                ApplicationArea = all;
            }
        }
    }

    var
        TempExcelBuffer: Record "Excel Buffer" temporary;
        FileName: Text;
        SheetName: Text;
        UploadExcelMsg: Label 'UploadExcelMsg';
        NoFileFoundMsg: Label 'NoFileFoundMsg';
        ExcelImportSucessMsg: Label 'ExcelImportSucessMsg';
}

pageextension 60135 "PIN Import Sales Price List1" extends "Price List Lines"
{
    layout
    {
    }

    actions
    {
        addlast(Processing)
        {
            action(importfromexcel1)
            {
                ApplicationArea = all;
            }
        }
    }

    var
        TempExcelBuffer: Record "Excel Buffer" temporary;
        FileName: Text;
        SheetName: Text;
        UploadExcelMsg: Label 'UploadExcelMsg';
        NoFileFoundMsg: Label 'NoFileFoundMsg';
        ExcelImportSucessMsg: Label 'ExcelImportSucessMsg';
}



pageextension 60136 "PIN Bin Contents1" extends "Bin Contents"
{
    layout
    {
        addlast(content)
        {
            field(Description1; Rec.Description1)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
    }

}

pageextension 60137 "PIN Purchase Order List1" extends "Purchase Order List"
{
    layout
    {
        addlast(content)
        {
            field("pin system modifiedby1"; Rec."pin system modifiedby1")
            {
                ApplicationArea = all;
            }
            field("PIN SystemCreatedBy1"; Rec."PIN SystemCreatedBy1")
            {
                ApplicationArea = all;
            }

        }
    }

    actions
    {
    }

    var
        PinCodeBase: Codeunit "PINetworks Base";

}

pageextension 60138 "PIN Bank Acc. Reconciliation1" extends "Bank Acc. Reconciliation"
{
    layout
    {
    }

    actions
    {
        addlast(processing)
        {
            action(pinmatchautomatically1)
            {
                ApplicationArea = all;

            }
        }
    }

    var
        CustomMatch: Boolean;

}

pageextension 60139 "PIN G/L Account Card1" extends "G/L Account Card"
{
    layout
    {
        addlast(content)
        {
            field("PIN Responsibility Center1"; Rec."PIN Responsibility Center1")
            {
                ApplicationArea = all;
            }
        }
    }


    actions
    {
    }

}

pageextension 60140 "PIN Chart of Accounts1" extends "Chart of Accounts"
{
    layout
    {
    }

    actions
    {
    }

}

pageextension 60141 "PIN G/L Account List1" extends "G/L Account List"
{
    layout
    {
    }

    actions
    {
    }

}


