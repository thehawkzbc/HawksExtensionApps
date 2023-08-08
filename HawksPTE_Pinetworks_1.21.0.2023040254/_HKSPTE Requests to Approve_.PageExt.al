pageextension 50163 "HKSPTE Requests to Approve" extends "Requests to Approve" //654
{
    layout
    {
        addafter("Amount (LCY)")
        {
            field("Available Credit Limit (LCY)"; Rec."Available Credit Limit (LCY)")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the remaining credit (in LCY) that exists for the customer.';
            }
            field("Limit Type"; Rec."Limit Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the type of limit that applies to the approval template:';
            }
        }
        addafter(Amount)
        {
            field("Pending Approvals"; Rec."Pending Approvals")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Pending Approvals field.';
            }
            field("Number of Approved Requests"; Rec."Number of Approved Requests")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Number of Approved Requests field.';
            }
            field("Number of Rejected Requests"; Rec."Number of Rejected Requests")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Number of Rejected Requests field.';
            }
        }
        addfirst(factboxes)
        {
            /*part(CustomerDetailsFactBox; "Customer Details FactBox")
            {
                ApplicationArea = Basic, Suite;
                Visible = FoundCustomer;
            }*/
            part(CustomerStatisticsFactBox; "Customer Statistics FactBox")
            {
                ApplicationArea = Basic, Suite;
                Visible = rec."PINPTE CustVendNo" <> '';
                SubPageLink = "No."=field("PINPTE CustVendNo");
            }
            part("Aged Acc. Receivable Chart"; "Aged Acc. Receivable Chart")
            {
                ApplicationArea = All;
                Visible = rec."PINPTE CustVendNo" <> '';
                SubPageLink = "No."=field("PINPTE CustVendNo");
            }
        }
        modify(CommentsFactBox)
        {
            Visible = true;
        }
    }
    trigger OnAfterGetCurrRecord()
    var
        //customerTemp: Record Customer;
        CustVendNo: Code[20];
        CustVendName: Text[100];
    begin
        if rec."Table ID" = Database::"Sales Header" then begin
            rec.GetCustVendorDetails(CustVendNo, CustVendName);
            if CustVendNo <> '' then begin
                rec."PINPTE CustVendNo":=CustVendNo;
                rec."PINPTE CustVendName":=CustVendName //rec.Modify();
            end end end;
}
