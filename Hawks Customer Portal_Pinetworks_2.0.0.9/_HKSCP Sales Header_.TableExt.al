tableextension 50402 "HKSCP Sales Header" extends "Sales Header" // 36
{
    fields
    {
        field(50400; "HKSCP Your Reference"; Text[35])
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                "Your Reference":="HKSCP Your Reference";
            end;
        }
        field(50401; "HKSCP Transaction Type"; Code[10])
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                "Transaction Type":="HKSCP Transaction Type";
            end;
        }
    }
}
