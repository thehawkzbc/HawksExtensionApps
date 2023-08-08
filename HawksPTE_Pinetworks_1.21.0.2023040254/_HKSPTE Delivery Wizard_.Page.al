page 50151 "HKSPTE Delivery Wizard"
{
    PageType = NavigatePage;
    SourceTable = "Warehouse Shipment Header";
    Caption = 'Delivery Wizard';

    layout
    {
        area(Content)
        {
            group(Step1)
            {
                Visible = CurrentStep = 1;

                group("Meter Details")
                {
                    field("Meter Start"; Rec."Meter Start")
                    {
                        ApplicationArea = All;
                        NotBlank = true;
                        ToolTip = 'Specifies the value of the Meter Start field.';

                        trigger OnValidate()
                        begin
                            balanceText:=Format(Rec."Meter End" - Rec."Meter Start");
                        end;
                    }
                    field("Meter End"; Rec."Meter End")
                    {
                        ApplicationArea = All;
                        NotBlank = true;
                        ToolTip = 'Specifies the value of the Meter End field.';

                        trigger OnValidate()
                        begin
                            balanceText:=Format(Rec."Meter End" - Rec."Meter Start");
                        end;
                    }
                    label(balanceText)
                    {
                        ApplicationArea = All;
                        CaptionClass = 'Ordered Qty: ' + Format(getItemDetails(ShipmentNo)) + ' . Delivered: ' + Format(Rec."Meter End" - Rec."Meter Start") + ' . Balance: ' + Format(getItemDetails(ShipmentNo) - (Rec."Meter End" - Rec."Meter Start"));
                    }
                }
            }
            group(Step2)
            {
                Visible = CurrentStep = 2;

                group("Cheack List")
                {
                    field("Check Water Contamination"; Rec."Check Water Contamination")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Check Water Contamination field.';
                    }
                    field("Take Sample for Visiblity Test"; Rec."Take Sample for Visiblity Test")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Take Sample for Visiblity Test field.';
                    }
                    field("Check Barge Meter"; Rec."Check Barge Meter")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Check Barge Meter field.';
                    }
                    field("Check Client Meter"; Rec."Check Client Meter")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Check Client Meter field.';
                    }
                    field("ROB Client Tank"; Rec."ROB Client Tank")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the ROB Client Tank field.';
                    }
                }
            }
            group("Receiver Details")
            {
                Visible = CurrentStep = 3;

                field("Shipment Date"; Rec."Shipment Date")
                {
                    Caption = 'Received Date';
                    ApplicationArea = Warehouse;
                    NotBlank = true;
                    ToolTip = 'Specifies when items on the document are shipped or were shipped. A shipment date is usually calculated from a requested delivery date plus lead time.';
                }
                field("Received By"; Rec."Received By")
                {
                    Caption = 'Received By';
                    ApplicationArea = Warehouse;
                    NotBlank = true;
                    ToolTip = 'Specifies the value of the Received By field.';
                }
                field("Received By_ID"; Rec."Received By ID")
                {
                    Caption = 'Received By ID';
                    ApplicationArea = Warehouse;
                    NotBlank = true;
                    ToolTip = 'Specifies the value of the Received By ID field.';
                }
                part(WhseShptLines; "Whse. Shipment Subform")
                {
                    ApplicationArea = Warehouse;
                    SubPageLink = "No."=FIELD("No.");
                    SubPageView = SORTING("No.", "Sorting Sequence No.");
                }
                usercontrol(Signature; "PIN SignaturePad")
                {
                    ApplicationArea = All;

                    trigger OnControlAddInReady()
                    begin
                    end;
                    trigger AfterSaveSignature(Image: Text)
                    var
                        wsh: Record "Warehouse Shipment Header";
                        Base64Convert: Codeunit "Base64 Convert";
                        TempBlob_lRec: Codeunit "Temp Blob";
                        RecRef: RecordRef;
                        BlobOutStream: OutStream;
                        Outstream: OutStream;
                    begin
                        WarehouseShipmentHeader.Get(Rec."No.");
                        WarehouseShipmentHeader."Signature Image".CreateOutStream(OutStream);
                        Base64Convert.FromBase64(Image.Remove(1, 22), Outstream);
                        WarehouseShipmentHeader.Modify();
                        delivaryAppCodeUnit.updateShippedQty(ShipmentNo, Rec."Meter End" - Rec."Meter Start");
                        TempBlob_lRec.CreateOutStream(BlobOutStream, TEXTENCODING::UTF8);
                        wsh.Reset();
                        wsh.SetRange("No.", Rec."No.");
                        wsh.FindFirst();
                        RecRef.GetTable(wsh);
                        ApplyTracking(wsh);
                        PostShipmentOnly(wsh);
                        Commit();
                        CurrPage.Close();
                    end;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(MeterStartImage)
            {
                ApplicationArea = All;
                Caption = 'Meter Start Image';
                InFooterBar = true;
                Enabled = TakeMeterImage;
                Visible = TakeMeterImage;
                Image = Camera;
                ToolTip = 'Executes the Meter Start Image action.';

                trigger OnAction()
                var
                    open: Boolean;
                begin
                    open:=true;
                    delivaryAppCodeUnit.OpenCamera(open, 'Meter Start Image', Rec);
                end;
            }
            action(MeterEndImage)
            {
                ApplicationArea = All;
                Caption = 'Meter End Image';
                Visible = TakeMeterImage;
                InFooterBar = true;
                Enabled = TakeMeterImage;
                Image = Camera;
                ToolTip = 'Executes the Meter End Image action.';

                trigger OnAction()
                var
                    open: Boolean;
                begin
                    open:=true;
                    delivaryAppCodeUnit.OpenCamera(open, 'Meter End Image', Rec);
                end;
            }
            action(IDCardImage)
            {
                ApplicationArea = All;
                Caption = 'ID card Image';
                InFooterBar = true;
                Visible = IdcardImageBool;
                Enabled = IdcardImageBool;
                Image = Camera;
                ToolTip = 'Executes the ID card Image action.';

                trigger OnAction()
                var
                    open: Boolean;
                begin
                    open:=true;
                    delivaryAppCodeUnit.OpenCamera(open, 'ID Card Image', Rec);
                end;
            }
            action(ActionBack)
            {
                ApplicationArea = All;
                Caption = 'Back';
                InFooterBar = true;
                Enabled = ActionBackAllowed;
                Image = PreviousRecord;
                ToolTip = 'Executes the Back action.';

                trigger OnAction()
                begin
                    TakeStep(-1);
                end;
            }
            action(ActionNext)
            {
                ApplicationArea = All;
                Caption = 'Next';
                InFooterBar = true;
                Enabled = ActionNextAllowed;
                Image = NextRecord;
                ToolTip = 'Executes the Next action.';

                trigger OnAction()
                begin
                    TakeStep(1);
                end;
            }
            action(Finish)
            {
                ApplicationArea = All;
                Caption = 'Finish';
                InFooterBar = true;
                Enabled = ActionFinishAllowed;
                Image = Approve;
                ToolTip = 'Executes the Finish action.';

                trigger OnAction()
                var
                    Image: Text;
                begin
                    CurrPage.Update();
                    CurrPage.Signature.SaveSignature(Image);
                end;
            }
        }
    }
    local procedure SetControls()
    begin
        ActionBackAllowed:=CurrentStep > 1;
        TakeMeterImage:=CurrentStep = 1;
        ActionNextAllowed:=CurrentStep < 3;
        ActionFinishAllowed:=CurrentStep = 3;
        IdcardImageBool:=CurrentStep = 3;
        if(CurrentStep = 3)then delivaryAppCodeUnit.updateShippedQty(ShipmentNo, Rec."Meter End" - Rec."Meter Start");
    end;
    local procedure TakeStep(Step: Integer)
    begin
        CurrentStep+=Step;
        SetControls();
    end;
    trigger OnOpenPage()
    begin
        WarehouseShipmentHeader.Get(ShipmentNo);
        Rec:=WarehouseShipmentHeader;
        CurrentStep:=1;
        SetControls();
    end;
    procedure PostShipmentOnly(WhseShpHdr: Record "Warehouse Shipment Header")
    var
        WhseShptLine: Record "Warehouse Shipment Line";
    begin
        WhseShptLine.Reset();
        WhseShptLine.SetFilter("No.", '=' + Rec."No.");
        WhseShptLine.FindFirst();
        CODEUNIT.Run(CODEUNIT::"Whse.-Post Shipment-PrintOnly", WhseShptLine);
        Rec.Reset();
        Rec.SetCurrentKey("No.", "No.");
        CurrPage.Update(false);
    end;
    var WarehouseShipmentHeader: record "Warehouse Shipment Header";
    delivaryAppCodeUnit: Codeunit DelivaryAppCodeUnit;
    balanceText: Text;
    CurrentStep: Integer;
    ActionBackAllowed: Boolean;
    TakeMeterImage: Boolean;
    ActionNextAllowed: Boolean;
    ActionFinishAllowed: Boolean;
    IdcardImageBool: Boolean;
    ShipmentNo: Code[20];
    procedure SetShipmentNo(shipmentNoFrom: Code[20])
    begin
        ShipmentNo:=shipmentNoFrom;
    end;
    procedure getItemDetails(id: Text): Decimal var
        WarehouseShipmentLine: Record "Warehouse Shipment Line";
    begin
        WarehouseShipmentLine.Reset();
        WarehouseShipmentLine.SetFilter("No.", '=' + id);
        if WarehouseShipmentLine.IsEmpty then exit(0);
        exit(WarehouseShipmentLine."Qty. to Ship");
    end;
    trigger OnAfterGetCurrRecord()
    begin
        Rec."Shipment Date":=System.Today();
        Rec."Posting Date":=System.Today();
    end;
    procedure ApplyTracking(ws: record "Warehouse Shipment Header")
    var
        WhseShipmentLine: Record "Warehouse Shipment Line";
        AutoTracking: Codeunit "PIN AutoTracking";
    begin
        WhseShipmentLine.SetRange("No.", ws."No.");
        if WhseShipmentLine.FindSet()then repeat AutoTracking.WarehouseShipmentLineReserve(WhseShipmentLine);
            until WhseShipmentLine.Next() = 0;
    end;
}
