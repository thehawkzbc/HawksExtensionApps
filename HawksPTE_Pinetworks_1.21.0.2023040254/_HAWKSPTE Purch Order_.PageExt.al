pageextension 50157 "HAWKSPTE Purch Order" extends "Purchase Order" // 50
{
    layout
    {
        modify("Attached Documents")
        {
            Visible = false;
        }
        modify(IncomingDocAttachFactBox)
        {
            Visible = false;
        }
        addafter("Vendor Shipment No.")
        {
            field("Vendor Cr. Memo No.33493"; Rec."Vendor Cr. Memo No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Vendor Cr. Memo No. field.';
            }
        }
    }
    actions
    {
        modify("&Print")
        {
            Enabled = (rec.Status = rec.Status::Released) or (rec.Status = rec.Status::"Pending Prepayment");
        }
        modify(SendCustom)
        {
            Enabled = (rec.Status = rec.Status::Released) or (rec.Status = rec.Status::"Pending Prepayment");
        }
        modify(AttachAsPDF)
        {
            Enabled = (rec.Status = rec.Status::Released) or (rec.Status = rec.Status::"Pending Prepayment");
        }
    }
}
