report 50267 "Customer Payment Details"
{
    ApplicationArea = All;
    Caption = 'Customer Payment Details';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(CustLedgerEntry; "Cust. Ledger Entry")
        {
            column(CustomerNo; "Customer No.")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            column(DocumentType; "Document Type")
            {
            }
            column(DocumentNo; "Document No.")
            {
            }
            column(Description; Description)
            {
            }
            column(CustomerName; "Customer Name")
            {
            }
            column(Amount; Amount)
            {
            }
            column(RemainingAmount; "Remaining Amount")
            {
            }
            dataitem(Detailed_Cust_Ledg_Entry; "Detailed Cust. Ledg. Entry")
            {
                column(Document_No_; "Document No.")
                {
                }
                column(Amount1; Amount)
                {
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
