report 50264 "Order Confirmation Report1"
{
    ApplicationArea = All;
    Caption = 'Order Confirmation Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Order Confirmation Report1.rdl';

    dataset
    {
        dataitem(SalesCommentLine; "Sales Comment Line")
        {
            RequestFilterFields = "Document Type", "No.";
            RequestFilterHeading = 'Sales Order';

            column(CompanyLogo; CompanyInfo.Picture)
            {
            }
            column(CompanyHeaderpic; CompanyInfo.ReportPicture)
            {
            }
            column(Companyfootpic; CompanyInfo.FooterPicture)
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
            column(Sell_to_Contact; SalesHeader."Sell-to Contact")
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
            column(Posting_Date; SalesHeader."Posting Date")
            {
            }
            column(Sell_to_Customer_Name; SalesHeader."Sell-to Customer Name")
            {
            }
            column(Sell_to_Customer_Name_2; SalesHeader."Sell-to Customer Name 2")
            {
            }
            column(Sell_to_Address; SalesHeader."Sell-to Address")
            {
            }
            column(Sell_to_Address_2; SalesHeader."Sell-to Address 2")
            {
            }
            column(Sell_to_City; SalesHeader."Sell-to City")
            {
            }
            column(Sell_to_Country_Region_Code; SalesHeader."Sell-to Country/Region Code")
            {
            }
            column(Sell_to_Post_Code; SalesHeader."Sell-to Post Code")
            {
            }
            column(Payment_Terms_Code; SalesHeader."Payment Terms Code")
            {
            }
            column(VesselCptnLbl; VesselCptnLbl)
            {
            }
            column(DateCptnlbl; DateCptnlbl)
            {
            }
            column(PortofsupplyCptnlbl; PortofsupplyCptnlbl)
            {
            }
            column(IMONumberCptnlbl; IMONumberCptnlbl)
            {
            }
            column(ETACptnlbl; ETACptnlbl)
            {
            }
            column(UnitPrice; SalesLine."Unit Price")
            {
            }
            column(Agentnamecptnlbl; Agentnamecptnlbl)
            {
            }
            column(ProductnameCaptnlbl; ProductnameCaptnlbl)
            {
            }
            column(GradeCptnlbl; GradeCptnlbl)
            {
            }
            column(QuantityCptnlbl; QuantityCptnlbl)
            {
            }
            column(DateofsupplyCptnlbl; DateofsupplyCptnlbl)
            {
            }
            column(BargefeeCptnLbl; BargefeeCptnLbl)
            {
            }
            column(PriceCptnlbl; PriceCptnlbl)
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
            column(Vessel_name; "Vessel name")
            {
            }
            column(IMO_Number; "IMO Number")
            {
            }
            column(ETA; ETA)
            {
            }
            column(Agent_name; "Agent name")
            {
            }
            column(Product_name; "Product name")
            {
            }
            column(Grade; Grade)
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(Date_of_supply; "Date of supply")
            {
            }
            column(Port_of_supply; "Port of supply")
            {
            }
            column(Barge_fee_if_applicable_; "Barge fee(if applicable)")
            {
            }
            column(Price; Price)
            {
            }
            column(PageCaption; PageCaption)
            {
            }
            trigger OnAfterGetRecord()
            var
                SalesHeaderRec: Record "Sales Header";
            begin
                // FormatAddr.GetCompanyAddr("Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
                // FormatAddr.SalesHeaderBillTo(CustAddr, Header);
                // ShowShippingAddr := FormatAddr.SalesHeaderShipTo(ShipToAddr, CustAddr, Header);
                if SalesHeader.Get("Document Type", "No.")Then;
                FormatAddr.Company(CompanyAddr, CompanyInfo);
                FormatAddr.SalesHeaderSellTo(CustAddr, SalesHeader);
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
        CompanyInfo.CalcFields(ReportPicture);
    end;
    var SalesHeader: Record "Sales Header";
    SalesLine: Record "Sales Line";
    CompanyInfo: Record "Company Information";
    CompanyAddr: array[8]of Text[100];
    CustAddr: array[8]of Text[100];
    Text001: Label 'Payment via bank transfer to Mafhaa Oil & Gas Fze, in case of any discrepancies should be reported to uaeoffice@thehawks.biz within 5 days.';
    Text002: label 'Late payment charges of 3% per month shall be applicable.Bank fees are on a clients account.';
    Text003: label 'Supplier will be not liable for damages or otherwise for any failure or delay in performance of any obligation hereunder, where such failure or delay is caused by force majeure.';
    forAcoountCptn: Label 'For account of:';
    Text005: Label 'Please, find new order confirmation:';
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
    BargefeeCptnLbl: Label 'Barge fee (if applicable):';
    PriceCptnlbl: Label 'Price:';
    PageCaption: Label 'Page';
    PaymenttermsCptnlbl: Label 'Payment terms:';
    Title: Label 'Order Confirmation';
    DateCptnlbl: Label 'Date:';
    FormatAddr: Codeunit "Format Address";
}
