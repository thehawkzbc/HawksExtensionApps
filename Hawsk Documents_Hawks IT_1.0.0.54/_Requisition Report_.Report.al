report 50053 "Requisition Report"
{
    ApplicationArea = All;
    Caption = 'Requisition Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Excel;
    ExcelLayout = 'requistion report.xlsx';

    dataset
    {
        dataitem(RequisitionLine; "Requisition Line")
        {
            RequestFilterFields = "Journal Batch Name", "No.", "Location Code", "Transfer-from Code";

            column(No; "No.")
            {
            }
            column(Description; Description)
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(VendorNo; "Vendor No.")
            {
            }
            column(RequesterID; "Requester ID")
            {
            }
            column(LocationCode; "Location Code")
            {
            }
            column(TransferfromCode; "Transfer-from Code")
            {
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
