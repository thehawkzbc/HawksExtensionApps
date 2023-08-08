reportextension 50161 PostedPurchInvExt extends "Purchase - Invoice"
{
    RDLCLayout = './src/reportextensions/layouts/PostedPurchInvExt.rdl';

    dataset
    {
        add("Purch. Inv. Header")
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
