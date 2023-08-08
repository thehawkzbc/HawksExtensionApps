pageextension 50153 "HAWKSPTE SalesHist" extends "Sales Hist. Sell-to FactBox" // 9080
{
    layout
    {
        modify(NoofQuotesTile)
        {
            Visible = false;
        }
        modify(NoofBlanketOrdersTile)
        {
            Visible = false;
        }
    }
}
