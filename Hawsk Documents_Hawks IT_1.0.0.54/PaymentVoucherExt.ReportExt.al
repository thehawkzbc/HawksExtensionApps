reportextension 50163 PaymentVoucherExt extends "PIN Vendor - Payment Receipt"
{
    RDLCLayout = './src/reportextensions/layouts/PaymentVoucher.rdl';

    dataset
    {
        add("Vendor Ledger Entry")
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
