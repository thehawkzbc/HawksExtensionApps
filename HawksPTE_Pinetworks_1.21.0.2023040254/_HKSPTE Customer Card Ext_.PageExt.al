pageextension 50161 "HKSPTE Customer Card Ext" extends "Customer Card" // 21
{
    layout
    {
        addafter("VAT Registration No.")
        {
            field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Global Dimension 1 Code field.';
            }
        }
        addafter(Blocked)
        {
            field("Blocked Reason"; rec."Blocked Reason")
            {
                ApplicationArea = All;
                ToolTip = 'Blocked reason';
            }
            field("KYC Completed"; rec."KYC Completed")
            {
                ApplicationArea = All;
                ToolTip = 'Is KYC Completed';
            }
            field("Agreement Expiry Date"; rec."Agreement Expiry Date")
            {
                ApplicationArea = All;
                ToolTip = 'Agreement Expiry Date';
            }
        }
        addafter("Credit Limit (LCY)")
        {
            field("HKS Approved Limit"; Rec."HKS Approved Limit")
            {
                ApplicationArea = All;
                ToolTip = 'The approved credit limit';
            }
            field("HKS Temp Credit Limit"; Rec."HKS Temp Credit Limit")
            {
                ApplicationArea = All;
                ToolTip = 'Temporary Credit limit given';
            }
            field("HKS Temp Credit Limit Date"; Rec."HKS Temp Credit Limit Date")
            {
                ApplicationArea = All;
                ToolTip = 'Temporary credit limit valid to this date';
            }
        }
        modify("Credit Limit (LCY)")
        {
            Editable = false;

            trigger OnBeforeValidate()
            begin
                Error('You can''t change credit limit manually');
            end;
        }
    }
    actions
    {
        addafter("Bank Accounts")
        {
            action("PortalUsers")
            {
                ApplicationArea = All;
                Caption = 'Customer Portal Users';
                Image = Users;
                Promoted = true;
                PromotedCategory = Category8;
                RunObject = Page "HKS CP Users";
                RunPageLink = "Customer No."=field("No.");
                ToolTip = 'View or set up customer portal users for each customer.';
            }
        }
        addfirst("F&unctions")
        {
            action("UpdateCreditLimit")
            {
                ApplicationArea = All;
                Caption = 'Update Credit Limit';
                Ellipsis = true;
                Image = LimitedCredit;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;                
                ToolTip = 'Recalculate credit limit';

                trigger OnAction()
                var
                    UpdateCustomerCreditLimit: Codeunit "PINPTE Upd. Cust. Credit Limit";
                begin
                    UpdateCustomerCreditLimit.UpdateCustomerLimit(rec);
                //UpdateCustomerCreditLimit.CustomerLimitMigration();
                end;
            }
        }
    }
}
