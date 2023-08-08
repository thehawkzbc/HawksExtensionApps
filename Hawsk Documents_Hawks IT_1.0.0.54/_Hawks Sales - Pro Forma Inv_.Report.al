report 50078 "Hawks Sales - Pro Forma Inv"
{
    DefaultLayout = RDLC;
    RDLCLayout = './HawksSalesProFormaInv.rdl';
    WordLayout = './HawksSalesProFormaInv.docx';
    Caption = 'Pro Forma Invoice';

    dataset
    {
        dataitem(Header; "Sales Header")
        {
            DataItemTableView = SORTING("Document Type", "No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Pro Forma Invoice';

            column(DocumentDate; Format("Document Date", 0, 4))
            {
            }
            column(CompanyPicture; CompanyInformation.Picture)
            {
            }
            column(CompRegNo; CompanyInformation."Registration No.")
            {
            }
            column(HeaderPicture; CompanyInformation.ReportPicture)
            {
            }
            column(CompanyEMail; CompanyInformation."E-Mail")
            {
            }
            column(CompanyHomePage; CompanyInformation."Home Page")
            {
            }
            column(CompanyPhoneNo; CompanyInformation."Phone No.")
            {
            }
            column(CompanyVATRegNo; CompanyInformation.GetVATRegistrationNumber())
            {
            }
            column(CompanyAddress1; CompanyAddress[1])
            {
            }
            column(CompanyAddress2; CompanyAddress[2])
            {
            }
            column(CompanyAddress3; CompanyAddress[3])
            {
            }
            column(CompanyAddress4; CompanyAddress[4])
            {
            }
            column(CompanyAddress5; CompanyAddress[5])
            {
            }
            column(CompanyAddress6; CompanyAddress[6])
            {
            }
            column(CompanyAddress7; CompanyAddress[7])
            {
            }
            column(CompanyAddress8; CompanyAddress[8])
            {
            }
            column(Country_of_Origin; "Country of Origin")
            {
            }
            column(Country_of_Shipment; "Country of Shipment")
            {
            }
            //pra
            column(companyname; CompanyInfor.Name)
            {
            }
            column(BankAccNum; BankAccNum)
            {
            }
            column(BankAccName; BankAccName)
            {
            }
            column(Bankbranch; Bankbranch)
            {
            }
            column(BankSwiftCode; BankSwiftCode)
            {
            }
            column(Bankiban; Bankiban)
            {
            }
            column(BankAddress; BankAddress)
            {
            }
            column(BankAddress2; BankAddress2)
            {
            }
            column(BankCity; BankCity)
            {
            }
            column(Bankcountry; Bankcountry)
            {
            }
            column(Text001; Text001)
            {
            }
            column(Text002; Text002)
            {
            }
            column(Text003; Text003)
            {
            }
            column(TextVal001; TextVal001)
            {
            }
            column(TextVal002; TextVal002)
            {
            }
            column(TextVal003; TextVal003)
            {
            }
            column(USDLCY; GLsetup3."USD Conversion Factor")
            {
            }
            //2ND BANK
            column(BankAccNum1; BankAccNum1)
            {
            }
            column(BankAccName1; BankAccName1)
            {
            }
            column(Bankbranch1; Bankbranch1)
            {
            }
            column(BankSwiftCode1; BankSwiftCode1)
            {
            }
            column(Bankiban1; Bankiban1)
            {
            }
            column(BankAddress1; BankAddress1)
            {
            }
            column(BankAddress21; BankAddress21)
            {
            }
            column(BankCity1; BankCity1)
            {
            }
            column(Bankcountry1; Bankcountry1)
            {
            }
            //pra
            column(CustomerAddress1; CustomerAddress[1])
            {
            }
            column(CustomerAddress2; CustomerAddress[2])
            {
            }
            column(CustomerAddress3; CustomerAddress[3])
            {
            }
            column(CustomerAddress4; CustomerAddress[4])
            {
            }
            column(CustomerAddress5; CustomerAddress[5])
            {
            }
            column(CustomerAddress6; CustomerAddress[6])
            {
            }
            column(CustomerAddress7; CustomerAddress[7])
            {
            }
            column(CustomerAddress8; CustomerAddress[8])
            {
            }
            column(SellToContactPhoneNoLbl; SellToContactPhoneNoLbl)
            {
            }
            column(SellToContactMobilePhoneNoLbl; SellToContactMobilePhoneNoLbl)
            {
            }
            column(SellToContactEmailLbl; SellToContactEmailLbl)
            {
            }
            column(BillToContactPhoneNoLbl; BillToContactPhoneNoLbl)
            {
            }
            column(BillToContactMobilePhoneNoLbl; BillToContactMobilePhoneNoLbl)
            {
            }
            column(BillToContactEmailLbl; BillToContactEmailLbl)
            {
            }
            column(SellToContactPhoneNo; SellToContact."Phone No.")
            {
            }
            column(SellToContactMobilePhoneNo; SellToContact."Mobile Phone No.")
            {
            }
            column(SellToContactEmail; SellToContact."E-Mail")
            {
            }
            column(BillToContactPhoneNo; BillToContact."Phone No.")
            {
            }
            column(BillToContactMobilePhoneNo; BillToContact."Mobile Phone No.")
            {
            }
            column(BillToContactEmail; BillToContact."E-Mail")
            {
            }
            column(YourReference; "Your Reference")
            {
            }
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(DocumentNo; "No.")
            {
            }
            column(CompanyLegalOffice; CompanyInformation.GetLegalOffice())
            {
            }
            column(SalesPersonName; SalespersonPurchaserName)
            {
            }
            column(ShipmentMethodDescription; ShipmentMethodDescription)
            {
            }
            column(Currency; CurrencyCode)
            {
            }
            column(CustomerVATRegNo; GetCustomerVATRegistrationNumber())
            {
            }
            column(CustomerVATRegistrationNoLbl; GetCustomerVATRegistrationNumberLbl())
            {
            }
            column(PageLbl; PageLbl)
            {
            }
            column(DocumentTitleLbl; DocumentCaption())
            {
            }
            column(YourReferenceLbl; FieldCaption("Your Reference"))
            {
            }
            column(ExternalDocumentNoLbl; FieldCaption("External Document No."))
            {
            }
            column(CompanyLegalOfficeLbl; CompanyInformation.GetLegalOfficeLbl())
            {
            }
            column(SalesPersonLbl; SalesPersonLblText)
            {
            }
            column(EMailLbl; CompanyInformation.FieldCaption("E-Mail"))
            {
            }
            column(HomePageLbl; CompanyInformation.FieldCaption("Home Page"))
            {
            }
            column(CompanyPhoneNoLbl; CompanyInformation.FieldCaption("Phone No."))
            {
            }
            column(ShipmentMethodDescriptionLbl; DummyShipmentMethod.TableCaption())
            {
            }
            column(CurrencyLbl; DummyCurrency.TableCaption())
            {
            }
            column(ItemLbl; Item.TableCaption())
            {
            }
            column(TariffLbl; Item.FieldCaption("Tariff No."))
            {
            }
            column(UnitPriceLbl; Item.FieldCaption("Unit Price"))
            {
            }
            column(CountryOfManufactuctureLbl; CountryOfManufactuctureLbl)
            {
            }
            column(AmountLbl; Line.FieldCaption(Amount))
            {
            }
            column(VATPctLbl; Line.FieldCaption("VAT %"))
            {
            }
            column(VATAmountLbl; DummyVATAmountLine.VATAmountText())
            {
            }
            column(TotalWeightLbl; TotalWeightLbl)
            {
            }
            column(TotalAmountLbl; TotalAmountLbl)
            {
            }
            column(TotalAmountInclVATLbl; TotalAmountInclVATLbl)
            {
            }
            column(QuantityLbl; Line.FieldCaption(Quantity))
            {
            }
            column(NetWeightLbl; Line.FieldCaption("Net Weight"))
            {
            }
            column(DeclartionLbl; DeclartionLbl)
            {
            }
            column(SignatureLbl; SignatureLbl)
            {
            }
            column(SignatureNameLbl; SignatureNameLbl)
            {
            }
            column(SignaturePositionLbl; SignaturePositionLbl)
            {
            }
            column(VATRegNoLbl; CompanyInformation.GetVATRegistrationNumberLbl())
            {
            }
            column(ShowWorkDescription; ShowWorkDescription)
            {
            }
            column(TotalAmountACY1; TotalAmountACY1)
            {
            }
            column(TotalamountACYLbl1; TotalamountACYLbl1)
            {
            }
            column(IMO_No_; "IMO No.")
            {
            }
            column(BDN_No_; "BDN No.")
            {
            }
            column(Vessel_Name; "Vessel Name")
            {
            }
            column(Delivery_Port; "Delivery Port")
            {
            }
            column(Payment_Terms_Code; "Payment Terms Code")
            {
            }
            column(Due_Date; "Due Date")
            {
            }
            dataitem(Line; "Sales Line")
            {
                DataItemLink = "Document Type"=FIELD("Document Type"), "Document No."=FIELD("No.");
                DataItemLinkReference = Header;
                DataItemTableView = SORTING("Document No.", "Line No.");

                column(ItemDescription; Description)
                {
                }
                column(CountryOfManufacturing; Item."Country/Region of Origin Code")
                {
                }
                column(Tariff; Item."Tariff No.")
                {
                }
                column(Quantity; "Qty. to Invoice")
                {
                }
                column(Price; FormattedLinePrice)
                {
                AutoFormatExpression = "Currency Code";
                AutoFormatType = 2;
                }
                column(NetWeight; "Net Weight")
                {
                }
                column(LineAmount; FormattedLineAmount)
                {
                AutoFormatExpression = "Currency Code";
                AutoFormatType = 1;
                }
                column(VATPct; "VAT %")
                {
                }
                column(VATAmount; FormattedVATAmount)
                {
                }
                trigger OnAfterGetRecord()
                var
                    Location: Record Location;
                    AutoFormatType: Enum "Auto Format";
                begin
                    GetItemForRec("No.");
                    OnBeforeLineOnAfterGetRecord(Header, Line);
                    if IsShipment()then if Location.RequireShipment("Location Code") and ("Quantity Shipped" = 0)then "Qty. to Invoice":=Quantity;
                    if Quantity = 0 then begin
                        LinePrice:="Unit Price";
                        LineAmount:=0;
                        VATAmount:=0;
                    end
                    else
                    begin
                        LinePrice:=Round(Amount / Quantity, Currency."Unit-Amount Rounding Precision");
                        LineAmount:=Round(Amount * "Qty. to Invoice" / Quantity, Currency."Amount Rounding Precision");
                        if Currency.Code = '' then VATAmount:="Amount Including VAT" - Amount
                        else
                            VATAmount:=Round(Amount * "VAT %" / 100 * "Qty. to Invoice" / Quantity, Currency."Amount Rounding Precision");
                        TotalAmount+=LineAmount;
                        TotalWeight+=Round("Qty. to Invoice" * "Net Weight");
                        TotalVATAmount+=VATAmount;
                        TotalAmountInclVAT+=Round("Amount Including VAT" * "Qty. to Invoice" / Quantity, Currency."Amount Rounding Precision");
                    end;
                    FormattedLinePrice:=Format(LinePrice, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::UnitAmountFormat, CurrencyCode));
                    FormattedLineAmount:=Format(LineAmount, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::AmountFormat, CurrencyCode));
                    FormattedVATAmount:=Format(VATAmount, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::AmountFormat, CurrencyCode));
                end;
                trigger OnPreDataItem()
                begin
                    TotalWeight:=0;
                    TotalAmount:=0;
                    TotalVATAmount:=0;
                    TotalAmountInclVAT:=0;
                    //SetRange(Type, Type::Item);
                    OnAfterLineOnPreDataItem(Header, Line);
                end;
                trigger onPostDataItem()
                var
                    GLsetup1: Record "General Ledger Setup";
                begin
                    GLsetup1.Get();
                    if Header."Currency Code" = 'USD' then begin
                        TotalamountACYLbl:='Total Amount AED';
                        TotalAmountACY:=round(TotalAmountInclVAT * GLsetup1."USD Conversion Factor", 2);
                    //Message(TotalamountACYLbl);
                    //Message('Total Amount AED %1', TotalAmountACY)
                    end
                    else
                    begin
                        TotalamountACYLbl:='Total Amount USD';
                        TotalAmountACY:=round(TotalAmountInclVAT / GLsetup1."USD Conversion Factor", 2);
                    //Message(TotalamountACYLbl);
                    //Message('Total Amount USD %1', TotalAmountACY)
                    end;
                end;
            }
            dataitem(WorkDescriptionLines; "Integer")
            {
                DataItemTableView = SORTING(Number)WHERE(Number=FILTER(1..99999));

                column(WorkDescriptionLineNumber; Number)
                {
                }
                column(WorkDescriptionLine; WorkDescriptionLine)
                {
                }
                trigger OnAfterGetRecord()
                var
                    TypeHelper: Codeunit "Type Helper";
                begin
                    if WorkDescriptionInStream.EOS()then CurrReport.Break();
                    WorkDescriptionLine:=TypeHelper.ReadAsTextWithSeparator(WorkDescriptionInStream, TypeHelper.LFSeparator());
                end;
                trigger OnPostDataItem()
                begin
                    Clear(WorkDescriptionInStream)end;
                trigger OnPreDataItem()
                begin
                    if not ShowWorkDescription then CurrReport.Break();
                    Header."Work Description".CreateInStream(WorkDescriptionInStream, TextEncoding::UTF8);
                end;
            }
            dataitem(Totals; "Integer")
            {
                MaxIteration = 1;

                column(TotalWeight; TotalWeight)
                {
                }
                column(TotalValue; FormattedTotalAmount)
                {
                }
                column(TotalVATAmount; FormattedTotalVATAmount)
                {
                }
                column(TotalAmountInclVAT; FormattedTotalAmountInclVAT)
                {
                }
                column(TotalAmountACYLbl; TotalamountACYLbl)
                {
                }
                column(TotalAmountACY; TotalAmountACY)
                {
                }
                trigger OnPostDataItem()
                var
                    AutoFormatType: Enum "Auto Format";
                    GLsetup1: Record "General Ledger Setup";
                begin
                end;
                trigger OnPreDataItem()
                var
                    AutoFormatType: Enum "Auto Format";
                    GLsetup1: Record "General Ledger Setup";
                begin
                    FormattedTotalAmount:=Format(TotalAmount, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::AmountFormat, CurrencyCode));
                    FormattedTotalVATAmount:=Format(TotalVATAmount, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::AmountFormat, CurrencyCode));
                    FormattedTotalAmountInclVAT:=Format(TotalAmountInclVAT, 0, AutoFormat.ResolveAutoFormat(AutoFormatType::AmountFormat, CurrencyCode));
                end;
            }
            trigger OnAfterGetRecord()
            begin
                CurrReport.Language:=Language.GetLanguageIdOrDefault("Language Code");
                FormatDocumentFields(Header);
                if SellToContact.Get("Sell-to Contact No.")then;
                if BillToContact.Get("Bill-to Contact No.")then;
                TotalAmountACY1:=TotalAmountACY;
                TotalamountACYLbl1:=TotalamountACYLbl;
                CalcFields("Work Description");
                ShowWorkDescription:="Work Description".HasValue();
            end;
        }
    }
    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';

                    //pra
                    label(AddBankDetails)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = '.....................................................................................................';
                    }
                    field(BankAccNo; BankAccNo)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Select Bank Account';
                        TableRelation = "Bank Account"."No.";
                    }
                    field(BankAccNo1; BankAccNo1)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Select Bank Account2';
                        TableRelation = "Bank Account"."No.";
                    }
                    field(TextVal001; TextVal001)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'COLOMBO Inside Port';
                    }
                    field(TextVal002; TextVal002)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Triconamale Anchorage';
                    }
                    field(TextVal003; TextVal003)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'COLOMBO OPL';
                    }
                }
            }
        }
    }
    labels
    {
    }
    trigger OnInitReport()
    begin
        CompanyInformation.Get();
        CompanyInformation.CalcFields(Picture);
        companyInformation.CalcFields(ReportPicture);
    end;
    trigger OnPreReport()
    begin
        GLsetup3.get();
        //pra
        companyInfor.get();
        companyInfor.CalcFields(ReportPicture);
        clear(BankAccName);
        clear(BankAccNum);
        clear(Bankbranch);
        clear(BankSwiftCode);
        clear(Bankiban);
        clear(companyname);
        clear(BankAccRec);
        clear(BankAddress2);
        clear(BankAddress);
        clear(BankCity);
        clear(Bankcountry);
        clear(BankAccName1);
        clear(BankAccNum1);
        clear(Bankbranch1);
        clear(BankSwiftCode1);
        clear(Bankiban1);
        clear(BankAccRec1);
        clear(BankAddress21);
        clear(BankAddress1);
        clear(BankCity1);
        clear(Bankcountry1);
        if BankAccRec.get(BankAccNo)then begin
            BankAccNum:=BankAccRec."Bank Account No.";
            BankAccName:=BankAccRec.Name;
            Bankbranch:=BankAccRec."Bank Branch No.";
            BankSwiftCode:=BankAccRec."SWIFT Code";
            Bankiban:=BankAccRec.IBAN;
            BankAddress:=BankAccRec.Address;
            BankAddress2:=BankAccRec."Address 2";
            BankCity:=BankAccRec.City;
            Bankcountry:=BankAccRec."Country/Region Code";
        end
        ELSE
        BEGIN
            BankAccNum:=CompanyInfor."Bank Account No.";
            BankAccName:=CompanyInfor."Bank Name";
            Bankbranch:=CompanyInfor."Bank Branch No.";
            BankSwiftCode:=CompanyInfor."SWIFT Code";
        END;
        if BankAccRec1.get(BankAccNo1)then begin
            BankAccNum1:=BankAccRec1."Bank Account No.";
            BankAccName1:=BankAccRec1.Name;
            Bankbranch1:=BankAccRec1."Bank Branch No.";
            BankSwiftCode1:=BankAccRec1."SWIFT Code";
            Bankiban1:=BankAccRec1.IBAN;
            BankAddress1:=BankAccRec1.Address;
            BankAddress21:=BankAccRec1."Address 2";
            BankCity1:=BankAccRec1.City;
            Bankcountry1:=BankAccRec1."Country/Region Code";
        end
        ELSE
        BEGIN
            BankAccNum1:=CompanyInfor."Bank Account No.";
            BankAccName1:=CompanyInfor."Bank Name";
            Bankbranch1:=CompanyInfor."Bank Branch No.";
            BankSwiftCode1:=CompanyInfor."SWIFT Code";
        END;
    end;
    var //pra
    Text001: Label 'COLOMBO Inside Port';
    Text002: Label 'Triconamale Anchorage';
    Text003: Label 'COLOMBO OPL';
    TextVal001: text[50];
    TextVal002: text[50];
    TextVal003: text[50];
    BankAccNo: Code[40];
    BankAccName: text[100];
    BankAccNum: code[40];
    Bankbranch: text[50];
    BankSwiftCode: code[40];
    Bankiban: code[40];
    BankAddress: text[100];
    BankAddress2: text[100];
    BankCity: text[50];
    Bankcountry: code[20];
    companyname: code[120];
    BankAccRec: Record "Bank Account";
    //2ND BANK
    BankAccNo1: Code[40];
    BankAccName1: text[100];
    BankAccNum1: code[40];
    Bankbranch1: text[50];
    BankSwiftCode1: code[40];
    Bankiban1: code[40];
    BankAddress1: text[100];
    BankAddress21: text[100];
    BankCity1: text[50];
    Bankcountry1: code[20];
    BankAccRec1: Record "Bank Account";
    companyInfor: Record "Company Information";
    //pra
    DummyVATAmountLine: Record "VAT Amount Line";
    TotalAmountACY: Decimal;
    TotalamountACYLbl: text;
    TotalAmountACY1: Decimal;
    TotalamountACYLbl1: text;
    DummyShipmentMethod: Record "Shipment Method";
    DummyCurrency: Record Currency;
    AutoFormat: Codeunit "Auto Format";
    Language: Codeunit Language;
    CountryOfManufactuctureLbl: Label 'Country';
    TotalWeightLbl: Label 'Total Weight';
    SalespersonPurchaserName: Text;
    ShipmentMethodDescription: Text;
    DocumentTitleLbl: Label 'Pro Forma Invoice';
    PageLbl: Label 'Page';
    DeclartionLbl: Label 'For customs purposes only.';
    SignatureLbl: Label 'For and on behalf of the above named company:';
    SignatureNameLbl: Label 'Name (in print) Signature';
    SignaturePositionLbl: Label 'Position in company';
    SellToContactPhoneNoLbl: Label 'Sell-to Contact Phone No.';
    SellToContactMobilePhoneNoLbl: Label 'Sell-to Contact Mobile Phone No.';
    SellToContactEmailLbl: Label 'Sell-to Contact E-Mail';
    BillToContactPhoneNoLbl: Label 'Bill-to Contact Phone No.';
    BillToContactMobilePhoneNoLbl: Label 'Bill-to Contact Mobile Phone No.';
    BillToContactEmailLbl: Label 'Bill-to Contact E-Mail';
    protected var CompanyInformation: Record "Company Information";
    Item: Record Item;
    Currency: Record Currency;
    SellToContact: Record Contact;
    BillToContact: Record Contact;
    CompanyAddress: array[8]of Text[100];
    CustomerAddress: array[8]of Text[100];
    WorkDescriptionInStream: InStream;
    SalesPersonLblText: Text[50];
    TotalAmountLbl: Text[50];
    TotalAmountInclVATLbl: Text[50];
    FormattedLinePrice: Text;
    FormattedLineAmount: Text;
    FormattedVATAmount: Text;
    FormattedTotalAmount: Text;
    FormattedTotalVATAmount: Text;
    FormattedTotalAmountInclVAT: Text;
    WorkDescriptionLine: Text;
    CurrencyCode: Code[10];
    TotalWeight: Decimal;
    TotalAmount: Decimal;
    TotalVATAmount: Decimal;
    TotalAmountInclVAT: Decimal;
    LinePrice: Decimal;
    LineAmount: Decimal;
    VATAmount: Decimal;
    ShowWorkDescription: Boolean;
    GLsetup3: Record "General Ledger Setup";
    local procedure FormatDocumentFields(SalesHeader: Record "Sales Header")
    var
        GeneralLedgerSetup: Record "General Ledger Setup";
        SalespersonPurchaser: Record "Salesperson/Purchaser";
        ShipmentMethod: Record "Shipment Method";
        ResponsibilityCenter: Record "Responsibility Center";
        Customer: Record Customer;
        FormatDocument: Codeunit "Format Document";
        FormatAddress: Codeunit "Format Address";
        TotalAmounExclVATLbl: Text[50];
    begin
        with SalesHeader do begin
            Customer.Get("Sell-to Customer No.");
            FormatDocument.SetSalesPerson(SalespersonPurchaser, "Salesperson Code", SalesPersonLblText);
            SalespersonPurchaserName:=SalespersonPurchaser.Name;
            FormatDocument.SetShipmentMethod(ShipmentMethod, "Shipment Method Code", "Language Code");
            ShipmentMethodDescription:=ShipmentMethod.Description;
            FormatAddress.GetCompanyAddr("Responsibility Center", ResponsibilityCenter, CompanyInformation, CompanyAddress);
            FormatAddress.SalesHeaderBillTo(CustomerAddress, SalesHeader);
            if "Currency Code" = '' then begin
                GeneralLedgerSetup.Get();
                GeneralLedgerSetup.TestField("LCY Code");
                CurrencyCode:=GeneralLedgerSetup."LCY Code";
                Currency.InitRoundingPrecision();
            end
            else
            begin
                CurrencyCode:="Currency Code";
                Currency.Get("Currency Code");
            end;
            FormatDocument.SetTotalLabels("Currency Code", TotalAmountLbl, TotalAmountInclVATLbl, TotalAmounExclVATLbl);
        end;
    end;
    local procedure DocumentCaption(): Text var
        DocCaption: Text;
    begin
        OnBeforeGetDocumentCaption(Header, DocCaption);
        if DocCaption <> '' then exit(DocCaption);
        exit(DocumentTitleLbl);
    end;
    local procedure GetItemForRec(ItemNo: Code[20])
    var
        IsHandled: Boolean;
    begin
        IsHandled:=false;
        OnBeforeGetItemForRec(ItemNo, IsHandled);
        if IsHandled then exit;
        IF Item.Get(ItemNo)THEN;
    end;
    [IntegrationEvent(false, false)]
    local procedure OnAfterLineOnPreDataItem(var SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line")
    begin
    end;
    [IntegrationEvent(false, false)]
    local procedure OnBeforeGetDocumentCaption(SalesHeader: Record "Sales Header"; var DocCaption: Text)
    begin
    end;
    [IntegrationEvent(true, false)]
    local procedure OnBeforeGetItemForRec(ItemNo: Code[20]; var IsHandled: Boolean)
    begin
    end;
    [IntegrationEvent(false, false)]
    local procedure OnBeforeLineOnAfterGetRecord(SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line")
    begin
    end;
}
