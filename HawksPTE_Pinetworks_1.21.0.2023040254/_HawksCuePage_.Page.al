page 50153 "HawksCuePage"
{
    PageType = CardPart;
    SourceTable = HawksCueTable;
    Caption = ' ';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            cuegroup(HawksCueContainer)
            {
                Caption = 'Cheques';

                // CuegroupLayout=Wide;
                field(CheckToPrint; Rec.CheckToPrint)
                {
                    ApplicationArea = All;
                    Caption = 'Ready To Print';
                    DrillDownPageId = "Payment Journal";
                    ToolTip = 'Specifies the value of the Ready To Print field.';
                }
                field(CheckPendingApproval; Rec.CheckPendingApproval)
                {
                    ApplicationArea = All;
                    Caption = 'Pending Approval';
                    DrillDownPageId = "Payment Journal";
                    ToolTip = 'Specifies the value of the Pending Approval field.';
                }
            }
            cuegroup(HawksCueContainerOther)
            {
                Caption = 'Bank Transfers';

                // CuegroupLayout=Wide;
                field(IBTransferPending; Rec.IBTransferPending)
                {
                    ApplicationArea = All;
                    Caption = 'IB Transfer';
                    ToolTip = 'Specifies the value of the IB Transfer field.';

                    //    DrillDownPageId = "Payment Journal";
                    trigger OnDrillDown()
                    var
                        Batch: Record "Gen. Journal Batch";
                        Journal: Codeunit GenJnlManagement;
                    begin
                        Batch.SetRange("Journal Template Name", 'PAYMENTS');
                        Batch.SetRange(Name, 'IB');
                        if Batch.FindFirst()then Journal.TemplateSelectionFromBatch(Batch);
                    end;
                }
                field(RTGSPending; Rec.RTGSPending)
                {
                    ApplicationArea = All;
                    Caption = 'RTGS';
                    DrillDownPageId = "Payment Journal";
                    ToolTip = 'Specifies the value of the RTGS field.';
                }
                field(TTPending; Rec.TTPending)
                {
                    ApplicationArea = All;
                    Caption = 'Telegraphic Transfer';
                    DrillDownPageId = "Payment Journal";
                    ToolTip = 'Specifies the value of the Telegraphic Transfer field.';
                }
                field(OnlinePayments; Rec.OnlinePayments)
                {
                    ApplicationArea = All;
                    Caption = 'Online Payments';
                    DrillDownPageId = "Payment Journal";
                    ToolTip = 'Specifies the value of the Online Payments field.';
                }
            }
            cuegroup(AccountsPayable)
            {
                caption = 'Open Purchase Documents';

                field("Purchase Documents - BU10 "; Rec."Purchase Documents - BU10 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Fuel';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Fuel field.';
                }
                field("Purchase Documents - BU25 "; Rec."Purchase Documents - BU25 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Transport';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Transport field.';
                }
                field("Purchase Documents - BU35 "; Rec."Purchase Documents - BU35 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Lathe';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Lathe field.';
                }
                field("Purchase Documents - BU45 "; Rec."Purchase Documents - BU45 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Boat yard';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Boat yard field.';
                }
                field("Purchase Documents - BU30 "; Rec."Purchase Documents - BU30 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Construction';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Construction field.';
                }
                field("Purchase Documents - BU40 "; Rec."Purchase Documents - BU40 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Rentals';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Rentals field.';
                }
                field("Purchase Documents - BU50 "; Rec."Purchase Documents - BU50 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Fibre';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Fibre field.';
                }
                field("Purchase Documents - BU55 "; Rec."Purchase Documents - BU55 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Electric Engineering';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Electric Engineering field.';
                }
                field("Purchase Documents - BU60 "; Rec."Purchase Documents - BU60 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Construction';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Construction field.';
                }
                field("Purchase Documents - BU65 "; Rec."Purchase Documents - BU65 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Tailoring';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Tailoring field.';
                }
                field("Purchase Documents - BU70 "; Rec."Purchase Documents - BU70 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Bricks';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Bricks field.';
                }
                field("Purchase Documents - BU90 "; Rec."Purchase Documents - BU90 ")
                {
                    ApplicationArea = All;
                    Caption = 'Hawks Head Office';
                    DrillDownPageId = "Vendor Ledger Entries";
                    ToolTip = 'Specifies the value of the Hawks Head Office field.';
                }
            }
        }
    }
    trigger OnOpenPage();
    begin
        Rec.Reset();
        if not Rec.Get()then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
