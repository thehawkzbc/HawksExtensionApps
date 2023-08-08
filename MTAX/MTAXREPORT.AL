report 60200 "PINTAX Tax Statement Report1"
{
    Caption = 'Tax Statement Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = './TaxStatementReport.rdlc';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(Integer; Integer)
        {
            column(TaxActivityNumber; TaxActivityNumber)
            {

            }
            column(Type; Type)
            {

            }
            column(PostingDate; PostingDate)
            {

            }
            column(DocumentDate; DocumentDate)
            {

            }
            column(DocumentNO; DocumentNO)
            {

            }
            column(BillToPayToNO; BillToPayToNO)
            {

            }
            column(VendorCustomerName; VendorCustomerName)
            {

            }
            column(VATRegistrationNo; VATRegistrationNo)
            {

            }
            column(DocumentType; DocumentType)
            {

            }
            column(ExternalDocumentNo; ExternalDocumentNo)
            {

            }
            column(Base; Base)
            {

            }
            column(Amount; Amount)
            {

            }
            column(Closed; closed)
            {

            }
            column(Reversed; Reversed)
            {

            }
            column(Force_Closed; ForceClosed)
            {

            }
            column(VATBuspostingGroup; VATBuspostingGroup)
            {

            }
            column(VATProdPostingGroup; VATProdPostingGroup)
            {

            }
            column(TaxActivityName; TAxActivityName)
            {

            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(ClosedEntries; ClosedEntries)
                    {
                        ApplicationArea = ALL;

                    }
                }
                group(PostingDtate)
                {
                    field(FromDate; DATE)
                    {

                    }
                    field(ToDate; Date)
                    {

                    }
                }
            }
        }
    }
    var

        PINGSTTaxStatement: Query "PINTAX GST Tax Statement";
        VendorCustomerName: Text[100];
        OptionsClosedEntries: Boolean;
        OptionsFromDate: Date;
        OptionsToDate: Date;
        TaxActivityName: Text[50];
        //HEMANTH
        TaxActivityNumber: Code[20];
        PostingDate: date;
        Type: Option;
        DocumentDate: Date;
        DocumentNO: Code[20];
        BillToPayToNO: Code[30];
        VATRegistrationNo: Code[20];
        DocumentType: Option;
        ExternalDocumentNo: Code[20];
        Base: Text[50];
        Amount: Code[20];
        closed: Date;

        Reversed: Boolean;
        ForceClosed: DateTime;
        VATBuspostingGroup: Code[50];
        VATProdPostingGroup: code[30];
        ClosedEntries: code[50];

        DATE: Date;









}




