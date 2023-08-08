tableextension 50082 "Company info Ext" extends "Company Information"
{
    fields
    {
        field(50010; ReportPicture; BLOB)
        {
            Caption = 'Report Header Picture';
            SubType = Bitmap;
        }
        field(50011; FooterPicture; BLOB)
        {
            Caption = 'Report Footer Picture';
            SubType = Bitmap;
        }
    }
}
