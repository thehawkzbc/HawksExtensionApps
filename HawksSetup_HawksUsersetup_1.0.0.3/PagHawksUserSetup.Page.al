page 90001 PagHawksUserSetup
{
    ApplicationArea = All;
    Caption = 'HawksUserSetup';
    PageType = List;
    SourceTable = "Hawks User Setup";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field("Allow dele. of table records"; Rec."Allow dele. of table records")
                {
                    ToolTip = 'Specifies the value of the Allow deletion of table records field.';
                }
            }
        }
    }
}
