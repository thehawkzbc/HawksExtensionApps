pageextension 50151 "HKSPTE Warehouse Shipment" extends "Warehouse Shipment" // 7335
{
    PromotedActionCategories = 'Test,New,Process,Report,Print/Send,Release,Posting,Shipment,Navigate';

    layout
    {
        modify("Posting Date")
        {
            Importance = Additional;
        }
        modify("Shipment Date")
        {
            ApplicationArea = All;
        }
        moveafter("Posting Date"; "Shipment Date")
        addafter("No.")
        {
            field("Customer No."; rec."Customer No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Customer No. field.';
            }
            field("Customer Name"; getCustomerName(rec."Customer No."))
            {
                ApplicationArea = All;
                Caption = 'Customer Name';
                ToolTip = 'Specifies the value of the Customer No.) field.';
            }
        }
        addafter(Shipping)
        {
            group("Meter Details")
            {
                field("Meter Start"; Rec."Meter Start")
                {
                    Caption = 'Meter Start';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Meter Start field.';
                }
                field("Meter End"; Rec."Meter End")
                {
                    Caption = 'Meter End';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Meter End field.';
                }
            }
            group("Check List")
            {
                field("Water Contamination Checked"; Rec."Check Water Contamination")
                {
                    Caption = 'Water Contamination Checked';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Check Water Contamination field.';
                }
                field("Sample Visibility Test"; Rec."Take Sample for Visiblity Test")
                {
                    Caption = 'Sample Visibility Test';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Take Sample for Visiblity Test field.';
                }
                field("Barge Meter Checked"; Rec."Check Barge Meter")
                {
                    Caption = 'Check Water Contamination';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Check Barge Meter field.';
                }
                field("Client Meter Checked"; Rec."Check Client Meter")
                {
                    Caption = 'Client Meter Checked';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Check Client Meter field.';
                }
                field("ROB Client Tank"; Rec."ROB Client Tank")
                {
                    Caption = 'ROB Client Tank';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the ROB Client Tank field.';
                }
            }
            group("Delivery Details")
            {
                field("Received By"; Rec."Received By")
                {
                    Caption = 'Received By';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Received By field.';
                }
                field("Signature"; Rec."Signature Image")
                {
                    Caption = 'Signature';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Signature field.';
                }
            }
        }
    }
    actions
    {
        addafter("P&ost Shipment")
        {
            action("Deliver")
            {
                ApplicationArea = All;
                Caption = '&Deliver';
                Ellipsis = true;
                Image = Delivery;
                Promoted = true;
                PromotedCategory = Category6;
                ToolTip = 'Deliver the items.';

                trigger OnAction()
                var
                    wizardPage: Page "HKSPTE Delivery Wizard";
                begin
                    //wizardPage.SetRecord(thisRecord);
                    wizardPage.SetShipmentNo(Rec."No.");
                    wizardPage.RunModal();
                //PostShipmentYesNo;
                end;
            }
        }
    }
    local procedure getCustomerName(customerNo: Code[20]): Text[100]var
        cust: Record "Customer";
    begin
        if cust.get(customerNo)then exit(cust.Name)
        else
            exit('');
    end;
/*   trigger OnAfterGetCurrRecord()
       var
           Ref: RecordRef;
           Parms: Dictionary of [Text, Text];
           PageTaskId: Integer;
       begin
           Ref.GetTable(Rec);
           CLEAR(Parms);
           Parms.Add('folder', CurrPage.SharePointPart_EFQ.Page.PrepareFill(Ref));
           CurrPage.EnqueueBackgroundTask(PageTaskId, Codeunit::"Factbox Background Task EFQ", Parms, 30000, PageBackgroundTaskErrorLevel::Warning);
       end;

       trigger OnPageBackgroundTaskCompleted(TaskId: Integer; Results: Dictionary of [Text, Text])
       begin
           CurrPage.SharePointPart_EFQ.Page.FinishFill(Results);
       end;

       trigger OnPageBackgroundTaskError(TaskId: Integer; ErrorCode: Text; ErrorText: Text; ErrorCallStack: Text; var IsHandled: Boolean)
       begin
           CurrPage.SharePointPart_EFQ.Page.FillError(ErrorText);
       end;

       trigger OnOpenPage()
       var
           TableMapping: Record "Table Mapping EFQ";
           Ref: RecordRef;
       begin
           Ref.GetTable(Rec);
           SharePointActivated := TableMapping.NeedsFactBox(Ref.Number());
       end;

       var
           SharePointActivated: Boolean;
   */
}
