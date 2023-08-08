report 50266 "Bunker nomination"
{
    ApplicationArea = All;
    Caption = 'Bunker Nomination';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Bunker Nomination.rdl';

    dataset
    {
        dataitem(PurchCommentLine; "Purch. Comment Line")
        {
            DataItemTableView = SORTING("Document Type", "No.")WHERE("Document Type"=CONST(Order));
            RequestFilterFields = "Document Type", "No.";
            RequestFilterHeading = 'Purchase Order';

            column(CompanyLogo; CompanyInfo.Picture)
            {
            }
            column(CompanyName; CompanyInfo.Name)
            {
            }
            column(CompanyName2; CompanyInfo."Name 2")
            {
            }
            column(Address; CompanyInfo.Address)
            {
            }
            column(Address2; CompanyInfo."Address 2")
            {
            }
            column(City; CompanyInfo.City)
            {
            }
            column(PostCode; CompanyInfo."Post Code")
            {
            }
            column(Country_RegionCode; CompanyInfo."Country/Region Code")
            {
            }
            column(ContactPerson; CompanyInfo."Contact Person")
            {
            }
            column(PhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(VATRegistrationNo; CompanyInfo."VAT Registration No.")
            {
            }
            column(CompanyHomePage; CompanyInfo."Home Page")
            {
            }
            column(CompanyEMail; CompanyInfo."E-Mail")
            {
            }
            column(Posting_Date; purchaseHeader."Posting Date")
            {
            }
            column(Buy_from_Vendor_Name; purchaseHeader."Buy-from Vendor Name")
            {
            }
            column(Buy_from_Vendor_Name_2; purchaseHeader."Buy-from Vendor Name 2")
            {
            }
            column(Buy_from_Address; purchaseHeader."Buy-from Address")
            {
            }
            column(Buy_from_Address_2; purchaseHeader."Buy-from Address 2")
            {
            }
            column(Buy_from_City; purchaseHeader."Buy-from City")
            {
            }
            column(Buy_from_Contact; purchaseHeader."Buy-from Contact")
            {
            }
            column(Buy_from_Contact_No_; purchaseHeader."Buy-from Contact No.")
            {
            }
            column(Buy_from_Country_Region_Code; purchaseHeader."Buy-from Country/Region Code")
            {
            }
            column(Buy_from_Post_Code; purchaseHeader."Buy-from Post Code")
            {
            }
            column(Payment_Terms_Code; purchaseHeader."Payment Terms Code")
            {
            }
            column(DateCptnlbl; DateCptnlbl)
            {
            }
            column(VesselCptnLbl; VesselCptnLbl)
            {
            }
            column(Vessel_name; "Vessel name")
            {
            }
            column(IMONumberCptnlbl; IMONumberCptnlbl)
            {
            }
            column(IMO_Number; "IMO Number")
            {
            }
            column(ETACptnlbl; ETACptnlbl)
            {
            }
            column(ETA; ETA)
            {
            }
            column(Agentnamecptnlbl; Agentnamecptnlbl)
            {
            }
            column(Agent_name; "Agent name")
            {
            }
            column(ProductnameCaptnlbl; ProductnameCaptnlbl)
            {
            }
            column(Product_name; "Product name")
            {
            }
            column(PortofsupplyCptnlbl; PortofsupplyCptnlbl)
            {
            }
            column(Port_of_supply; "Port of supply")
            {
            }
            column(GradeCptnlbl; GradeCptnlbl)
            {
            }
            column(Grade; Grade)
            {
            }
            column(QuantityCaptn; QuantityCaptn)
            {
            }
            column(QuantityCptnlbl; QuantityCptnlbl)
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(DateofsupplyCptnlbl; DateofsupplyCptnlbl)
            {
            }
            column(Date_of_supply; "Date of supply")
            {
            }
            column(BargefeeCptnLbl; BargefeeCptnLbl)
            {
            }
            column(Currency_Code; "Currency Code")
            {
            }
            column(CurrencyCptnlbl; CurrencyCptnlbl)
            {
            }
            column(Barge_fee__if_applicable_; "Barge fee (if applicable)")
            {
            }
            column(PriceCptnlbl; PriceCptnlbl)
            {
            }
            column(Price; Price)
            {
            }
            column(PaymenttermsCptnlbl; PaymenttermsCptnlbl)
            {
            }
            column(Text006; Text006)
            {
            }
            column(Title; Title)
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
            column(Text005; Text005)
            {
            }
            column(forAcoountCptn; forAcoountCptn)
            {
            }
            column(PageCaption; PageCaption)
            {
            }
            trigger OnAfterGetRecord()
            var
                SalesHeaderRec: Record "Sales Header";
            begin
                FormatAddr.Company(CompanyAddr, CompanyInfo);
                FormatAddr.PurchHeaderBuyFrom(VendAddr, purchaseHeader);
                if purchaseHeader.Get("Document Type", "No.")then;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    trigger OnPreReport()
    var
    begin
        CompanyInfo.get();
        CompanyInfo.CalcFields(Picture);
    end;
    var payterm: code[40];
    PurchaseLine: Record "Purchase Line";
    purchaseHeader: Record "Purchase Header";
    CompanyInfo: Record "Company Information";
    CompanyAddr: array[8]of Text[100];
    VendAddr: array[8]of Text[100];
    Text001: Label 'Fuel Oil to be in conformity with MARPOL 73/78, ANNEX VI regulations, particularly regulations 14 (1) and 18 (1), Appendix V and Resolution MEPC 96 (47) Guilelines for the sampling of Fuel Oil to be in compliance with ANNEX VI of MARPOL 73/78.';
    Text002: label 'Material Safety Data Sheet for each product to be supplied (according to ANNEX 1&2 of the SOLAS Regulations VI/5-1) must be provided by the physical supplier to the crew of the receiving vessel prior to delivery.';
    Text003: label 'Please note, we confirm our intention of reselling the products we purchase from you. It is mandatory for the Supplier to obtain duly filled, signed and stamped declaration of foreign trade along with the bunker delivery note to ensure completeness of appropriate documentation for compliance with the UAE VAT Law. Please send invoice, BDN and declaration of foreign trade no later than 14 days from date of supply to avoid administrative penalties imposed by the UAE VAT Law.';
    forAcoountCptn: Label 'For account of:';
    Text005: Label 'Please, find bunker nomination:';
    Text006: Label 'Thank you for your business!';
    VesselCptnLbl: Label 'Vessel name:';
    IMONumberCptnlbl: Label 'IMO Number:';
    ETACptnlbl: Label 'ETA:';
    Agentnamecptnlbl: Label 'Agent Name:';
    ProductnameCaptnlbl: Label 'Product name:';
    GradeCptnlbl: Label 'Grade:';
    QuantityCptnlbl: Label 'Quantity:';
    DateofsupplyCptnlbl: Label 'Date of supply:';
    PortofsupplyCptnlbl: Label 'Port of supply:';
    BargefeeCptnLbl: Label 'Barge fee:';
    PriceCptnlbl: Label 'Price:';
    PageCaption: Label 'Page';
    QuantityCaptn: Label 'Quantity';
    Quantity: Code[20];
    PaymenttermsCptnlbl: Label 'Payment terms:';
    Title: Label 'Bunker nomination';
    DateCptnlbl: Label 'Date:';
    //pra
    CurrencyCptnlbl: Label 'Currency Code';
    FormatAddr: Codeunit "Format Address";
}
