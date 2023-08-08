page 50061 SalespricelistHawks
{
    ApplicationArea = All;
    Caption = 'SalespricelistHawks';
    PageType = List;
    SourceTable = "Price List Header";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Allow Invoice Disc."; Rec."Allow Invoice Disc.")
                {
                    ToolTip = 'Specifies whether invoice discount is allowed. You can change this value on the lines.';
                }
                field("Allow Line Disc."; Rec."Allow Line Disc.")
                {
                    ToolTip = 'Specifies whether line discounts are allowed. You can change this value on the lines.';
                }
                field("Allow Updating Defaults"; Rec."Allow Updating Defaults")
                {
                    ToolTip = 'Specifies whether users can change the values in the fields on the price list lines that contain default values from the header. This does not affect the ability to allow line or invoice discounts.';
                }
                field("Amount Type"; Rec."Amount Type")
                {
                    ToolTip = 'Specifies the amount type filter that defines the columns shown in the price list lines.';
                }
                field("Assign-to No."; Rec."Assign-to No.")
                {
                    ToolTip = 'Specifies the entity to which the prices are assigned. The options depend on the selection in the Assign-to Type field. If you choose an entity, the price list will be used only for that entity.';
                }
                field("Assign-to Parent No."; Rec."Assign-to Parent No.")
                {
                    ToolTip = 'Specifies the entity to which the prices are assigned. The options depend on the selection in the Assign-to Type field. If you choose an entity, the price list will be used only for that entity.';
                }
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the unique identifier of the price list.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ToolTip = 'Specifies the currency code of the price list.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the description of the price list.';
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ToolTip = 'Specifies the last date that the price is valid.';
                }
                field("Filter Source No."; Rec."Filter Source No.")
                {
                    ToolTip = 'Specifies the value of the Filter Source No. field.';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ToolTip = 'Specifies the value of the No. Series field.';
                }
                field("Parent Source No."; Rec."Parent Source No.")
                {
                    ToolTip = 'Specifies the value of the Assign-to Parent No. (jobs) field.';
                }
                field("Price Includes VAT"; Rec."Price Includes VAT")
                {
                    ToolTip = 'Specifies the if prices include VAT.';
                }
                field("Price Type"; Rec."Price Type")
                {
                    ToolTip = 'Specifies the value of the Price Type field.';
                }
                field("Source Group"; Rec."Source Group")
                {
                    ToolTip = 'Specifies whether the prices come from groups of customers, vendors or jobs.';
                }
                field("Source ID"; Rec."Source ID")
                {
                    ToolTip = 'Specifies the value of the Assign-to ID field.';
                }
                field("Source No."; Rec."Source No.")
                {
                    ToolTip = 'Specifies the entity to which the prices are assigned. The options depend on the selection in the Assign-to Type field. If you choose an entity, the price list will be used only for that entity.';
                }
                field("Source Type"; Rec."Source Type")
                {
                    ToolTip = 'Specifies the value of the Assign-to Type field.';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ToolTip = 'Specifies the date from which the price is valid.';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies whether the price list is in Draft status and can be edited, Inactive and cannot be edited or used, or Active and can be edited (when Allow Editing Active Price is enabled) and used for price calculations.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
                field("VAT Bus. Posting Gr. (Price)"; Rec."VAT Bus. Posting Gr. (Price)")
                {
                    ToolTip = 'Specifies the default VAT business posting group code.';
                }
            }
        }
    }
}
