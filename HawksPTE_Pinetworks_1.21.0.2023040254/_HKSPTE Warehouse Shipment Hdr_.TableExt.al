tableextension 50152 "HKSPTE Warehouse Shipment Hdr" extends "Warehouse Shipment Header" // 7320
{
    fields
    {
        field(50151; "Meter Start"; Decimal)
        {
            Caption = 'Meter Start';
        }
        field(50152; "Meter End"; Decimal)
        {
            Caption = 'Meter End';
        }
        field(50153; "Check Water Contamination"; Boolean)
        {
            Caption = 'Check Water Contamination';
        }
        field(50154; "Take Sample for Visiblity Test"; Boolean)
        {
            Caption = 'Take Sample for Visiblity Test';
        }
        field(50155; "Check Barge Meter"; Boolean)
        {
            Caption = 'Check Barge Meter';
        }
        field(50156; "Check Client Meter"; Boolean)
        {
            Caption = 'Check Client Meter';
        }
        field(50157; "ROB Client Tank"; Text[50])
        {
            Caption = 'ROB Client Tank';
        }
        field(50158; "Signature Image"; Blob)
        {
            Subtype = Bitmap;
            DataClassification = ToBeClassified;
        }
        field(50159; "ID Card Image"; Blob)
        {
            Subtype = Bitmap;
            DataClassification = ToBeClassified;
        }
        field(50160; "Received By"; Text[50])
        {
            Caption = 'Received By';
        }
        field(50161; "Meter Start Image"; Blob)
        {
            Caption = 'Meter Start Image';
            Subtype = Bitmap;
        }
        field(50162; "Meter End Image"; Blob)
        {
            Caption = 'Meter End Image';
            Subtype = Bitmap;
        }
        field(50163; "Received By ID"; Text[50])
        {
            Caption = 'Received By';
        }
        field(50164; "Customer No."; code[20])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Warehouse Shipment Line"."Destination No." where("No."=field("No.")));
        }
    }
}
