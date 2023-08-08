query 60200 "PINTAX GST Tax Statement1"
{
    QueryType = Normal;
    Caption = 'Tax Statement';
    DataAccessIntent = ReadOnly;
    OrderBy = Ascending(Posting_Date, Document_Date, Bill_to_Pay_to_No_);

    elements
    {
        dataitem(VAT_Entry; "VAT Entry")
        {
            DataItem(Vendor; Vendor)

            {
                DataItemLink = "No." = VAT_Entry."Bill-to/Pay-to No.";
                column(Name; Name)
                {

                }
            }


            column(PINTAX_Tax_Activity_Number1; "PINTAX Tax Activity Number1")
            {

            }
            column(Type; Type)
            {

            }
            column(Document_Type; "Document Type")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Document_Date; "Document Date")
            {

            }
            column(Bill_to_Pay_to_No_; "Bill-to/Pay-to No.")
            {

            }
            column(VAT_Registration_No_; "VAT Registration No.")
            {

            }
            column(Document_No_; "Document No.")
            {

            }
            column(External_Document_No_; "External Document No.")
            {

            }
            column(Base; Base)
            {

            }
            column(Amount; Amount)
            {

            }
            column(VAT_Bus__Posting_Group; "VAT Bus. Posting Group")
            {

            }
            column(VAT_Prod__Posting_Group; "VAT Prod. Posting Group")
            {

            }
            column(Closed; Closed)
            {

            }
            column(Reversed; Reversed)
            {

            }
            column(Force_Closed__removed; "PINTAX Force Closed1")
            {

            }
        }
    }
}


