reportextension 50061 BatchPostTransferOrders extends "Batch Post Transfer Orders"
{
    dataset
    {
        modify("Transfer Header")
        {
        RequestFilterFields = "No.", "In-Transit Code", "Transfer-from Code", "Transfer-to Code";
        }
    }
}
