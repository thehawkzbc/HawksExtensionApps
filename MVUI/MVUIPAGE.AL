page 60051 "PIN Procurement Role Center1"
{
    Caption = 'Procurement Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part("Approvals Activities"; "Approvals Activities")
            {
                ApplicationArea = Basic, Suite;
            }

            part("PIN Proc. Purch. Hdr. Cues1"; "PIN Proc. Purch. Hdr. Cues1")
            {
                ApplicationArea = Basic, Suite;
            }

            part("PIN Proc Transfer Order Cues1"; "PIN Proc Transfer Order Cues1")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("Purchase &Order")
            {
                ApplicationArea = Suite;
                Caption = 'Purchase &Order';
                Image = Document;
                RunObject = page "Purchase Order";
                RunPageMode = Create;
                ToolTip = 'Create a new purchase order.';
            }

            action("Purchase &Return Order")
            {
                ApplicationArea = PurchReturnOrder;
                Caption = 'Purchase &Return Order';
                Image = ReturnOrder;
                RunObject = page "Purchase Return Order";
                RunPageMode = Create;
                ToolTip = 'Create a new purchase return order to return received items.';
            }
        }
    }

}

page 60052 "PIN Proc. Purch. Hdr. Cues1"
{
    Caption = 'Purchase Order Cues';
    PageType = CardPart;
    RefreshOnActivate = true;
    ShowFilter = false;
    SourceTable = "PIN Procurement Role Center1";

    layout
    {
        area(content)
        {
            cuegroup("Purchase Orders")
            {
                field("PIN Open Purchase Orders"; Rec."PIN PO Open Purchase Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Open Purchase Orders';
                    Caption = 'Open';

                }

                field("PIN Pending IT approvals"; Rec."PIN PO Pending IT Approvals")
                {
                    ApplicationArea = All;
                    ToolTip = 'Pending IT approvals';
                    Caption = 'Pending IT approvals';

                }

                field("PIN Pending Budget approval"; Rec."PIN PO Pending Budg. Approvals")
                {
                    ApplicationArea = All;
                    ToolTip = 'Pending Budget approvals';
                    Caption = 'Pending Budget approvals';

                }
            }

            cuegroup("PO Released")
            {
                field("PIN Pending With Procurement"; Rec."PIN PO Pending With Proc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Pending With Procurement';
                    Caption = 'Pending With Procurement';

                }

                field("PIN Pending Arrival"; Rec."PIN PO Pending Arrival")
                {
                    ApplicationArea = All;
                    ToolTip = 'Pending Arrival';
                    Caption = 'Pending Arrival';

                }

                field("PIN Arrival Overdue"; Rec."PIN PO Arrival Overdue")
                {
                    ApplicationArea = All;
                    ToolTip = 'Arrival Overdue';
                    Caption = 'Arrival Overdue';

                }

                field("PIN Completely Received"; Rec."PIN PO Completely Received")
                {
                    ApplicationArea = All;
                    ToolTip = 'Completely Received';
                    Caption = 'Completely Received';

                }
            }
        }
    }

    actions
    {
    }

}

