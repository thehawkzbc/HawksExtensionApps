

query 60101 "PIN Bank Rec. MatchCandidates1"
{
    Caption = 'Bank Rec. Match Candidates';
    elements
    {
        dataitem(Bank_Acc__Reconciliation_Line; "Bank Acc. Reconciliation Line")
        {

            dataitem(Bank_Account_Ledger_Entry; "Bank Account Ledger Entry")
            {
                DataItemLink = "Bank Account No." = Bank_Acc__Reconciliation_Line."Account No.";
                column(Entry_No_; "Entry No.")
                {

                }
                column(Bank_Account_No_; "Bank Account No.")
                {

                }
                column(Posting_Date; "Posting Date")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Remaining_Amount; "Remaining Amount")
                {

                }
                column(Bank_ledger_entry_open; Open)
                {

                }
                column(Statement_Status; "Statement Status")
                {

                }
                column(External_Document_No_; "External Document No.")
                {

                }

            }
            column(Rec_link_bank_account_no; "Bank Account No.")
            {

            }
            column(rec_link_satement_no; "Statement No.")
            {

            }
            column(Rec_line_statement_line_no; "Statement Line No.")
            {

            }
            column(rec_line_transaction_date; "Transaction Date")
            {

            }
            column(rec_line_description; Description)
            {

            }
            column(reclinerltdyptyname; "Related-Party Name")
            {

            }
            column(reclinetransactioninfo; "Additional Transaction Info")
            {

            }
            column(reclinestatementammount; "Statement Amount")
            {

            }
            column(reclineappliedamount; "Applied Amount")
            {

            }
            column(reclinedifference; Difference)
            {

            }
            column(reclinetype; Type)
            {

            }
            column(reclineappliedentries; "Applied Entries")
            {

            }
            column(reclinetransactiontext; "Transaction Text")
            {

            }
            column(reclinesystemid; SystemId)
            {

            }
        }
    }
}