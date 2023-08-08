pageextension 50175 PageExtension50039 extends "Item Reclass. Journal"
{
    layout
    {
        addafter("Unit of Measure Code")
        {
            field("Transaction Type"; Rec."Transaction Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the type of transaction that the document represents, for the purpose of reporting to INTRASTAT.';
            }
        }
    }
}
