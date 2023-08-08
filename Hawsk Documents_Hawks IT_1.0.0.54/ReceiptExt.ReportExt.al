reportextension 50164 ReceiptExt extends "Customer - Payment Receipt"
{
    RDLCLayout = './src/reportextensions/layouts/Receipt.rdl';

    dataset
    {
        add("Cust. Ledger Entry")
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
