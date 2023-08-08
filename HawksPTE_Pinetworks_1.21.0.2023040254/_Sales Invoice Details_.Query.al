query 50153 "Sales Invoice Details"
{
    QueryType = Normal;

    elements
    {
    dataitem(Sales_Invoice_Header;
    "Sales Invoice Header")
    {
    column(Document_Date_Header;
    "Document Date")
    {
    }
    column(No_Header;
    "No.")
    {
    }
    column(Bill_to_Customer_No_Header;
    "Bill-to Customer No.")
    {
    }
    column(Bill_to_Name_Header;
    "Bill-to Name")
    {
    }
    column(Amount_Header;
    Amount)
    {
    }
    column(AmountIncludingVAT_Header;
    "Amount Including VAT")
    {
    }
    column(Closed_Header;
    Closed)
    {
    }
    column(Cancelled_Header;
    Cancelled)
    {
    }
    column(CurrencyCode_Header;
    "Currency Code")
    {
    }
    column(DueDate_Header;
    "Due Date")
    {
    }
    column(ExternalDocumentNo_Header;
    "External Document No.")
    {
    }
    column(PostingDate_Header;
    "Posting Date")
    {
    }
    column(YourReference_Header;
    "Your Reference")
    {
    }
    column(VATRegistrationNo_Header;
    "VAT Registration No.")
    {
    }
    dataitem(Sales_Invoice_Line;
    "Sales Invoice Line")
    {
    DataItemLink = "Document No."=Sales_Invoice_Header."No.";

    column(ItemNo_Sales_Invoice_Line;
    "No.")
    {
    }
    column(Description_Sales_Invoice_Line;
    Description)
    {
    }
    column(Amount_Sales_Invoice_Line;
    Amount)
    {
    }
    column(LineAmount_Sales_Invoice_Line;
    "Line Amount")
    {
    }
    column(LineNo_Sales_Invoice_Line;
    "Line No.")
    {
    }
    column(TransactionType_Sales_Invoice_Line;
    "Transaction Type")
    {
    }
    column(UnitCost_Sales_Invoice_Line;
    "Unit Cost")
    {
    }
    column(UnitofMeasureCode_Sales_Invoice_Line;
    "Unit of Measure Code")
    {
    }
    column(Quantity_Sales_Invoice_Line;
    Quantity)
    {
    }
    }
    }
    }
}
