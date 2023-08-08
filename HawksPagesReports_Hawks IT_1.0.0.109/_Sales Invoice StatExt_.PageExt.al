pageextension 50089 "Sales Invoice StatExt" extends "Sales Invoice Statistics"
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
