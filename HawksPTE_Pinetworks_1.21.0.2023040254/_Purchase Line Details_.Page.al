page 50150 "Purchase Line Details"
{
    ApplicationArea = All;
    Caption = 'Purchase Line Details';
    PageType = List;
    SourceTable = "Purchase Line";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the value of the Document Type field';
                    ApplicationArea = All;
                }
                field("Order Date"; Rec."Order Date")
                {
                    ToolTip = 'Specifies the value of the Order Date field';
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field';
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field';
                    ApplicationArea = All;
                }
                field("CIT Sub Document Type"; Rec."CIT Sub Document Type")
                {
                    ToolTip = 'Specifies the value of the Sub Document Type field';
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ToolTip = 'Specifies the value of the Type field';
                    ApplicationArea = All;
                }
                field("Order No."; Rec."Order No.")
                {
                    ToolTip = 'Specifies the value of the Order No. field';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field';
                    ApplicationArea = All;
                }
                field("Quantity Received"; Rec."Quantity Received")
                {
                    ToolTip = 'Specifies the value of the Quantity Received field';
                    ApplicationArea = All;
                }
                field("Quantity Invoiced"; Rec."Quantity Invoiced")
                {
                    ToolTip = 'Specifies the value of the Quantity Invoiced field';
                    ApplicationArea = All;
                }
                field("Expected Receipt Date"; Rec."Expected Receipt Date")
                {
                    ToolTip = 'Specifies the value of the Expected Receipt Date field';
                    ApplicationArea = All;
                }
                field("Prepmt. Amount Inv. (LCY)"; Rec."Prepmt. Amount Inv. (LCY)")
                {
                    ToolTip = 'Specifies the value of the Prepmt. Amount Inv. (LCY) field';
                    ApplicationArea = All;
                }
            }
        }
    }
    views
    {
        view(Prepayments)
        {
            Caption = 'Prepayments';
            Filters = where("Prepmt. Amount Inv. (LCY)"=filter('<>0'), "Document Type"=const(Order));
            OrderBy = ascending("Document No.", "Line No.");
        }
        view(RecievedNotInvoiced)
        {
            caption = 'Received not Invoiced';
            Filters = where("Qty. Rcd. Not Invoiced"=filter('<>0'));
        }
        view(Delayed)
        {
            Caption = 'Delayed delivery';
            Filters = where("Expected Receipt Date"=filter('<t')); //,  field(currentDate)
        }
    }
}
