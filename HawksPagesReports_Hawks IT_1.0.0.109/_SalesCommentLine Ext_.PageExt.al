pageextension 50014 "SalesCommentLine Ext" extends "Sales Comment Sheet"
{
    layout
    {
        addafter(Date)
        {
            field("Agent name"; rec."Agent name")
            {
                Caption = 'Agent name';
                ApplicationArea = All;
            }
            field("Vessel name"; Rec."Vessel name")
            {
                Caption = 'Vessel name';
                ApplicationArea = All;
            }
            field("Barge fee(if applicable)"; Rec."Barge fee(if applicable)")
            {
                Caption = 'Barge fee(if applicable)';
                ApplicationArea = All;
            }
            field("Date of supply"; rec."Date of supply")
            {
                Caption = 'Date of supply';
                ApplicationArea = All;
            }
            field("IMO Number"; rec."IMO Number")
            {
                Caption = 'IMO Number';
                ApplicationArea = All;
            }
            field("Port of supply"; rec."Port of supply")
            {
                Caption = 'Port of supply';
                ApplicationArea = All;
            }
            field("Product name"; rec."Product name")
            {
                Caption = 'Product name';
                ApplicationArea = All;
            }
            field(ETA; rec.ETA)
            {
                Caption = 'ETA';
                ApplicationArea = All;
            }
            field(Grade; rec.Grade)
            {
                Caption = 'Grade';
                ApplicationArea = All;
            }
            field(Price; rec.Price)
            {
                Caption = 'Price';
                ApplicationArea = All;
            }
            field(Quantity; rec.Quantity)
            {
                Caption = 'Quantity';
                ApplicationArea = All;
            }
            field("Unit Of Measure Code"; Rec."Unit Of Measure Code")
            {
                Caption = 'Unit Of Measure Code';
                ApplicationArea = All;
            }
        }
    }
}