report 60201 "PINTAX Calc. and Post VAT Set1"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CalcandPostVATSettlement.rdlc';
    AdditionalSearchTerms = 'settle vat value added tax,report vat value added tax';
    ApplicationArea = Basic, Suite;
    Caption = 'Calculate and Post VAT Settlement (Maldives)';
    Permissions = TableData "VAT Entry" = imd;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("VAT Posting Setup"; "VAT Posting Setup")
        {
            column(TodayFormatted; TodayFormatted)
            {

            }
            column(PeriodVATDateFilter; PeriodVATDateFilter)
            {

            }
            column(CompanyName; CompanyName)
            {

            }
            column(PostSettlement; PostSettlement)
            {

            }
            column(PostingDate; PostingDate)
            {

            }
            column(DocNo; DocNo)
            {

            }
            column(GLAccSettleNo; GLAccSettleNo)
            {

            }
            column(UseAmtsInAddCurr; UseAmtsInAddCurr)
            {

            }
            column(PrintVATEntries; PrintVATEntries)
            {

            }
            column(VATPostingSetupCaption; VATPostingSetupCaption)
            {

            }
            column(VATPostingSetupFilter; VATPostingSetupFilter)
            {

            }
            column(HeaderText; HeaderText)
            {

            }
            column(VATAmount; VATAmount)
            {

            }
            column(VATAmountAddCurr; VATAmountAddCurr)
            {

            }
            column(CalcandPostVATSettlementCaption; CalcandPostVATSettlementCaption)
            {

            }
            column(PageCaption; PageCaption)
            {

            }
            column(TestReportnotpostedCaption; TestReportnotpostedCaption)
            {

            }
            column(DocNoCaption; DocNoCaption)
            {

            }
            column(SettlementAccCaption; SettlementAccCaption)
            {

            }
            column(DocumentTypeCaption; DocumentTypeCaption)
            {

            }
            column(UserIDCaption; UserIDCaption)
            {

            }
            column(TotalCaption; TotalCaption)
            {

            }
            column(DocumentNoCaption; DocumentNoCaption)
            {

            }
            column(TypeCaption; TypeCaption)
            {

            }
            column(BaseCaption; BaseCaption)
            {

            }
            column(AmountCaption; AmountCaption)
            {

            }
            column(UnrealizedBaseCaption; UnrealizedBaseCaption)
            {

            }
            column(UnrealizedAmountCaption; UnrealizedAmountCaption)
            {

            }
            column(VATCalculationCaption; VATCalculationCaption)
            {

            }
            column(BilltoPaytoNoCaption; BilltoPaytoNoCaption)
            {

            }
            column(EntryNoCaption; EntryNoCaption)
            {

            }
            column(PostingDateCaption; PostingDateCaption)
            {

            }
            dataitem("Closing G/L and VAT Entry"; integer)
            {
                column(VATBusPstGr_VATPostSetup; VATPostingSetupCaption)
                {

                }
                column(VATPrdPstGr_VATPostSetup; VATPostingSetupCaption)
                {

                }
                column(VATEntryGetFilterType; VATEntryGetFilterType)
                {

                }
                column(VATEntryGetFiltTaxJurisCd; VATEntryGetFiltTaxJurisCd)
                {

                }
                column(VATEntryGetFilterUseTax; VATEntryGetFilterUseTax)
                {

                }
                dataitem("VAT Entry"; "VAT Entry")
                {
                    column(PostingDate_VATEntry; PostingDate_VATEntry)
                    {

                    }
                    column(DocumentNo_VATEntry; DocumentNo)
                    {

                    }

                    column(DocumentType_VATEntry; "Document Type")
                    {

                    }
                    column(Type_VATEntry; Type)
                    {

                    }
                    column(Base_VATEntry; Base)
                    {

                    }
                    column(Amount_VATEntry; Amount)
                    {

                    }
                    column(VATCalcType_VATEntry; "VAT Calculation Type")
                    {

                    }
                    column(BilltoPaytoNo_VATEntry; "Bill-to/Pay-to No.")
                    {

                    }
                    column(EntryNo_VATEntry; "Entry No.")
                    {

                    }
                    column(UserID_VATEntry; "User ID")
                    {

                    }
                    column(UnrealizedAmount_VATEntry; "Unrealized Amount")
                    {

                    }
                    column(UnrealizedBase_VATEntry; "Unrealized Base")
                    {

                    }
                    column(AddCurrUnrlzdAmt_VATEntry; "Add.-Currency Unrealized Amt.")
                    {

                    }
                    column(AddCurrUnrlzdBas_VATEntry; "Add.-Currency Unrealized Base")
                    {

                    }
                    column(AdditionlCurrAmt_VATEntry; "Additional-Currency Amount")
                    {

                    }
                    column(AdditinlCurrBase_VATEntry; "Additional-Currency Base")
                    {

                    }
                }
                dataitem("Close VAT Entries"; Integer)
                {
                    column(PostingDate1; PostingDate)
                    {

                    }
                    column(GenJnlLineDocumentNo; DocumentNo)
                    {

                    }
                    column(GenJnlLineVATBaseAmoun; GenJnlLineVATBaseAmoun)
                    {

                    }
                    column(GenJnlLineVATAmount; GenJnlLineVATAmount)
                    {

                    }
                    column(GenJnlLnVATCalcType; GenJnlLnVATCalcType)
                    {

                    }
                    column(NextVATEntryNo; NextVATEntryNo)
                    {

                    }
                    column(GenJnlLnSrcCurrVATAmount; GenJnlLineVATAmount)
                    {

                    }
                    column(GenJnlLnSrcCurrVATBaseAmt; GenJnlLineVATBaseAmoun)
                    {

                    }
                    column(GenJnlLine2Amount; GenJnlLineVATAmount)
                    {

                    }
                    column(GenJnlLine2DocumentNo; DocumentNo)
                    {

                    }
                    column(ReversingEntry; ReversingEntry)
                    {

                    }
                    column(GenJnlLn2SrcCurrencyAmt; GenJnlLineVATAmount)
                    {

                    }
                    column(SettlementCaption; SettlementCaption)
                    {

                    }
                }



            }
        }

    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(StartingDate; EntrdStartDate)
                    {
                        ApplicationArea = all;

                    }
                    field(EndDateReq; EndDateReq)
                    {
                        ApplicationArea = all;

                    }
                    field(PostingDt; PostingDate)
                    {
                        ApplicationArea = all;

                    }
                    field(DocumentNo; DocumentNo)
                    {
                        ApplicationArea = all;

                    }
                    field(SettlementAcc; SettlementAccCaptionLbl)
                    {
                        ApplicationArea = all;

                    }
                    field(ShowVATEntries; ShowVATEntries)
                    {
                        ApplicationArea = all;

                    }
                    field(Post; post)
                    {
                        ApplicationArea = all;

                    }
                    field(AmtsinAddReportingCurr; AmtsinAddReportingCurr)
                    {
                        ApplicationArea = all;

                    }

                }
            }
        }
    }

    var

        Text000: Label 'Text000';
        Text001: Label 'Text001';
        Text002: Label 'Text002';
        Text003: Label 'Text003';
        Text004: Label 'Text004';
        Text005: Label 'Text005';
        AllAmountsAreInTxt: Label 'AllamountsAreInTxt';
        Text007: Label 'Text007';
        Text008: Label 'Text008';
        GLAccSettle: Record "G/L Account";
        SourceCodeSetup: Record "Source Code Setup";
        GenJnlLine: Record "Gen. Journal Line";
        GenJnlLine2: Record "Gen. Journal Line";
        GLEntry: Record "G/L Entry";
        VATEntry: Record "VAT Entry";
        TaxJurisdiction: Record "Tax Jurisdiction";
        GLSetup: Record "General Ledger Setup";
        VATPostingSetup: Record "VAT Posting Setup";
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
        EntrdStartDate: Date;
        EndDateReq: Date;
        PrintVATEntries: Boolean;
        NextVATEntryNo: Integer;
        PostingDate: Date;
        DocNo: Code[20];
        VATType: Enum "General Posting Type";
        VATAmount: Decimal;
        VATAmountAddCurr: Decimal;
        PostSettlement: Boolean;
        FindFirstEntry: Boolean;
        ReversingEntry: Boolean;
        Initialized: Boolean;
        VATPostingSetupFilter: Text;
        VATDateFilter: Text;
        UseAmtsInAddCurr: Boolean;
        HeaderText: Text[30];
        CalcandPostVATSettlementCaptionLbl: Label 'Text CalcandPostVATSettlementCaptionLbl ';
        PageCaptionLbl: Label 'Text  PageCaptionLbl';
        TestReportnotpostedCaptionLbl: Label 'Text TestReportnotpostedCaptionLbl';
        DocNoCaptionLbl: Label 'Text DocNoCaptionLbl ';
        SettlementAccCaptionLbl: Label 'Text SettlementAccCaptionLbl';
        DocumentTypeCaptionLbl: Label 'Text DocumentTypeCaptionLbl';
        UserIDCaptionLbl: Label 'Text UserIDCaptionLbl';
        TotalCaptionLbl: Label 'Text TotalCaptionLbl ';
        PostingDateCaptionLbl: Label 'Text PostingDateCaptionLbl';
        SettlementCaptionLbl: Label 'Text SettlementCaptionLbl';
        //hemanth
        DocumentNo: Code[20];
        PeriodVATDateFilte: Date;
        TodayFormatted: Code[50];
        PeriodVATDateFilter: Duration;
        GLAccSettleNo: Code[30];
        VATPostingSetupCaption: Integer;
        CalcandPostVATSettlementCaption: Integer;
        PageCaption: Char;
        TestReportnotpostedCaption: Text[50];

        DocNoCaption: Label 'Text DocNoCaption';
        SettlementAccCaption: Label 'Text SettlementAccCaption';
        DocumentTypeCaption: Label 'Text DocumentTypeCaption';
        UserIDCaption: Label 'Text UserIDCaption';
        TotalCaption: Label 'Text TotalCaption';
        DocumentNoCaption: Label 'Text DocumentNoCaption';
        TypeCaption: Label 'Textn TypeCaption';
        BaseCaption: Label 'Text BaseCaption';
        AmountCaption: Label 'Text AmountCaption';
        UnrealizedBaseCaption: Label 'Text UnrealizedBaseCaption';
        UnrealizedAmountCaption: Label 'Text UnrealizedAmountCaption';
        VATCalculationCaption: Label 'Text VATCalculationCaption';
        BilltoPaytoNoCaption: Label 'Text BilltoPaytoNoCaption';
        EntryNoCaption: Label 'Text EntryNoCaption';
        PostingDateCaption: Label 'Text  PostingDateCaption';
        VATEntryGetFilterType: Option;
        VATEntryGetFiltTaxJurisCd: Option;
        VATEntryGetFilterUseTax: Code[20];
        PostingDate_VATEntry: Code[20];
        GenJnlLineVATBaseAmoun: Decimal;
        GenJnlLineVATAmount: Decimal;

        GenJnlLnVATCalcType: Option;
        SettlementCaption: Label 'Text SettlementCaption';
        Post: Code[20];
        ShowVATEntries: date;
        AmtsinAddReportingCurr: Code[30];



    procedure InitializeRequest(NewStartDate: Date; NewEndDate: Date; NewPostingDate: Date; NewDocNo: Code[20]; NewSettlementAcc: Code[20]; ShowVATEntries: Boolean; Post: Boolean)
    begin

    end;



    procedure InitializeRequest2(NewUseAmtsInAddCurr: Boolean)
    begin

    end;

    procedure SetInitialized(Initialize: Boolean)
    begin

    end;

    [IntegrationEvent(False, False)]
    local procedure OnAfterPreReport()
    begin
    end;

    [IntegrationEvent(False, False)]
    local procedure OnAfterPostReport()
    begin
    end;

    [IntegrationEvent(False, False)]
    local procedure OnBeforeCheckPrintVATEntries(var VATEntry: Record "VAT Entry")


    begin

    end;

    [IntegrationEvent(False, False)]
    local procedure OnBeforePostGenJnlLineReverseChargeVAT(var GenJnlLine: Record "Gen. Journal Line"; var VATEntry: Record "VAT Entry"; var VATAmount: Decimal; var VATAmountAddCurr: Decimal)
    begin
    end;

    [IntegrationEvent(False, False)]
    local procedure OnBeforePreReport(var VATPostingSetup: Record "VAT Posting Setup")
    begin
    end;

    [IntegrationEvent(False, False)]
    local procedure OnAfterIncrementGenPostingType(OldGenPostingType: Enum "General Posting Type"; var NewGenPostingType: Enum "General Posting Type")
    begin
    end;
}
