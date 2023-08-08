tableextension 50012 "Purch Comment Line Ext" extends "Purch. Comment Line"
{
    fields
    {
        field(50000; "Vessel name"; Text[100])
        {
            Caption = 'Vessel name';
            DataClassification = ToBeClassified;
        }
        field(50005; "IMO Number"; Code[50])
        {
            Caption = 'IMO Number';
            DataClassification = ToBeClassified;
        }
        field(50006; ETA; Date)
        {
            Caption = 'ETA';
            DataClassification = ToBeClassified;
        }
        field(50007; "Agent name"; Text[100])
        {
            Caption = 'Agent name';
            DataClassification = ToBeClassified;
        }
        field(50008; "Product name"; Text[100])
        {
            Caption = 'Product name';
            DataClassification = ToBeClassified;
        }
        field(50009; Grade; Decimal)
        {
            Caption = 'Grade';
            DataClassification = ToBeClassified;
        }
        field(50010; Quantity; Code[20])
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
        field(50011; "Date of supply"; Date)
        {
            Caption = 'Date of supply';
            DataClassification = ToBeClassified;
        }
        field(50012; "Port of supply"; Text[100])
        {
            Caption = 'Port of supply';
            DataClassification = ToBeClassified;
        }
        field(50013; "Barge fee (if applicable)"; Decimal)
        {
            Caption = 'Barge fee (if applicable)';
            DataClassification = ToBeClassified;
        }
        field(50014; Price; Decimal)
        {
            Caption = 'Price';
            DataClassification = ToBeClassified;
        }
        field(50015; "Currency Code"; Code[20])
        {
            Caption = 'Currency Code';
            DataClassification = ToBeClassified;
        }
    }
}