page 60053 "PIN Recurring Payments Cues1"
{
    Caption = 'Recurring Payments';
    PageType = CardPart;
    SourceTable = "Gen. Journal Line";

    layout
    {
        area(content)
        {
            cuegroup(RecurringPayments)
            {
                Caption = 'Recurring Payments';
                field("No. Of Rec. Agreements"; Rec."PIN No. Of Rec. Agreements")
                {
                    Caption = 'No. Of Rec. Agreements';
                    ToolTip = 'No. Of Rec. Agreements';
                    ApplicationArea = All;

                }

                field("Expired Rec. Agreements"; Rec."PIN Expired Rec. Agreements")
                {
                    Caption = 'Expired Rec. Agreements';
                    ToolTip = 'Expired Rec. Agreements';
                    ApplicationArea = All;

                }

                field("Expiring in 3 Months"; Rec."PIN Expiring in 3 Months")
                {
                    Caption = 'Expiring in 3 Months';
                    ToolTip = 'Expiring in 3 Months';
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
    }

}

page 60054 "PIN Proc Transfer Order Cues1"
{
    Caption = 'Transfer Order Cues';
    PageType = CardPart;
    RefreshOnActivate = true;
    ShowFilter = false;
    SourceTable = "PIN Procurement Role Center";

    layout
    {
        area(content)
        {
            cuegroup(Open)
            {
                field("PIN Open Transfer Orders"; Rec."PIN TO Open Transfer Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Open Transfer Orders';
                    Caption = 'Open';

                }
            }

            cuegroup(Released)
            {
                field("PIN Inbound Orders"; Rec."PIN TO Inbound Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Inbound Transfer Orders';
                    Caption = 'Inbound';

                }

                field("PIN Outbound Orders"; Rec."PIN TO Outbound Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Outbound Transfer Orders';
                    Caption = 'Outbound';

                }
            }
        }
    }

    actions
    {
    }

}

page 60102 "PIN Select Layout1"
{
    Caption = 'PIN Select Layout';
    PageType = List;
    SourceTable = "Custom Report Layout";
    UsageCategory = None;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Description; Rec."Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Description';

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(EditLayout)
            {
                Caption = 'Edit Layouts';
                ApplicationArea = All;
                Image = DocumentEdit;
                ToolTip = 'Edit Report Layouts';
                RunObject = page "Custom Report Layouts";
                RunPageLink = "Report ID" = field("Report ID");
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
            }
        }
    }

}

page 60103 "PIN Permission List1"
{
    ApplicationArea = All;
    Caption = 'User Effective Permission List';
    PageType = List;
    SourceTable = "PIN EffectivePermissionList";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("User Security ID"; Rec."User Security ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User Security ID field.';

                }

                field("User Name"; Rec."User Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User Name field.';

                }

                field("Company Name"; Rec."Company Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Company Name field.';

                }

                field("App Name"; Rec."App Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the App Name field.';

                }

                field("Role ID"; Rec."Role ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Role ID field.';

                }

                field("Role Name"; Rec."Role Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Role Name field.';

                }

                field("Object Type"; Rec."Object Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Object Type field.';

                }

                field("Object ID"; Rec."Object ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Object ID field.';

                }

                field("Object Name"; Rec."Object Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Object Name field.';

                }

                field("Read Permission"; Rec."Read Permission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Read Permission field.';

                }

                field("Modify Permission"; Rec."Modify Permission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Modify Permission field.';

                }

                field("Insert Permission"; Rec."Insert Permission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Insert Permission field.';

                }

                field("Execute Permission"; Rec."Execute Permission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Execute Permission field.';

                }

                field("Delete Permission"; Rec."Delete Permission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Delete Permission field.';

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(RefreshData)
            {
                ApplicationArea = All;
                Image = RefreshLines;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                ToolTip = 'Executes the RefreshData action.';
            }
        }
    }

}

