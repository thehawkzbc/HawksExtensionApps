reportextension 50151 "HKSPTE Aged Accounts Receivab" extends "Aged Accounts Receivable" // 120
{
    dataset
    {
        add(Customer)
        {
            column(HKS_Credit_Limit__LCY_; "Credit Limit (LCY)")
            {
            }
            column(HKS_Salesperson_Code; "Salesperson Code")
            {
            }
            column(HKS_Payment_Terms_Code; "Payment Terms Code")
            {
            }
        }
    }
}
