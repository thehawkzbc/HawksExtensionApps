pageextension 50045 "Company Inf Ext" extends "Company Information"
{
    layout
    {
        addafter(Picture)
        {
            field(ReportPicture; Rec.ReportPicture)
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the Header picture for all reports for the company';

                trigger OnValidate()
                begin
                    CurrPage.SaveRecord();
                end;
            }
            field(FooterPicture; Rec.FooterPicture)
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the Footer picture for all reports for the company';

                trigger OnValidate()
                begin
                    CurrPage.SaveRecord();
                end;
            }
        }
    }
}