page 60104 "PIN Effective Permission List1"
{
    APIGroup = 'pin';
    APIPublisher = 'pinetworks';
    APIVersion = 'v1.0';
    Caption = 'Effective Permission List';
    InsertAllowed = false;
    DelayedInsert = true;
    Editable = false;
    DataAccessIntent = ReadOnly;
    EntityName = 'effectivePermission';
    EntitySetName = 'effectivePermissions';
    PageType = API;
    SourceTable = "PIN EffectivePermissionList";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(lineNo; Rec."LineNo")
                {
                    Caption = 'Line No.';

                }

                field(userSecurityID; Rec."User Security ID")
                {
                    Caption = 'User Security ID';

                }

                field(roleID; Rec."Role ID")
                {
                    Caption = 'Role ID';

                }

                field(companyName; Rec."Company Name")
                {
                    Caption = 'Company Name';

                }

                field(userName; Rec."User Name")
                {
                    Caption = 'User Name';

                }

                field(roleName; Rec."Role Name")
                {
                    Caption = 'Role Name';

                }

                field(appName; Rec."App Name")
                {
                    Caption = 'App Name';

                }

                field(objectType; Rec."Object Type")
                {
                    Caption = 'Object Type';

                }

                field(objectID; Rec."Object ID")
                {
                    Caption = 'Object ID';

                }

                field(objectName; Rec."Object Name")
                {
                    Caption = 'Object Name';

                }

                field(readPermission; Rec."Read Permission")
                {
                    Caption = 'Read Permission';

                }

                field(insertPermission; Rec."Insert Permission")
                {
                    Caption = 'Insert Permission';

                }

                field(modifyPermission; Rec."Modify Permission")
                {
                    Caption = 'Modify Permission';

                }

                field(deletePermission; Rec."Delete Permission")
                {
                    Caption = 'Delete Permission';

                }

                field(executePermission; Rec."Execute Permission")
                {
                    Caption = 'Execute Permission';

                }

                field(systemCreatedAt; Rec."SystemCreatedAt")
                {
                    Caption = 'SystemCreatedAt';

                }

                field(systemCreatedBy; Rec."SystemCreatedBy")
                {
                    Caption = 'SystemCreatedBy';

                }

                field(systemModifiedAt; Rec."SystemModifiedAt")
                {
                    Caption = 'SystemModifiedAt';

                }

                field(systemModifiedBy; Rec."SystemModifiedBy")
                {
                    Caption = 'SystemModifiedBy';

                }

                field(systemId; Rec."SystemId")
                {
                    Caption = 'SystemId';

                }
            }
        }
    }

    actions
    {
    }

}

page 60105 "PIN Contact Balance List1"
{
    ApplicationArea = All;
    Caption = 'Contact Balance - Summary';
    AdditionalSearchTerms = 'Contact Balance List,PIN';
    PageType = List;
    SourceTable = "PIN Contact Balances";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Contact No."; Rec."Contact No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;

                }

                field("Contact Name"; Rec."Contact Name")
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = All;

                }

                field(Customer; Rec."Customer")
                {
                    ToolTip = 'Specifies the value of the Customer field';
                    ApplicationArea = All;

                }

                field(CustomerCurrency; Rec."CustomerCurrency")
                {
                    ToolTip = 'Specifies the value of the CustomerCurrency field';
                    ApplicationArea = All;
                    Caption = 'Cust Currency';
                    Visible = false;

                }

                field(CustomerBalance; Rec."CustomerBalance")
                {
                    ToolTip = 'Specifies the value of the CustomerBalance field';
                    ApplicationArea = All;

                }

                field(Vendor; Rec."Vendor")
                {
                    ToolTip = 'Specifies the value of the Vendor field';
                    ApplicationArea = All;

                }

                field(VendorCurrency; Rec."VendorCurrency")
                {
                    ToolTip = 'Specifies the value of the VendorCurrency field';
                    ApplicationArea = All;
                    Caption = 'Vend Currency';
                    Visible = false;

                }

                field(VendorBalance; Rec."VendorBalance")
                {
                    ToolTip = 'Specifies the value of the Vend Balance field';
                    ApplicationArea = All;

                }

                field(NetBalance; Rec."NetBalance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Net Balance for the contact';

                }
            }
        }
    }

    actions
    {
    }

}

page 60106 "PIN INV Transfer Activities1"
{
    Caption = 'Transfer Orders';
    PageType = CardPart;
    RefreshOnActivate = true;
    ShowFilter = false;
    SourceTable = "PIN Inventory Activities Cue";

    layout
    {
        area(content)
        {
            cuegroup(grpTransferOrdersInbound)
            {
                Caption = 'Transfer Orders Inbound';
                field(TransferOrdersInboundOpen; Rec."TransferOrders - Inbound Open")
                {
                    Caption = 'Open';
                    DrillDownPageId = "Transfer Orders";
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Open field.';

                }

                field(TransferOrdersInbound; Rec."TransferOrders - Inbound")
                {
                    Caption = 'Released';
                    DrillDownPageId = "Transfer Orders";
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Released field.';

                }
            }

            cuegroup(grpTransferLinesInbound)
            {
                Caption = 'Transfer Lines Inbound';
                field(TransferLinesArrival; Rec."TxfrLines - Arrivals")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Transfer Lines";
                    ToolTip = 'Specifies the value of the Arrival field.';

                }

                field(TransferLinesArrivalOverdue; Rec."TxfrLines - Arrivals(overdue)")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Transfer Lines";
                    ToolTip = 'Specifies the value of the Arrival (Overdue) field.';

                }
            }

            cuegroup(grpTransferOrdersOutbound)
            {
                Caption = 'Transfer Orders Outbound';
                Visible = false;
                field(TransferOrdersOutboundOpen; Rec."TransferOrders - Outbound Open")
                {
                    Caption = 'Open';
                    DrillDownPageId = "Transfer Orders";
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Open field.';

                }

                field(TransferOrdersOutbound; Rec."TransferOrders - Outbound")
                {
                    Caption = 'Released';
                    DrillDownPageId = "Transfer Orders";
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Released field.';

                }
            }
        }
    }

    actions
    {
    }

}

