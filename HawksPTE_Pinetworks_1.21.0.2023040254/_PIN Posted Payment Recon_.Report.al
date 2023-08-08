report 50151 "PIN Posted Payment Recon"
{
    Caption = 'Posted Reconciliation Report';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = 'PostedRecon.docx';

    dataset
    {
        dataitem(PostedPaymentReconHdr; "Posted Payment Recon. Hdr")
        {
            RequestFilterFields = "Bank Account No.", "Statement No.";

            column(BankAccountNo; "Bank Account No.")
            {
            }
            column(StatementDate; "Statement Date")
            {
            }
            column(StatementEndingBalance; "Statement Ending Balance")
            {
            }
            column(StatementNo; "Statement No.")
            {
            }
            dataitem("PRL"; "Posted Payment Recon. Line")
            {
                DataItemLink = "Bank Account No."=field("Bank Account No."), "Statement No."=field("Statement No.");

                // DataItemTableView = sorting("Account Type", ) order (ascending)    
                column(AccountNo_PRL; "Account No.")
                {
                }
                column(AccountType_PRL; "Account Type")
                {
                }
                column(AppliedAmount_PRL; "Applied Amount")
                {
                }
                column(AppliedDocumentNo_PRL; "Applied Document No.")
                {
                }
                column(AppliedEntries_PRL; "Applied Entries")
                {
                }
                column(AppliedEntryNo_PRL; "Applied Entry No.")
                {
                }
                column(BankAccountNo_PRL; "Bank Account No.")
                {
                }
                column(CheckNo_PRL; "Check No.")
                {
                }
                column(Description_PRL; Description)
                {
                }
                column(Difference_PRL; Difference)
                {
                }
                column(DocumentNo_PRL; "Document No.")
                {
                }
                column(Reconciled_PRL; Reconciled)
                {
                }
                column(RelatedPartyName_PRL; "Related-Party Name")
                {
                }
                column(StatementAmount_PRL; "Statement Amount")
                {
                }
                column(StatementLineNo_PRL; "Statement Line No.")
                {
                }
                column(TransactionDate_PRL; TranDate) //  "Transaction Date")
                {
                }
                column(TransactionID_PRL; "Transaction ID")
                {
                }
                column(Type_PRL; Type)
                {
                }
                column(ValueDate_PRL; "Value Date")
                {
                }
                trigger OnAfterGetRecord()
                begin
                    if IgnoreBankLedger then if "Account Type" = "Account Type"::"Bank Account" then CurrReport.Skip();
                    TranDate:=Format("Transaction Date", 7)end;
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    Caption = 'Options';

                    field("Ignore Bank Ledger"; IgnoreBankLedger)
                    {
                        Caption = 'Ignore Bank Ledger';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the IgnoreBankLedger field.';
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    var IgnoreBankLedger: Boolean;
    TranDate: Text;
}
