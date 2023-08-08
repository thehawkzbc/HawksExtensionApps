codeunit 50154 "PINPTE Upd. Cust. Credit Limit"
{
    trigger OnRun()
    var
        CustomerRec: Record Customer;
    begin
        CustomerRec.SetLoadFields("No.", "Credit Limit (LCY)", "HKS Approved Limit", "HKS Temp Credit Limit", "HKS Temp Credit Limit Date");
        if CustomerRec.FindSet()then repeat UpdateCustomerLimit(CustomerRec);
            until CustomerRec.Next() = 0;
    end;
    procedure UpdateCustomerLimit(var CustomerRec: Record Customer)
    var
        newlimit: Decimal;
    begin
        if(CustomerRec."HKS Temp Credit Limit Date" > Today) and (CustomerRec."HKS Temp Credit Limit" <> 0)then newlimit:=CustomerRec."HKS Approved Limit" + CustomerRec."HKS Temp Credit Limit"
        else
            newlimit:=CustomerRec."HKS Approved Limit";
        if newlimit <> CustomerRec."Credit Limit (LCY)" then begin
            CustomerRec."Credit Limit (LCY)":=newlimit;
            CustomerRec.Modify()end;
    end;
    procedure CustomerLimitMigration()
    var
        CustomerRec: Record Customer;
    begin
        if not Confirm('Migrate All Customer Limits to new Approved Limit Field?', false)then exit;
        CustomerRec.SetLoadFields("No.", "Credit Limit (LCY)", "HKS Approved Limit");
        if CustomerRec.FindSet()then repeat if CustomerRec."Credit Limit (LCY)" <> 0 then begin
                    CustomerRec."HKS Approved Limit":=CustomerRec."Credit Limit (LCY)";
                    CustomerRec.Modify();
                end until CustomerRec.Next() = 0;
    end;
}