page 60110 "PIN Setup1"
{
    Caption = 'Pinetworks Setup';
    PageType = Card;
    SourceTable = "PIN Setup";
    ApplicationArea = All;
    UsageCategory = Administration;
    InsertAllowed = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Journal Admin Team"; Rec."Journal Admin Team")
                {
                    ApplicationArea = All;
                    ToolTip = 'Admins for Journal Management';

                }

                field("Restrict Sales Price Change"; Rec."Restrict Sales Price Change")
                {
                    ApplicationArea = All;
                    Tooltip = 'Restrict users to edit Unit Price on Sales Documents (Quote, Order & Invoice)';

                }

                field("Restrict Unappl Paym Posting"; Rec."Restrict Unappl Paym Posting")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies whether users can post payments from Payment journal page without applying to any invoice';

                }

                field("Restrict Unappl CSHRCP Posting"; Rec."Restrict Unappl CSHRCP Posting")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies whether users can post payments from Cash Receipt journal page without applying to any invoice';

                }

                field("PIN WF User Group Default Role"; Rec."PIN WF User Group Default Role")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies default Approver role';

                }

                field("Keep Original Document No."; Rec."Keep Original Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Use External Document No. for PV No, and keep original document no. ';

                }

                field("Overr. VAT PPG Pre-paym. Err."; Rec."Overr. VAT PPG Pre-paym. Err.")
                {
                    ToolTip = 'Disables Pre-payment error on VAT Prod Posting Group Validation';
                    ApplicationArea = All;

                }
            }

            group(BankRecon)
            {
                Caption = 'Bank Reconciliation';
                field("ExtDoc No. Mandatory-AutoMatch"; Rec."ExtDoc No. Mandatory-AutoMatch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Match only if External Document Match';

                }

                field("Bank Rec Enhanced Automatching"; Rec."Bank Rec Enhanced Automatching")
                {
                    ApplicationArea = All;
                    ToolTip = 'Match lines with matching document number and correctly match duplicate statement amount lines';

                }
            }

            group(AutoTracking)
            {
                Caption = 'Auto Tracking';
                field(AutoTrackingEnabled; Rec."AutoTrackingEnabled")
                {
                    ApplicationArea = All;
                    Caption = 'Enabled';
                    ToolTip = 'Enables auto tracking functionality for items';

                }
            }

            group(VendorBankAccounts)
            {
                Caption = 'Vendor Bank Accounts';
                field("Set Rec. Name & Acc. Mandatory"; Rec."Set Rec. Name & Acc. Mandatory")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether you want to set fields: Name and Bank Account No. mandatory while creating Vendor Bank Accounts';

                }
            }
        }
    }

    actions
    {
    }

}
//vikas
page 60111 "Workflow status batch"
{
    PageType = ListPart;
    ApplicationArea = All;
    Caption = 'workflow status batch';
    UsageCategory = Administration;
    SourceTable = "Workflow status batch";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}

page 60112 "Workflow status line"
{
    PageType = ListPart;
    ApplicationArea = All;
    Caption = 'workflow status line';
    UsageCategory = Administration;
    SourceTable = "Workflow status batch";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}
