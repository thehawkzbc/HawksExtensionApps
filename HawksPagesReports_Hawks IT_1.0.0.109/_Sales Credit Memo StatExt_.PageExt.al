pageextension 50090 "Sales Credit Memo StatExt" extends "Sales Credit Memo Statistics"
{
    layout
    {
        modify(ProfitLCY)
        {
            Visible = false;
        }
        modify(AdjProfitPct)
        {
            Visible = false;
        }
        modify(ProfitPct)
        {
            Visible = false;
        }
    }
}
