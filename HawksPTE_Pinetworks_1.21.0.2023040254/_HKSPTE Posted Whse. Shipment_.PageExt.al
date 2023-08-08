pageextension 50155 "HKSPTE Posted Whse. Shipment" extends "Posted Whse. Shipment" // 7337
{
    layout
    {
        modify("Shipment Date")
        {
            ApplicationArea = All;
            Visible = true;
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
                field("Water Contamination Cheacked"; Rec."Check Water Contamination")
                {
                    Caption = 'Water Contamination Checked';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Water Contamination Checked field.';
                }
                field("Sample Visibility Test"; Rec."Take Sample for Visiblity Test")
                {
                    Caption = 'Sample Visibility Test';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Sample Visibility Test field.';
                }
                field("Barge Meter Cheacked"; Rec."Check Barge Meter")
                {
                    Caption = 'Check Water Contamination';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Check Water Contamination field.';
                }
                field("Client Meter Checked"; Rec."Check Client Meter")
                {
                    Caption = 'Client Meter Checked';
                    ApplicationArea = Warehouse;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Client Meter Checked field.';
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
                field("Received By_ID"; Rec."Received By ID")
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
        addfirst(factboxes)
        {
            part(SharePointPart_EFQ; "SharePoint Factbox EFQ")
            {
                ApplicationArea = All;
                Visible = SharePointActivated;
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    var
        Ref: RecordRef;
        Parms: Dictionary of[Text, Text];
        PageTaskId: Integer;
    begin
        Ref.GetTable(Rec);
        CLEAR(Parms);
        Parms.Add('folder', CurrPage.SharePointPart_EFQ.Page.PrepareFill(Ref));
        CurrPage.EnqueueBackgroundTask(PageTaskId, Codeunit::"Factbox Background Task EFQ", Parms, 30000, PageBackgroundTaskErrorLevel::Warning);
    end;
    trigger OnPageBackgroundTaskCompleted(TaskId: Integer; Results: Dictionary of[Text, Text])
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
        SharePointActivated:=TableMapping.NeedsFactBox(Ref.Number());
    end;
    /*
        local procedure GetWarehouseShipment(PostedWS: record "Posted Whse. Shipment Header"): record "Warehouse Shipment Header"
        var

            WhseShipment: record "Warehouse Shipment Header" temporary;
        begin
            WhseShipment."No." := PostedWS."Whse. Shipment No.";
            WhseShipment."Location Code" := PostedWS."Location Code";
            WhseShipment.Insert();
            exit(WhseShipment)



        end;
    */
    var SharePointActivated: Boolean;
}
