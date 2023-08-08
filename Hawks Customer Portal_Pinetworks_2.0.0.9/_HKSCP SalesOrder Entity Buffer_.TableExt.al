tableextension 50401 "HKSCP SalesOrder Entity Buffer" extends "Sales Order Entity Buffer"
{
    fields
    {
#pragma warning disable PTE0002 field(50400; "Your Reference"; Text[35])
        {
            Caption = 'Your Reference';
        }
        field(50401; "Transaction Type"; Code[10])
        {
            Caption = 'Transaction Type';
        }
    }
}
