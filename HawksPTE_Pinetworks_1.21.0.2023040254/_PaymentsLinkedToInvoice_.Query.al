query 50151 "PaymentsLinkedToInvoice"
{
    APIGroup = 'PIN';
    APIPublisher = 'Pinetworks';
    APIVersion = 'v1.0';
    EntityName = 'PaymentsLinkedToInvoice';
    EntitySetName = 'PaymentsLinkedToInvoiceList';
    QueryType = API;

    elements
    {
    dataitem(CustLedgerEntry;
    "Cust. Ledger Entry")
    {
    DataItemTableFilter = "Document Type"=filter(Invoice), "Posting Date"=filter('11/01/2020..');

    column(CustomerNo;
    "Customer No.")
    {
    }
    column(DocumentNo;
    "Document No.")
    {
    }
    column(DocumentType;
    "Document Type")
    {
    }
    column(CurrencyCode;
    "Currency Code")
    {
    }
    column(TransactionNo;
    "Transaction No.")
    {
    }
    column(EntryNo;
    "Entry No.")
    {
    }
    column(Amount;
    Amount)
    {
    }
    column(Open;
    Open)
    {
    }
    column(Reversed;
    Reversed)
    {
    }
    column(PostingDate;
    "Posting Date")
    {
    }
    column(AmountLCY;
    "Amount (LCY)")
    {
    }
    column(DocumentDate;
    "Document Date")
    {
    }
    column(DueDate;
    "Due Date")
    {
    }
    column(ExternalDocumentNo;
    "External Document No.")
    {
    }
    column(ProfitLCY;
    "Profit (LCY)")
    {
    }
    column(RemainingAmount;
    "Remaining Amount")
    {
    }
    column(RemainingAmtLCY;
    "Remaining Amt. (LCY)")
    {
    }
    dataitem(Customer;
    Customer)
    {
    DataItemLink = "No."=CustLedgerEntry."Customer No.";
    SqlJoinType = LeftOuterJoin;

    column(CustomerName;
    Name)
    {
    }
    dataitem(Detailed_Cust__Ledg__Entry;
    "Detailed Cust. Ledg. Entry")
    {
    DataItemLink = "Cust. Ledger Entry No."=CustLedgerEntry."Entry No.";
    DataItemTableFilter = "Document Type"=FILTER(Payment);
    SqlJoinType = LeftOuterJoin;

    column(DcleAmount;
    Amount)
    {
    }
    column(DcleAmountLCY;
    "Amount (LCY)")
    {
    }
    column(DcleCurrencyCode;
    "Currency Code")
    {
    }
    column(DcleDocumentNo;
    "Document No.")
    {
    }
    column(DcleDocumentType;
    "Document Type")
    {
    }
    column(DcleEntryNo;
    "Entry No.")
    {
    }
    column(DclePostingDate;
    "Posting Date")
    {
    }
    column(DcleSourceCode;
    "Source Code")
    {
    }
    column(DcleTransactionNo;
    "Transaction No.")
    {
    }
    }
    }
    }
    }
    trigger OnBeforeOpen()
    begin
    end;
}
