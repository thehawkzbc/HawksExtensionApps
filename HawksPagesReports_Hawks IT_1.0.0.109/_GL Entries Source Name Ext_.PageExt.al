pageextension 50021 "GL Entries Source Name Ext" extends "General Ledger Entries"
{
    layout
    {
        addafter("Source Code")
        {
            field("ZY Source Name"; SourceName)
            {
                Caption = 'Source Name';
                ApplicationArea = All;
            }
        }
    }
    var SourceName: Text[100];
    trigger OnAfterGetRecord()
    var
        Cust: Record Customer;
        Vend: Record Vendor;
        FA: Record "Fixed Asset";
        BankAccount: Record "Bank Account";
        Employee: Record Employee;
    begin
        SourceName:='';
        Case Rec."Source Type" of Rec."Source Type"::Customer: If Cust.GET(Rec."Source No.")then SourceName:=Cust.Name;
        Rec."Source Type"::Vendor: If Vend.GET(Rec."Source No.")then SourceName:=Vend.Name;
        Rec."Source Type"::"Fixed Asset": If FA.GET(Rec."Source No.")then SourceName:=FA.Description;
        Rec."Source Type"::"Bank Account": If BankAccount.GET(Rec."Source No.")then SourceName:=BankAccount.Name;
        Rec."Source Type"::Employee: If Employee.GET(Rec."Source No.")then SourceName:=Employee.FullName();
        end;
    end;
}
