pageextension 50156 "HAWKSPTE Purch order list" extends "Purchase Order List" // 9307
{
    layout
    {
        modify("Attached Documents")
        {
            Visible = false;
        }
    }
    actions
    {
        modify("Print")
        {
            Enabled = (rec.Status = rec.Status::Released) or (rec.Status = rec.Status::"Pending Prepayment");
        }
        modify(Send)
        {
            Enabled = (rec.Status = rec.Status::Released) or (rec.Status = rec.Status::"Pending Prepayment");
        }
        modify(AttachAsPDF)
        {
            Enabled = (rec.Status = rec.Status::Released) or (rec.Status = rec.Status::"Pending Prepayment");
        }
    }
}
