report 50300 "VAT Entry Report1"
{
    ApplicationArea = All;
    Caption = 'Tax Statement Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Excel;
    ExcelLayout = 'VAT Report1.xlsx';

    dataset
    {
        dataitem(VATEntry; "VAT Entry")
        {
            RequestFilterFields = "Posting Date", "Document Type", "Document No.", "Type", "Bill-to/Pay-to No.";

            column(GenBusPostingGroup; "Gen. Bus. Posting Group")
            {
            }
            column(GenProdPostingGroup; "Gen. Prod. Posting Group")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            column(DocumentNo; "Document No.")
            {
            }
            column(DocumentType; "Document Type")
            {
            }
            column(Type; "Type")
            {
            }
            column(Base; Base)
            {
            }
            column(Amount; Amount)
            {
            }
            column(BilltoPaytoNo; "Bill-to/Pay-to No.")
            {
            }
            column(VAT_Registration_No_; "VAT Registration No.")
            {
            }
            column(External_Document_No_; "External Document No.")
            {
            }
            column(custvendname; custvendname)
            {
            }
            trigger OnAfterGetRecord()
            begin
                if "Type" = Type::"Sale" then begin
                    if cust.GET("Bill-to/Pay-to No.")then custvendname:=cust.Name;
                end
                else if "Type" = Type::"Purchase" then begin
                        if vend.GET("Bill-to/Pay-to No.")then custvendname:=vend.Name;
                    end;
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
    var custvendname: Text;
    cust: Record Customer;
    vend: Record Vendor;
}
