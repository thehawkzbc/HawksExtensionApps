report 50250 "Capex Report"
{
    ApplicationArea = All;
    Caption = 'Capex Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Excel;
    ExcelLayout = 'CapexReport.xlsx';

    //DefaultLayout = Excel;
    dataset
    {
        dataitem(VATEntry; "VAT Entry")
        {
            column(Type; "Type")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            column(DocumentDate; "Document Date")
            {
            }
            column(DocumentNo; "Document No.")
            {
            }
            column(BilltoPaytoNo; "Bill-to/Pay-to No.")
            {
            }
            column(VATRegistrationNo; "VAT Registration No.")
            {
            }
            column(DocumentType; "Document Type")
            {
            }
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(Base; Base)
            {
            }
            column(Amount; Amount)
            {
            }
            column(VATBusPostingGroup; "VAT Bus. Posting Group")
            {
            }
            column(VATProdPostingGroup; "VAT Prod. Posting Group")
            {
            }
            dataitem(Vendor; Vendor)
            {
                //DataItemLink = "G/L Account No." = FIELD("No."), "Posting Date" = FIELD("Date Filter"), "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"), "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"), "Business Unit Code" = FIELD("Business Unit Filter");
                //    DataItemLinkReference = "G/L Account";
                //    DataItemTableView = SORTING("G/L Account No.", "Posting Date");
                DataItemLink = "No."=field("Bill-to/Pay-to No.");

                column(Name; Name)
                {
                Caption = 'Vendor Name';
                }
            }
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
}
