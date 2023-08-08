pageextension 50091 "Sales Order StatExt" extends "Sales Order Statistics"
{
    layout
    {
        //ProfitPct[1]
        //AdjProfitPct[1]
        //ProfitLCY[1]
        //AdjProfitLCY[1]
        modify("ProfitPct[1]")
        {
            Visible = false;
        }
        modify("AdjProfitPct[1]")
        {
            Visible = false;
        }
        modify("ProfitLCY[1]")
        {
            Visible = false;
        }
        modify("AdjProfitLCY[1]")
        {
            Visible = false;
        }
    }
}
