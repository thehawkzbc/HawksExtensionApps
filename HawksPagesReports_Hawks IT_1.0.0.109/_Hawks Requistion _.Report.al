report 50270 "Hawks Requistion "
{
    ApplicationArea = All;
    Caption = 'Hawks Requistion ';
    UsageCategory = Documents;
    DefaultLayout = RDLC;
    RDLCLayout = 'HawksRequistion.rdlc';

    dataset
    {
        dataitem(RequisitionLine; "Requisition Line")
        {
            RequestFilterFields = "Worksheet Template Name", "Journal Batch Name", "Location Code";

            column(No; "No.")
            {
            }
            column(Description; Description)
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(LocationCode; "Location Code")
            {
            }
            column(UnitofMeasureCode; "Unit of Measure Code")
            {
            }
            column(Replenishment_System; "Replenishment System")
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
