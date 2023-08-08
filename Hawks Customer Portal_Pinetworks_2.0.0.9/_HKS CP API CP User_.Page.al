page 50400 "HKS CP API CP User"
{
    PageType = API;
    APIGroup = 'CP';
    APIPublisher = 'Pinetworks';
    APIVersion = 'v1.0';
    Caption = 'HKS CP User';
    DelayedInsert = true;
    EntityName = 'customerPortalUser';
    EntitySetName = 'customerPortalUsers';
    SourceTable = Customer;
    Editable = true;
    InsertAllowed = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; Rec.SystemId)
                {
                    Editable = false;
                }
                field("customerNumber"; Rec."No.")
                {
                    Editable = false;
                }
                field(name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(phoneNo; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field(eMail; Rec."E-Mail")
                {
                    ApplicationArea = All;
                }
                field(cpPassword; Rec."CP Password")
                {
                    ApplicationArea = All;
                }
                field(customerType; Rec."Customer Type")
                {
                    ApplicationArea = All;
                }
                field(identificationNo; Rec."Identification No")
                {
                    ApplicationArea = All;
                }
                field(creditLimitLCY; Rec."Credit Limit (LCY)")
                {
                    Editable = false;
                }
                field(balance; Rec."Balance (LCY)")
                {
                    Caption = 'Balance';
                    Editable = false;
                }
                field(totalSalesExcludingTax; Rec."Sales (LCY)")
                {
                    Caption = 'Total Sales Excluding Tax';
                    Editable = false;
                }
                field(overdueAmount; Rec."Balance Due (LCY)")
                {
                    Caption = 'Overdue Amount';
                }
                field(overdueAmount1; BalanceDue())
                {
                    Caption = 'Overdue Amount1';
                    Editable = false;
                }
                field(CurrencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                    Editable = false;
                }
                field(date_filter; Rec."Date Filter")
                {
                    Caption = 'Date Filter';
                    Editable = false;
                }
                field(cpStatus; Rec."CP Status")
                {
                    Caption = 'CP Status';
                    Editable = true;
                }
                field(contact_name; Rec."Contact Name")
                {
                    Caption = 'CP Contact Name';
                    Editable = true;
                }
                field(approvedLimit; Rec."HKS Approved Limit")
                {
                    Editable = false;
                }
                field(tempCreditLimit; Rec."HKS Temp Credit Limit")
                {
                    Editable = true;
                }
                field("tempCreditLimitDate"; Rec."HKS Temp Credit Limit Date")
                {
                    Editable = true;
                }
            }
        }
    }
    procedure BalanceDue(): Decimal var
        Customer: Record Customer;
        BalanceDueLcy: Decimal;
        expr: Text[40];
    begin
        Clear(BalanceDueLcy);
        Customer.Reset();
        Customer.SetRange("Date Filter", Today, Today);
        expr:='<Year4><Month,2><Day,2><Closing>D';
        if Customer.FindSet()then Customer.CalcFields("Balance (LCY)");
        BalanceDueLcy:=Customer."Balance (LCY)";
        exit(BalanceDueLcy);
    end;
}
