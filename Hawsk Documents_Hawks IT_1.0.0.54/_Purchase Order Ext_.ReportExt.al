reportextension 50160 "Purchase Order Ext" extends Order
{
    RDLCLayout = './src/reportextensions/layouts/OrderExt.rdl';

    dataset
    {
        add("Purchase Header")
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
