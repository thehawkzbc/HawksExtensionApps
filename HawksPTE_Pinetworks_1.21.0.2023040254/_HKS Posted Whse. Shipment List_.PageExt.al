pageextension 50162 "HKS Posted Whse. Shipment List" extends "Posted Whse. Shipment List"
{
    layout
    {
        addlast(Control1)
        {
            field("CreatedBy"; utils.GetUserName(Rec.SystemCreatedBy))
            {
                ApplicationArea = All;
                Caption = 'Created By';
                ToolTip = 'Created by Username';
            }
            field("ModifiedBy"; utils.GetUserName(Rec.SystemModifiedBy))
            {
                ApplicationArea = All;
                Caption = 'Modified By';
                ToolTip = 'Modified by Username';
            }
            field(SystemModifiedAt; Rec.SystemModifiedAt)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SystemModifiedAt field.';
            }
        }
        modify("No. Series")
        {
            Visible = false;
        }
    }
    var utils: Codeunit Utils;
}
