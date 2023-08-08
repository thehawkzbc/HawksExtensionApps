reportextension 50162 SalesQuoteExtPR extends "Standard Sales - Quote"
{
    RDLCLayout = './src/reportextensions/layouts/StandardSalesQuote.rdl';

    dataset
    {
        add(Header)
        {
            column(companyInforHeadPic; companyInfor.ReportPicture)
            {
            }
            column(companyInforFootPic; companyInfor.FooterPicture)
            {
            }
        }
    }
    trigger OnPreReport()
    begin
        companyInfor.get();
        companyInfor.CalcFields(ReportPicture);
    end;
    var companyInfor: record "Company Information";
}
