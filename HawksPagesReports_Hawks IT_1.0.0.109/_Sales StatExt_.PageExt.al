pageextension 50088 "Sales StatExt" extends "Sales Statistics"
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
        modify(AdjProfitLCY)
        {
            Visible = false;
        }
    }
}
